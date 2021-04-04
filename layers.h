#ifndef LAYER_H
#define LAYER_H

#include <iostream>
#include <vector>
#include <stdexcept>
#include <memory>
#include <algorithm>
#include <utility>
#include <cmath> //exp
#include <random>

#include "base_types.h"
#include "tensor.h"
#include "debug.h"


template <int rank>
struct perturbator : ctr_layer<rank> {
	std::default_random_engine gen;
	float t;

	perturbator(float t) : t(t) {}

	Tensor<float> ctr_ff(TSpan<rank, float> x, bool=false) override {
		std::uniform_real_distribution dist(-t, t);

		Tensor<float> ret_storage(x);
		auto ret = ret_storage.as_tspan<rank>();

		tensorunary(
			ret, ret,
			[&] (float x) -> float {return x + dist(gen);}
		);

		return ret;
	}

	Tensor<float> ctr_bp(
		TSpan<rank, float> x, TSpan<rank, float> y, TSpan<rank, float> dy, 
	    bool=false
	) override {
		Tensor<float> ret(dy);
		return ret;
	}

	int num_outputs(int num_inputs) const override {
		return num_inputs;
	}

};

//fully connected
struct fc : ctr_layer<2> {
	//static_assert(rank == 2, "This does not currently support other ranks");
    // W: (num outputs) x (num inputs)
    // bias: (num outputs)
    Tensor<float> W_storage;
	TSpan<2, float> W;
    Tensor<float> bias_storage;
	TSpan<1, float> bias;

    std::unique_ptr<activation_fn> act_fn;
    std::unique_ptr<optimizer> weight_optimizer;
    std::unique_ptr<optimizer> bias_optimizer;

    std::string name;
    static int num;
	
    fc(
		int n_out, int n_in, 
		activation_fn* act_fn, 
        optimizer* weight_optimizer,
        optimizer* bias_optimizer,
		std::string name
	) :  
		act_fn(act_fn), 
		weight_optimizer(weight_optimizer),
		bias_optimizer(bias_optimizer),
		name(name) 
	{
        //assert(n_in > 0);
        //assert(n_out > 0);
        //No longer needed? Tensor constructor will throw an
        //std::bad_Alloc if you give bad sizes
        
        //mat = Matrix<float>(r,c);
        int dims[] = {n_out, n_in};
		//TODO? make_random_tensor
        W_storage = Tensor<float>(dims, 2, uniform_randgen<float>(-0.1, 0.1));
		W = W_storage.as_tspan<2>();
		weight_optimizer->advise_size(dims, 2);
        //std::cout << "Initial weights: " << W << std::endl;

        bias_storage = Tensor<float>(dims, 1, uniform_randgen<float>(-0.1, 0.1));
		bias = bias_storage.as_tspan<1>();
		bias_optimizer->advise_size(dims, 1);
        //std::cout << "Initial biases: " << bias << std::endl;
    }

    static std::string gen_name() {
        return "fc_" + std::to_string(num++);
    }

    fc(int n_out, int n_in, activation_fn* act_fn, 
        optimizer* weight_optimizer,
        optimizer* bias_optimizer) : 
            fc(n_out, n_in, act_fn, weight_optimizer, bias_optimizer, gen_name())
        {}

    //feed-forward
    //Note to our future selves: this does x * transpose(W)
    // W: (num outputs) x (num inputs)
    // x: (batch size) x (num inputs)
    // ret: (batch size) x (num outputs)
    Tensor<float> ctr_ff(TSpan<2,float> x, bool save=false) override {
        assert(x.dims[1] == W.dims[1]);

        auto W_T = W.transpose();

        auto ret_storage = tensormul(x, W_T);
		auto ret = ret_storage.as_tspan<2>();
        //std::cout << "tensormul result: " << ret << std::endl;
        assert(ret.length() == x.length());
        assert(ret.dims[1] == bias.dims[0]);

        for (int i = 0; i < ret.length(); i++) { //batch size
            for (int j = 0; j < ret[i].length(); j++) { //number of outputs
                ret[i][j] = (*act_fn)(ret[i][j] + bias[j]);
            }
        }

        return ret;
    }

