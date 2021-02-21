#include <iostream>
#include <vector>
#include <assert.h>
#include <numeric>
#include <math.h>
#include <map>
#include <string>
#include <cstdint>
#include <memory>
#include <algorithm>
#include <random>
#include <utility>
#include <chrono>
#include <fstream>
#include <csignal>

//#define DEBUG 1

#include "base_types.h"
#include "activation_fns.h"
#include "layers.h"
#include "cost_fn.h"
#include "tensor.h"
#include "debug.h"
#include "mnist/load_mnist.h"
#include "optimizers.h"

int volatile stop = 0;

void sigint_handler(int s) {
	if (stop == 1) {
		raise(SIGABRT);
	}
	stop = 1;
}

using namespace std;

ostream& el(ostream &o) {return o << "\n";}

template <typename T>
ostream& operator<<(ostream &o, vector<T> const& v) {
    o << "[";
    auto delim = "";
    for (auto const& i : v) {
        o << delim << i;
        delim = ",";
    }

    return o << "]";
}

template <typename T>
ostream& operator<<(ostream &o, shared_ptr<T> const& p) {
    if (p) {
        return o << "shared_ptr to {" << *p << "}";
    } else {
        return o << "(null shared_ptr)" << el;
    }
}

class Model : layer {

public:
    std::vector<shared_ptr<layer> > layers;


    Model() {}

    //feed-forward
    Tensor<float> ff(RTSpan<float> const& x, bool use_saved=false, bool save=false) override {
        Tensor<float> cur(x);
        int cur_dims = x.dims[1];
		int layer_num = 1;
        for (auto const& l : layers) {
            if (!l->can_accept(cur_dims)) {
                throw std::runtime_error(
					"Invalid model: layer " + 
					std::to_string(layer_num) + 
                	" cannot accept inputs of dimension " + 
					std::to_string(cur_dims)
				);
            }
            cur_dims = l->num_outputs(cur_dims);
            cur = l->ff(&cur, use_saved, save);
			layer_num++;
        }

        return cur;
    }

    //backprop
    virtual Tensor<float> bp(RTSpan<float> const& x, RTSpan<float> const& dy,
                             bool use_saved=false) override {
        //Subtle bug: this used to be a vector of MSpans, but
        //then you get dangling pointers. This was happening 
        //because the actual result of running ff (see about 8-9
        //lines lower down) was being discarded but we were still
        //saving an MSpan into that matrix into the vector
        std::vector<Tensor<float> > layer_inputs;
        layer_inputs.emplace_back(x);
        
        assert(layers.size() > 0);
        for (unsigned i = 0; i < layers.size() - 1; i++) {
            layer_inputs.push_back(
                layers[i]->ff(&layer_inputs.back(), use_saved, false)
            );
        }

        Tensor<float> cur_dy(dy);
        for (int i = layers.size() - 1; i >= 0; i--){
            DEBUG("before_bp[" + to_string(i) + "]", ::dump(*(layers[i])));
            DEBUG("bp_inputs[" + to_string(i) + "]", ::dump(&layer_inputs[i]));
            DEBUG("bp_dy_in[" + to_string(i) + "]", ::dump(&cur_dy));
            cur_dy = layers[i]->bp(&layer_inputs[i], &cur_dy, use_saved);
            DEBUG("after_bp[" + to_string(i) + "]", ::dump(*(layers[i])));
            DEBUG("bp_outputs[" + to_string(i) + "]", ::dump(&cur_dy));
        }
        
        return cur_dy;
    }

    // void append_fc_layer(int r, int c, activation_fn *act) {
    //     layers.push_back(make_shared<fc>(r, c, act));
    // }

    void add_layer(std::shared_ptr<layer> pl) {
        layers.push_back(pl);
    }

    /*void add_layer(layer &&l) {
        layers.push_back(std::make_shared<layer>(l));
    }*/
};


template <typename fn, typename... T>
void time_fn(int iterations, fn F, T... args) {
    auto tic = chrono::high_resolution_clock::now();
    for (int i = 0; i < iterations; i++) F(args...);
    auto toc = chrono::high_resolution_clock::now();

    auto duration = chrono::duration_cast<chrono::microseconds>(toc-tic).count();

    cout << iterations << " iterations in " << duration << el;
}

ofstream debug_out;

double evaluate_mnist(Model& model, const std::vector<tpair>& examples) {
    //int correct = 0;
    //int tot = examples.size();
    int input_mat_dims[2] = {1, 784};

	int num_correct = 0;
	int num_incorrect = 0;

    for (const auto& example : examples) {    
        Tensor<float> input_mat(example.first, input_mat_dims, 2); //1x784
		Tensor<float> output_mat = model.ff(&input_mat);        //1x10

		//Find out the real answer, and what the model answers
		int max_ind = 0;
		int correct_answer = 0; 
		float max_val = output_mat.storage[max_ind];
		for (int i = 1; i < 10; i++) {
			if (output_mat.storage[i] > max_val) {
				max_val = output_mat.storage[i];
				max_ind = i;
			}
			if (example.second[i] > 0.99f) {
				correct_answer = i;
			}
		}

		if (max_ind == correct_answer) {
			num_correct++;
		} else {
			num_incorrect++;
		}
    }

	cout << "Num correct: " << num_correct << el;
	cout << "Num incorrect: " << num_incorrect << el;

	//Calculate percent correct and return that 
	double ret = 100.0 * (double(num_correct)) / (double(num_correct + num_incorrect));
	return ret;
}

