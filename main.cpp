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

//Supported modes of operation:
// name| We get called in mode  |  impl is in mode | Implement? (Y/N) 
//-------------------------------------------------------------------
//  A  |         OEAAT          |     OEAAT        |       N
//  B  |         OEAAT          |     OSEAAT       |       N
//  C  |         OEAAT          |     WS           |       N
//  D  |         OSEAAT         |     OEAAT        |       Y
//  E  |         OSEAAT         |     OSEAAT       |       N
//  F  |         OSEAAT         |     WS           |       N
//  G  |         WS             |     OEAAT        |       Y
//  H  |         WS             |     OSEAAT       |       N
//  I  |         WS             |     WS           |       N
//
// Notes:
// Case F: doesn't make sense: once adapter accumulates and calls ff, it
//         has to output a whole sequence to the next layer, which is 
//         expecting OSEEAT
// Cases E and I: _could_ implement (they would just pass through directly)
//                but for nwo there's nothing telling us to do it

#if 0

struct SeqAdapter : layer {
    std::unique_ptr<layer> impl; //always OEAAT
	layer_mode my_input_mode;

	SeqAdapter(std::unique_ptr<layer> l) : impl(std::move(l)) {
        assert(impl->set_mode(layer_mode::OEAAT));
    }

    Tensor<float> ff(RTSpan<float> x, bool save = false) override {
		if (my_input_mode == layer_mode::WS) {
			//Iterate through, collect outputs into one final tensor and return
			//Problem: how big is that final tensor?
			int seq_len = x.length();
			assert(seq_len > 0);
			
			std::vector<Tensor<float>> output_seq;
			for (int i = 0; i < seq_len; i++) {
				output_seq.push_back(impl->ff(x[i], false));
			}
			
            assert(!output_seq.empty());
            assert(std::all_of(output_seq.begin(), output_seq.end(), 
                [&](Tensor<float> const& elem){
                    return elem.dims == output_seq[0].dims;
                })
			);
			int *output_dims = new int[output_seq[0].rank + 1];

			output_dims[0] = seq_len;
			std::copy(output_seq[0].dims.begin(), output_seq[0].dims.end(), output_dims + 1);

			//Note to self: left off here
			//Need to create output tensor and split into RTSpans,
			//then need function to copy one RTSpan's data to another

		} else if (my_input_mode == layer_mode::OSEAAT) {
			//if (!x) return nullTensor;
		} else {
			assert(0 && "Somehow my input mode was set wrong");
			return Tensor<float>(); //To keep the compiler happy
		}
	}

    Tensor<float> bp(RTSpan<float> x, RTSpan<float> y, RTSpan<float> dy,
                     bool use_saved = false, RTSpan<float> dx) override 
	{
		return Tensor<float>();
	}

	//For model validation
	//SLATED FOR DELETION
	//bool can_accept(int num_inputs) const override { return impl->can_accept(num_inputs); }
    //int num_outputs(int num_inputs) const override { return impl->num_outputs(num_inputs); }

    //For debugging
	//TODO: add debug note about being in an adapter?
    void dump(std::ostream &o) const override  { impl->dump(o); }

    bool set_mode(layer_mode mode) override {
        if (mode == layer_mode::OEAAT) 
            return false;
		my_input_mode = mode;
        return true;
	}
};

#endif

class Model : public layer {

public:
    std::vector<unique_ptr<layer> > layers;
    std::vector<Tensor<float>> layer_outputs;

    Model() {}

    std::vector<int> ff_result_sz(int x_rank, int const *x_dims) const override {
        std::vector<int> cur_dims(x_rank);
        std::copy(x_dims, x_dims + x_rank, cur_dims.data());
        for (auto const& layer : layers) {
            cur_dims = layer->ff_result_sz(cur_dims.size(), cur_dims.data());
        }
        return cur_dims;
    }

    void ff_impl(RTSpan<float> x, RTSpan<float> y, bool save,
                std::vector<Tensor<float>>& to_save) {

        assert(layers.size() > 0);
        if (layers.size() == 1) {
			//There's nothing to save
            layers[0]->ff(x, y, save);
        }

		//Do the first layer. Separate case becasue uses x param
        Tensor<float> cur; //Never used if save is true
		                   //to_save never modified if save is false
        if (save) {
            to_save.clear();
            to_save.push_back(layers[0]->ff_alloc(x, save));
        } else {
            cur = layers[0]->ff_alloc(x, save);
		}

		//Do last n-2 layers
        for (int layer_num = 1; layer_num < static_cast<int>(layers.size())-1; layer_num++) {
            auto l = layers[layer_num].get();

            if (save)
                to_save.push_back(l->ff_alloc(&to_save.back(), save));
            else
               cur = l->ff_alloc(&cur, save);
        }
        
		//And the final one, separate because we don't save the outputs 
		//either way, but still need to check whether we are using cur
        if (save)
            layers.back()->ff(&to_save.back(), y, save);
        else
            layers.back()->ff(&cur, y, save);
    }

    //feed-forward
    void ff(RTSpan<float> x, RTSpan<float> y, bool save=false) override {
        ff_impl(x, y, save, layer_outputs);
    }