    //backprop
    // W: (num outputs) x (num inputs)
    // x: (batch size) x (num inputs)
    // dy: (batch size) x (num outputs)
    // ret: (batch size) x (num inputs)
    // In the notation of the scratchwork I sent earlier, 
    // in ff we compute y = x*W^T + [1,1,1,...,1]*bias
    // so A = x, B = W^T, and C = [1,1,1,...,1]*bias
    // That means dErr/dW = (dD/dB)^T = (dErr/dy)^T * x
    // and dErr/dx = (dD/dA) = (dErr/dy)*W
    // and dErr/dbias = (dD/dC) = (dErr/dy)
    Tensor<float> ctr_bp(TSpan<2, float> x, TSpan<2, float> z, TSpan<2, float> dy,
                         bool use_saved = false) override {
        assert(x.dims[1] == W.dims[1]);
        assert(dy.dims[0] == x.dims[0]);
        assert(dy.dims[1] == W.dims[0]);
        assert(bias.dims[0] == dy.dims[1]);

		//Technically need to remake iterators every time,
		//because (in theory) W and bias could be re-allocated
		//(of course, this never actually happens; we allocate 
		//them once and then never change the size, so we could
		//leave these W and bias iterators as member vars and 
		//initialize them in the constructor)
		//auto W_it = W.as_tspan<2>();
		//auto bias_it = bias.as_tspan<1>();

		//z => (num batches) x (num outputs)
		//These two lines deleted when we got rid of layers saving their own 
		//outputs.
        //Tensor<float> z_storage = ctr_ff(x, use_saved, false);
		//auto z = z_storage.as_tspan<2>();
        assert(std::equal(z.dims, z.dims+2, dy.dims));
        Tensor<float> z2_storage(dy); // (num batches) x (num outputs)
		auto z2 = z2_storage.as_tspan<2>();

        for (int i = 0; i < z2.dims[0]; i++) {
            for (int j = 0; j < z2.dims[1]; j++) {
                z2[i][j] *= (*act_fn)[z[i][j]]; //Silly operator[] for derivative
            }
        }

        auto z2_T = z2.transpose(); // (num outputs) x (num batches)
        
        Tensor<float> dErr_dW_storage = tensormul(z2_T, x); // (num outputs) x (num inputs)
		auto dErr_dW = dErr_dW_storage.as_tspan<2>();

        Tensor<float> dErr_dx = tensormul(z2, W); // (num batches) x (num inputs)
    	assert(std::equal(dErr_dW.dims, dErr_dW.dims+2, W.dims));
        assert(std::equal(dErr_dx.dims.data(), dErr_dx.dims.data()+2, x.dims));
        //dErr_dbias = dy

        weight_optimizer->update_tspan(W, dErr_dW);

		//Sum-reduce along batches (i.e. squeeze into a single row)
		//to obtain the gradients for the bias vector.
		Tensor<float> bias_grad_storage(bias.dims, 1);
		auto bias_grad = bias_grad_storage.as_tspan<1>();
		for (int i = 0; i < bias_grad.length(); i++) {
			bias_grad[i] = z2[0][i];
			for (int j = 1; j < z2.dims[0]; j++) {
				bias_grad[i] += z2[j][i];
			}
		}

        bias_optimizer->update_tspan(bias, bias_grad);

        return dErr_dx;
    }

	virtual int num_outputs(int num_inputs) const override {
		return W.dims[0];
	}
    
    virtual bool can_accept(int num_inputs) const override {
		return num_inputs == W.dims[1]; 
	}

    void dump(std::ostream& o) const override {
        o << "{\"" << name << "\": {\n";
		//Making MSpans (instead of RTSpans) makes much faster code
        o << "\"W\": np.array(" << W << "),\n";
        o << "\"bias\": np.array(" << bias << ")\n";
        o << "}},";
    }

	void apply_to_all_optimizers(
		std::function<void(std::unique_ptr<optimizer>&)> f
	) override {
    	f(weight_optimizer);
    	f(bias_optimizer);
	}
};

struct softmax : layer {
    //feed-forward
    Tensor<float> ff(RTSpan<float> x, bool=false) override {
		auto x_it = x.as_tspan<2>();
		Tensor<float> ret(x.dims, 2);
		auto ret_it = ret.as_tspan<2>();

		for (int i = 0; i < x_it.dims[0]; i++) {
			float max = x_it[i][0];
			for (int j = 1; j < x_it.dims[1]; j++) {
				if (x_it[i][j] > max) {
					max = x_it[i][j];
				}
			}
			
            float sum = 0.0f;
			for (int j = 0; j < x_it.dims[1]; j++) {
				ret_it[i][j] = exp(x_it[i][j] - max);
                assert(!std::isinf(ret_it[i][j]));
                assert(!std::isnan(ret_it[i][j]));
				sum += ret_it[i][j];
			}
            assert(sum > 1e-8);
			for (int j = 0; j < x_it.dims[1]; j++) {
				ret_it[i][j] /= sum;
                assert(ret_it[i][j] >= 0);
			}
		}
		
		return ret;
	}

