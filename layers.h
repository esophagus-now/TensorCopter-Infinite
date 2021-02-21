#ifndef LAYER_H
#define LAYER_H

#include <iostream>
#include <vector>
#include <stdexcept>
#include <memory>
#include <algorithm>
#include <utility>
#include <cmath> //exp

#include "base_types.h"
#include "tensor.h"
#include "debug.h"

struct simple_linear : layer {
    float a;

    simple_linear() : a(1.0) {}
    simple_linear(float a) : a(a) {}

    //feed-forward
    Tensor<float> ff(RTSpan<float> const& rt_x, bool=false, bool=false) override {
		auto x = MSpan<float>(rt_x);

        Tensor<float> ret(x);
		auto ret_it = MSpan<float>(ret);
        for (int i = 0; i < ret_it.length(); i++) {
          for (int j = 0; j < ret_it[i].length(); j++) {
            ret_it[i][j] *= a;
          }
        }
        return ret;
    }

    //backprop
    virtual Tensor<float> bp(RTSpan<float> const& rt_x, RTSpan<float> const& rt_dy,
                             bool=false) override {
        auto x = MSpan<float>(rt_x);
		auto dy = MSpan<float>(rt_dy);
		Tensor<float> ret(dy);

        assert(std::equal(x.dims, x.dims+2, dy.dims));
        //assert(x.dims[0] == dy.dims[0])
        //assert(x.dims[1] == dy.dims[1]);

		auto ret_it = MSpan<float>(ret);
        float sum = 0.0;
        for (int i = 0; i < dy.length(); i++) {
            for (int j = 0; j < dy[i].length(); j++) {
                sum += x[i][j] * dy[i][j];
                ret_it[i][j] *= a;
            }
        }
        sum *= 0.015;

        a -= sum;

        return ret;
    }
    
	virtual bool can_accept(int num_inputs) const override { return num_inputs >= 0; }
    virtual int num_outputs(int num_inputs) const override { return num_inputs; }
};

//fully connected
struct fc : layer {
    // W: (num outputs) x (num inputs)
    // bias: (num outputs)
    Tensor<float> W;
    Tensor<float> bias;
	Tensor<float> saved;

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
        W = Tensor<float>(dims, 2, uniform_randgen<float>(-0.1, 0.1));
		weight_optimizer->advise_size(dims, 2);
        //std::cout << "Initial weights: " << W << std::endl;
        bias = Tensor<float>(dims, 1, uniform_randgen<float>(-0.1, 0.1));
		bias_optimizer->advise_size(dims, 1);
        //std::cout << "Initial biases: " << bias << std::endl;

        // bias = Vector<float>();

        // auto gen = std::default_random_engine();
        // auto dist = std::uniform_real_distribution<float>(-1.0, 1.0);

        // //Start with el dumbo identity matrix
        // for (unsigned i = 0; i < r; i++) {
        //     for (unsigned j = 0; j < c; j++) {
        //         mat[i][j] = dist(gen);
        //     }
        //     bias[i] = dist(gen);
        // }
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
    Tensor<float> ff(RTSpan<float> const& x, bool use_saved=false, bool save=false) override {
        assert(x.dims[1] == W.dims[1]);

		auto x_it = x.as_tspan<2>();
		//Technically need to remake iterators every time,
		//because (in theory) W and bias could be re-allocated
		//(of course, this never actually happens; we allocate 
		//them once and then never change the size, so we could
		//leave these W and bias iterators as member vars and 
		//initialize them in the constructor)
		auto W_it = W.as_tspan<2>();
		auto bias_it = bias.as_tspan<1>();

		if(use_saved) return saved;

        auto W_T = W_it.transpose();

        auto ret = tensormul(x_it, W_T);
		auto ret_it = ret.as_tspan<2>();
        //std::cout << "tensormul result: " << ret << std::endl;
        assert(ret.length() == x_it.length());
        assert(ret.dims[1] == bias.dims[0]);

        for (int i = 0; i < ret_it.length(); i++) { //batch size
            for (int j = 0; j < ret_it[i].length(); j++) { //number of outputs
                ret_it[i][j] = (*act_fn)(ret_it[i][j] + bias_it[j]);
            }
        }

		if (save) saved = Tensor<float>(ret); //This should use the copy-ctor
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
    virtual Tensor<float> bp(RTSpan<float> const& x, RTSpan<float> const& dy,
                             bool use_saved = false) override {
        assert(x.dims[1] == W.dims[1]);
        assert(dy.dims[0] == x.dims[0]);
        assert(dy.dims[1] == W.dims[0]);
        assert(bias.dims[0] == dy.dims[1]);

		auto x_it = x.as_tspan<2>();
		auto dy_it = dy.as_tspan<2>();
		//Technically need to remake iterators every time,
		//because (in theory) W and bias could be re-allocated
		//(of course, this never actually happens; we allocate 
		//them once and then never change the size, so we could
		//leave these W and bias iterators as member vars and 
		//initialize them in the constructor)
		auto W_it = W.as_tspan<2>();
		auto bias_it = bias.as_tspan<1>();

		//z => (num batches) x (num outputs)
        Tensor<float> z = ff(x, use_saved, false);
		auto z_it = z.as_tspan<2>();
        assert(std::equal(z_it.dims, z_it.dims+2, dy.dims));
        Tensor<float> z2(dy); // (num batches) x (num outputs)
		auto z2_it = z2.as_tspan<2>();

        for (int i = 0; i < z2_it.dims[0]; i++) {
            for (int j = 0; j < z2_it.dims[1]; j++) {
                z2_it[i][j] *= (*act_fn)[z_it[i][j]]; //Silly operator[] for derivative
            }
        }

        auto z2_T = z2_it.transpose(); // (num outputs) x (num batches)
        
        Tensor<float> dErr_dW = tensormul(z2_T, x_it); // (num outputs) x (num inputs)
		auto dErr_dW_it = dErr_dW.as_tspan<2>();
        Tensor<float> dErr_dx = tensormul(z2_it, W_it); // (num batches) x (num inputs)
        assert(std::equal(dErr_dW_it.dims, dErr_dW_it.dims+2, W_it.dims));
        assert(std::equal(dErr_dx.dims.data(), dErr_dx.dims.data()+2, x.dims));
        //dErr_dbias = dy

        weight_optimizer->update_tspan(W_it, dErr_dW_it);

		//Sum-reduce along batches (i.e. squeeze into a single row)
		//to obtain the gradients for the bias vector.
		Tensor<float> bias_grad(bias_it.dims, 1);
		auto bias_grad_it = bias_grad.as_tspan<1>();
		for (int i = 0; i < bias_grad_it.length(); i++) {
			bias_grad_it[i] = z2_it[0][i];
			for (int j = 1; j < z2_it.dims[0]; j++) {
				bias_grad_it[i] += z2_it[j][i];
			}
		}

        bias_optimizer->update_tspan(bias_it, bias_grad_it);

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
        o << "\"W\": np.array(" << W.as_tspan<2>() << "),\n";
        o << "\"bias\": np.array(" << bias.as_tspan<1>() << ")\n";
        o << "}},";
    }
};

struct softmax : layer {
    //feed-forward
    Tensor<float> ff(RTSpan<float> const& x, bool=false, bool=false) override {
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
    Tensor<float> bp(RTSpan<float> const& x, RTSpan<float> const& dy,
                     bool=false) override {
        assert(x.dims[1] == dy.dims[1]);

		auto x_it = x.as_tspan<2>();
		auto dy_it = dy.as_tspan<2>();

		//if we notice that dy is one hot
		//	do the speical case instead

        auto y = ff(x);
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

#endif