    //backprop
    void bp(
		RTSpan<float> x, 
		RTSpan<float> y, 
		RTSpan<float> dy,
		RTSpan<float> dx, //output is written here
        bool use_saved=false
	) override {
        assert(std::equal(x.dims, x.dims + x.rank, dx.dims));

		std::vector<Tensor<float>> newly_computed; //Not always used

		std::vector<RTSpan<float>> fenceposts;

		//fenceposts = {x, layer_outputs[1 .. n-1] , y}
		fenceposts.push_back(x);
        if (!use_saved) {
            Tensor<float> temp(ff_result_sz(x.rank, x.dims));
			ff_impl(x, &temp, true, newly_computed);
			for (unsigned i = 0; i < newly_computed.size(); i++) {
				fenceposts.push_back(&newly_computed[i]);
			}
        } else {
			for (unsigned i = 0; i < layer_outputs.size(); i++) {
				fenceposts.push_back(&layer_outputs[i]);
			}
		}
		fenceposts.push_back(y);

		//Firt, do the last layer, whose output comes from our y parameter
		//TODO: figure out what to do for the DEBUG statements
		assert(layers.size() > 0);
		
		Tensor<float> cur_dy(dy);

		assert(fenceposts.size() == 1 + (layers.size() - 1) + 1);

        int i;
		for (i = fenceposts.size() - 1 - 1; i > 0; i--){
			DEBUG("before_bp[" + to_string(i) + "]", ::dump(*(layers[i])));
			DEBUG("bp_inputs[" + to_string(i) + "]", ::dump(fenceposts[i]));
			DEBUG("bp_dy_in[" + to_string(i) + "]", ::dump(&cur_dy));
			
			cur_dy = layers[i]->bp_alloc(fenceposts[i], fenceposts[i+1], &cur_dy, use_saved);

			DEBUG("after_bp[" + to_string(i) + "]", ::dump(*(layers[i])));
			DEBUG("bp_outputs[" + to_string(i) + "]", ::dump(&cur_dy));
		}
        
        //i is now 0 at this point
        layers[i]->bp(fenceposts[i], fenceposts[i+1], &cur_dy, dx, use_saved);
    }

    // void append_fc_layer(int r, int c, activation_fn *act) {
    //     layers.push_back(make_shared<fc>(r, c, act));
    // }

    void add_layer(std::unique_ptr<layer> pl) {
        layers.push_back(std::move(pl));
    }

    /*void add_layer(layer &&l) {
        layers.push_back(std::make_shared<layer>(l));
    }*/
	
	bool set_mode(layer_mode mode) override {
		/*for (std::unique_ptr<layer> & upl : layers) {
			bool succeeded = upl->set_mode(mode);
			if (!succeeded) {
				//Try wrapping
                upl = std::make_unique<SeqAdapter>(std::move(upl));
				succeeded = upl->set_mode(mode);
				if (!succeeded) {
					throw runtime_error("I was not able to convert the given layer");
				}
			}
		}*/

		return true;
	}
};

ofstream debug_out;

double evaluate_mnist(Model& model, const std::vector<tpair>& examples) {
    //int correct = 0;
    //int tot = examples.size();
    int input_mat_dims[2] = {1, 784};

	cout << "Entered evaluate_mnist" << endl;

	int num_correct = 0;
	int num_incorrect = 0;

    for (const auto& example : examples) {    
        Tensor<float> input_mat(example.first, input_mat_dims, 2); //1x784
		Tensor<float> output_mat = model.ff_alloc(&input_mat);        //1x10

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
	//model.add_layer(make_shared<perturbator<2> >(0.015));
    model.add_layer(make_unique<fc>(128, input_dim, new oddln(), new Adam<2>(lr), new Adam<1>(lr)));
	model.add_layer(make_unique<fc>(64, 128, new oddln(), new Adam<2>(lr), new Adam<1>(lr)));
    model.add_layer(make_unique<fc>(output_dim, 64, new identity(), new Adam<2>(lr), new Adam<1>(lr)));
    model.add_layer(make_unique<softmax>());

    auto e = nll(); //sqerr();
    float last_cost = -1.0; //Some impossible cost to make sure we don't
                            //terminate early
    float cost = -1.0;
    Tensor<float> output;
    #define max_epoch 30
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
            output = model.ff_alloc(&batch_inputs, true);

            cost = e.cc(&output, &expected_outputs);

			cout << "Cost: " << cost << el;

            auto gradient = e.gg(&output, &expected_outputs);

            model.bp_alloc(&batch_inputs, &output, &gradient, true);

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


	int bleh = 0;
	auto it = model.layers.begin();
	while (it != model.layers.end()) {
		bleh++;
		if (dynamic_cast<perturbator<2> *>(it->get())) {
			cout << "Erasing layer " << bleh << el;
			it = model.layers.erase(it);
		} else ++it;
	}
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

	vector<tpair> testing_examples = load_mnist_testing("mnist");
	cout << "Percent accuracy: " << evaluate_mnist(model, testing_examples) << "%" << el;

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