    //backprop
    // x: (batch size) x (num inputs)
    // dy: (batch size) x (num outputs)
    // ret: (batch size) x (num inputs)
    // num inputs = num outputs
    // For a single example, derivative of y_j with respect to x_k = 
    //  y_j * (1 - y_j) = -y_j * y_j + y_j      if j == k
    //  - y_j * y_k                             if j != k
	// and all of that averaged over the batch size
    Tensor<float> bp(RTSpan<float> x, RTSpan<float> y, RTSpan<float> dy,
                     bool=false) override {
        assert(x.dims[1] == dy.dims[1]);

		auto x_it = x.as_tspan<2>();
		auto dy_it = dy.as_tspan<2>();

		//if we notice that dy is one hot
		//	do the speical case instead
		
		//This line deleted when we got rid of layers saving their own 
		//outputs.
        //auto y = ff(x);
		auto y_it = y.as_tspan<2>();
        // (num inputs) x (num outputs)
        int jacobian_dims[2] = {x.dims[1], y_it.dims[1]};
        
		//Size of return is always the same as size of input
		Tensor<float> ret(x.dims, 2);
		auto ret_it = ret.as_tspan<2>();

        // For each example in batch
        for (int i = 0; i < x_it.dims[0]; i++) {
			// Make Jacobian of size (num inputs) x (num outputs) for each item in batches
			// Essentially, this means (num_batches) x (num_inputs) x (num_outputs)
			// Tensormul by dy which is (num_batches) x (num_outputs)
			// Broadcast over first dimension
			/*
			for (i in num_batches) {
				tensormul(Jacobian[i], dy[i])
			}
			*/
			// Output of above is (num_batches) x (num_inputs)
			// Multiply each Jacobian by its corresponding row in dy 
			// Jacobian * dy.transpose() ==> (num inputs) x (batch_size) ==> reduce that
            // (num inputs) x (num outputs)
            
            Tensor<float> jacobian(jacobian_dims, 2);
			auto jac_it = jacobian.as_tspan<2>(); //ha-ha

			//J = -y[i]^T * y[i] + \mathrm{diag}(y[i])
			
			for (int j = 0; j < jac_it.dims[0]; j++) {
				for (int k = 0; k < jac_it.dims[1]; k++) {
					jac_it[j][k] = -y_it[i][j] * y_it[i][k];
					if (j == k) jac_it[j][k] += y_it[i][j];
				}
			}

            // ret[i] = dErr/(dy[i]) = tensormul(derivative, dy[i]);
			// Thank god we did this the right way in the first place
            tensormul(jac_it, dy_it[i], ret.as_tspan<2>()[i]);
				//Sometimes C++ can have real WTF syntax...
        }
		
		return ret;
    }
	
	//Default can_accept is suitable

	virtual int num_outputs(int num_inputs) const override {
		return num_inputs;
	}
};

#if 0
struct RNN {
	std::unique_ptr<layer> impl;

	//When initializing h, infer batch size from input (or from 
	//being given the batch size in some other way, such as a function 
	//call). Initialize h when we see element 0.
	Tensor<float> h; // Dims: [batch size x sequence element dimension]

	RNN(layer *l) 
	: impl(unique_ptr<layer>(l))
	{
        impl->apply_to_all_optimizers([](unique_ptr<Optimizer>& layer_opt) {
            auto *opt = layer_opt.release();
            layer_opt = std::make_unique<timed_opt>(opt);
        });
	}

    // x dimensions:  [batch size x sequence element dimension]
    //             OR [sequence length x batch size x sequence element dimension]
	// y dimensions:  [batch size x output SE dimension]
    //             OR [sequence length x batch size x output SE dimension]
    Tensor<float> ff(
		RTSpan<float> const& x,
		bool use_saved = false, bool save = false
	) override {
        h = 0
        foreach t = 0 to x.size() {
            output = impl->ff(concat(x[t], h));
            y[t], h = split(output)
        }
        return y;
	}

    //backprop
    // x dimensions: [sequence length x batch size x sequence element dimension]
    // dy dimensions: [sequence length x batch size x output SE dimension]
    virtual Tensor<float> bp(
		RTSpan<float> const& x, RTSpan<float> const& dy,
        bool use_saved = false
	) override {
        impl->apply_to_all_optimizers([](unique_ptr<Optimizer>& topt) {
			std::dynamic_cast<timed_opt*>(topt.get())->set_time(length of this sequence)
        });
		
        foreach t {
		   impl.bp()
        }
	}
}
#endif

#endif