Model train_mnist(std::vector<tpair> examples) {
    const int input_dim = examples[0].first.size();
	assert(input_dim == 784);
    constexpr int output_dim = 10;
    constexpr float lr = 0.001;
    Model model;
    //model.add_layer(make_shared<fc>(512, input_dim, new oddln(), new Adam<2>(lr), new Adam<1>(lr)));
	model.add_layer(make_shared<fc>(512, input_dim, new oddln(), new GD<2>(lr), new GD<1>(lr)));
    //model.add_layer(make_shared<fc>(output_dim, 512, new identity(), new Adam<2>(lr), new Adam<1>(lr)));
    model.add_layer(make_shared<fc>(output_dim, 512, new identity(), new GD<2>(lr), new GD<1>(lr)));
    model.add_layer(make_shared<softmax>());

    auto e = nll(); //sqerr();
    float last_cost = -1.0; //Some impossible cost to make sure we don't
                            //terminate early
    float cost = -1.0;
    Tensor<float> output;
    #define max_epoch 1
    constexpr int batch_size = 32;
    int num_batches = examples.size() / batch_size;
    int epoch = 0;

    do {
		cout << "Epoch = " << epoch << el;
        // Epoch of training
        std::random_shuffle(examples.begin(), examples.end());

        // split into minibatches
		int batch_start_idx = 0;
        for (int b = 0; b < num_batches; b++) {
			if (stop) break;
			cout << "Batch number = " << b << "\t";
            int this_batch_size = batch_size + (b < (examples.size() % batch_size));

            int input_dims[2] = {this_batch_size, input_dim};
            int output_dims[2] = {this_batch_size, output_dim};
            std::vector<float> input_data(this_batch_size * input_dim);
            std::vector<float> expected_output_data(this_batch_size * output_dim);

            for (int i = 0; i < this_batch_size; i++) {
                assert(batch_start_idx + i < examples.size());
                assert(examples[batch_start_idx + i].first.size() == input_dim);
                assert(examples[batch_start_idx + i].second.size() == output_dim);
                assert(i*input_dim + input_dim <= input_data.size());
                std::copy(examples[batch_start_idx + i].first.begin(), 
                          examples[batch_start_idx + i].first.end(), 
                          input_data.begin() + i * input_dim);
                std::copy(examples[batch_start_idx + i].second.begin(),
                          examples[batch_start_idx + i].second.end(),
                          expected_output_data.begin() + i * output_dim);
            }            

            Tensor<float> batch_inputs(std::move(input_data), input_dims, 2);
            Tensor<float> expected_outputs(std::move(expected_output_data), output_dims, 2);

            last_cost = cost;
            output = model.ff(&batch_inputs, false, true);

            cost = e.cc(&output, &expected_outputs);

			cout << "Cost: " << cost << el;

            auto gradient = e.gg(&output, &expected_outputs);

            model.bp(&batch_inputs, &gradient, true);

            batch_start_idx += this_batch_size;
        }
    } while (abs(cost - last_cost) > 1e-7 && ++epoch < max_epoch && !stop);


    if (stop) {
		cout << "Training was forcibly stopped" << el;
		stop = 0;
	} else if (epoch >= max_epoch) {
        cout << "Error, maximum number of epochs exceeded" << el;
    } else {
        cout << "Converged after " << epoch << " epochs" << el;
    }
    
    cout << "Cost: " << cost << el;
    //cout << "Output: " << output << el;

    return model;
}

int main() {
	signal(SIGINT, sigint_handler);

    debug_out.open("debug.py");
    debug_out << "import numpy as np" << el;
    debug_out << "dbg_data = [" << el;

    vector<tpair> training_examples = load_mnist_training("mnist");
#ifdef ENABLE_DEBUG
	training_examples.resize(20*32);
#else
	//training_examples.resize(50*32);
#endif
    auto model = train_mnist(training_examples);

	cout << "Percent accuracy: " << evaluate_mnist(model, training_examples) << "%" << el;

    debug_out << "]" << el;

    debug_out << R"###(
tags = set()
for x in dbg_data:
    tags.add(x["tag"])
tags = list(tags)

tag_groups = {}
for tag in tags:
    tag_groups[tag] = [x["data"] for x in dbg_data if x["tag"] == tag]
)###";
    debug_out.close();
    return 0;
}