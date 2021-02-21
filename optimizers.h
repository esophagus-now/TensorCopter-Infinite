#include "base_types.h"
#include "tensor.h"
#include <algorithm> //std::equa
#include <cmath>
#include <iostream>

template <int rank>
struct GD : optimizer {
	float lr;

	//Could we do better?
	//https://en.cppreference.com/w/cpp/language/aggregate_initialization
	GD(float lr) : lr(lr) {}

	void update(RTSpan<float>& params, RTSpan<float> const& grad) override {
		auto params_span = params.as_tspan<rank>(); //Includes rank-check
		auto grad_span = grad.as_tspan<rank>();
		assert(std::equal(params.dims, params.dims+rank, grad.dims));

		tensoreltwise(params_span, grad_span, params_span, 
			[=](float lhs, float rhs) -> float {return lhs - lr*rhs;}
		);
	}
};

template <int rank>
struct SGD : optimizer {
	int batch_sz; 
	int cur_batch;
	float lr;

	Tensor<float> accum;

	SGD(int batch_sz = 32, float lr = 0.015)
	: batch_sz(batch_sz), cur_batch(0), lr(lr)
	{}
	
	float operator()(float lhs, float rhs) {
		return lhs - lr*rhs;
	}

	//FIXME: this function has no way to detect if only a partial batch 
	//was given, so the last batch may not actually trigger a parameter
	//update.
	void update(RTSpan<float>& params, RTSpan<float> const& grad) override {
		auto params_span = params.as_tspan<rank>(); //Includes rank-check
		auto grad_span = grad.as_tspan<rank>();
		assert(std::equal(params.dims, params.dims+rank, grad.dims));

		if (cur_batch == 0) {
			//TODO: We should have a move-assign operator in Tensor for 
			//just such an occasion
			accum = Tensor<float>(grad);
		} else {
			assert(std::equal(grad.dims,grad.dims+rank,accum.dims.begin()));
			
			auto accum_spn = accum.as_tspan<rank>();
			tensorplus(accum_spn, grad, accum_spn);
		}
		cur_batch++;

		if (cur_batch == batch_sz) {
			tensoreltwise(params_span, grad_span, params_span, this);
			cur_batch = 0;
		}
	}
};

//https://www.paperswithcode.com/method/adam
template <int rank>
struct Adam : optimizer {
	float eta;
	float beta1, beta2;
	float eps;
	int t;
	
	float beta1_to_the_t, beta2_to_the_t;

	Tensor<float> m, v;
	TSpan<rank, float> m_spn, v_spn;

	Adam(float lr=0.001, float beta1=0.9, float beta2=0.999, float eps=1e-8)
		: eta(lr), beta1(beta1), beta2(beta2), eps(eps), t(0),
		  beta1_to_the_t(1), beta2_to_the_t(1)
	{}

	void advise_size(int const *dims, int rank_given) override {
		assert(rank_given == rank);

		m = Tensor<float>(dims, rank);
		m_spn = m.as_tspan<rank>();
		v = Tensor<float>(dims, rank);
		v_spn = v.as_tspan<rank>();
	}

	void update(RTSpan<float>& params, RTSpan<float> const& grad) override {
		auto params_spn = params.as_tspan<rank>(); //Includes rank-check
		auto grad_spn = grad.as_tspan<rank>();
		assert(std::equal(params.dims,params.dims+rank,grad.dims));

		t++;
		beta1_to_the_t *= beta1;
		beta2_to_the_t *= beta2;

        //m = beta1 * m + (1 - beta1) * grad_spn;
		float one_minus_beta1 = 1 - beta1;
        tensoreltwise(m_spn, grad_spn, m_spn, [=](float lhs, float rhs) {
           return  beta1 * lhs + one_minus_beta1 * rhs;
        });

        //v = beta2 * v + (1 - beta2) * (grad_spn * grad_spn);
		float one_minus_beta2 = 1 - beta2;
        tensoreltwise(v_spn, grad_spn, v_spn, [=](float lhs, float rhs) {
           return beta2 * lhs + one_minus_beta2 * rhs * rhs;
        });
        
        //m_hat = m / (1 - pow(beta1, t));
        //v_hat = v / (1 - pow(beta2, t));
		//params = params - eta * m_hat / sqrt(v_hat) + eps;
		Tensor<float> temp(params_spn.dims, rank);
        
		//temp = eta * m_hat / sqrt(v_hat) + eps;
		float one_minus_beta1_to_the_t = 1 - beta1_to_the_t;
		float one_minus_beta2_to_the_t = 1 - beta2_to_the_t;
        tensoreltwise(m_spn, v_spn, temp.as_tspan<rank>(), [=](float lhs, float rhs) {
            float m_hat = lhs / one_minus_beta1_to_the_t;
            float v_hat = rhs / one_minus_beta2_to_the_t;
            return eta * m_hat / (sqrt(v_hat) + eps);
        });
            
        // params = params - temp
        tensoreltwise(params_spn, temp.as_tspan<rank>(), params_spn, [=](float lhs, float rhs) {
            return lhs - rhs;
        });
    }
};
