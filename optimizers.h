#ifndef OPTIMIZERS_H
#define OPTIMIZERS_H 1

#include "base_types.h"
#include "tensor.h"
#include <algorithm> //std::equa
#include <cmath>
#include <iostream>
#include <random>

struct no_opt : optimizer {
	Tensor<float> get_deltas(RTSpan<float> const& grad) override {
		//Tensor<T>::operator bool() returns false on a default-constructed
		//Tensor<T>. In optimizer::update, we don't do anything if get_deltas
		//returns a Tensor that evaluates to false.
		return Tensor<float>();
	}
};

template <int rank>
struct GD : compiletime_rank_optimizer<rank> {
	float lr;

	GD(float lr) : lr(lr) {}

	Tensor<float> get_deltas(RTSpan<float> const& grad) override {
		Tensor<float> ret(grad.dims, grad.rank);

		tensorunary(grad.as_tspan<rank>(), ret.as_tspan<rank>(),
			[=](float f) {return -lr*f;}
		);

		return ret;
	}
};

//https://www.paperswithcode.com/method/adam
template <int rank>
struct Adam: compiletime_rank_optimizer<rank> {
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

	Tensor<float> get_deltas(RTSpan<float> const& grad) override {
		auto grad_spn = grad.as_tspan<rank>(); //Includes rank-check

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
		Tensor<float> updates(grad.dims, rank);
        
		//updates = eta * m_hat / sqrt(v_hat) + eps;
		float one_minus_beta1_to_the_t = 1 - beta1_to_the_t;
		float one_minus_beta2_to_the_t = 1 - beta2_to_the_t;
        tensoreltwise(m_spn, v_spn, updates.as_tspan<rank>(), [=](float lhs, float rhs) {
            float m_hat = lhs / one_minus_beta1_to_the_t;
            float v_hat = rhs / one_minus_beta2_to_the_t;
            return -eta * m_hat / (sqrt(v_hat) + eps);
        });

		return updates;
    }
};

//This isn't really a good way to do it. The ideal way would be to rerun 
//feed-forward right after and see if the random perturbation improved the 
//cost; if so keep, if not, discard.
template <int rank>
struct simulated_annealing: compiletime_rank_optimizer_wrapper<rank> {
	std::unique_ptr<optimizer> impl;
	float temperature;
	float alpha;

	std::default_random_engine gen;

	//Hmmm.... should we take in the optimizer by pointer, by reference,
	//or by unique_ptr r-value?
	simulated_annealing(optimizer *o, float t0 = 0.05, float alpha = 0.995) 
		: impl(std::unique_ptr<optimizer>(o)), temperature(t0), alpha(alpha)
	{}

	void advise_size(int const *dims, int _rank) override {
		impl->advise_size(dims, _rank);
	}

	//Currently does nothing to the underlying deltas
	//TODO: Add some random perturbation that is "scaled" by the 
	//current temperature, and the application of the temperature
	//schedule.
	Tensor<float> get_deltas(RTSpan<float> const& grad) override {
		Tensor<float> ret = this->call_get_deltas(impl.get(),grad);

		auto dist = std::uniform_real_distribution(-temperature, temperature);

		auto ret_spn = ret.as_tspan<rank>();
		tensorunary(ret_spn, ret_spn, 
			[&] (float f) {return f + dist(gen);}
		);

		temperature *= alpha;

		return ret;
	}
};

#endif