#ifndef BASE_TYPES_H
#define BASE_TYPES_H 1

#include <iostream>
#include <string>
#include <cstdint> //For uint64_t
#include <stdexcept> //For std::runtime_error
#include <utility> //For std::move
#include <memory> //For std::shared_ptr
#include <vector>
#include <algorithm> //For std::equal
#include <functional> //For std::function
#include "tensor.h"

//Instead of using function pointers, we are using a base class. 
//This simplifies cases where optimizers need to retain state.
struct optimizer {
	protected:
	int current_time = 0;
	int num_accums = 1;

	Tensor<float> accum;

	//Not all optimizers need to implement this, but all layers should 
	//call it if it makes sense
	public:
	virtual void advise_size(int const *dims, int rank) {}

	bool set_num_accums(int length) {
        num_accums = length;
        return reset();
    }

	//If current_time was already 0, report true, otherwise 
	//set it to zero and return false. I think this is to let you 
	//know if any acucumulations weere dropped before being applied
    bool reset() {
        bool output = current_time == 0;
        current_time = 0;
		//Notice it doesn't reset accum; see 5-6th line in update()
        return output;
    }

	//New optimizers must implement this method, but layers shouldn't 
	//use it.
	//TODO: does this need any other parameters?
	protected:
	virtual Tensor<float> get_deltas(RTSpan<float> const& grad) = 0;

	//This function mostly exists for convenience. Nonetheless,
	//an optimizer can still choose to override (for example, if 
	//it uses compile-time rank and wants to use the more efficient
	//version of tensorplus).
	//Takes parameters by (non-const) reference to allow the 
	//chance to update them in place
	public:

	//The only reason this is virtual is to allow compile-time rank overrides
	//(see compiletime_rank_optimizer below). I guess it's possible for optimizers 
	//to do something fancy but the intention is to always use the default
    virtual void update(RTSpan<float>& params, RTSpan<float> const& grad) {
		assert(std::equal(params.dims,params.dims+params.rank,grad.dims));

        auto deltas = get_deltas(grad);

		//If no deltas, quit early
		if (!deltas) return;
		
		if (current_time == 0) {
			accum = std::move(deltas);
		} else {
			auto accum_spn = &accum;
        	tensorplus(accum_spn, &deltas, accum_spn); //Can't use compile-time rank here
		}

        current_time++;
        if (current_time == num_accums) {
            tensorplus(params, &accum, params); //Can't use compile-time rank here
			current_time = 0;
		}
    }


	//This is a little helper function to simplify the interface to layers 
	//that use compile-time rank. Notice it is not virtual.
	//If the optimizer also uses compile-time rank, it should override the
	//update method.
	template <int rank>
	void update_tspan(TSpan<rank, float>& params, TSpan<rank, float> const& grad) {
		//Create non-temporary RTSpans
		auto params_rt = params.as_rtspan();
		auto grad_rt = grad.as_rtspan();

		update(params_rt, grad_rt);
	}

	virtual ~optimizer() {}

	friend struct optimizer_wrapper; //See right below
	template <int rank>
	friend struct compiletime_rank_optimizer_wrapper;
};

template <int rank>
struct compiletime_rank_optimizer : optimizer {
    void update(RTSpan<float>& params, RTSpan<float> const& grad) override {
		assert(std::equal(params.dims,params.dims+params.rank,grad.dims));

        auto deltas = get_deltas(grad);

		auto params_spn = params.as_tspan<rank>();

		//If no deltas, quit early
		if (!deltas) return;
		
		if (current_time == 0) {
			accum = std::move(deltas);
		} else {
			auto accum_spn = accum.template as_tspan<rank>();
        	tensorplus(accum_spn, deltas.template as_tspan<rank>(), accum_spn); //Can't use compile-time rank here
		}

        current_time++;
        if (current_time == num_accums) {
            tensorplus(params_spn, accum.template as_tspan<rank>(), params_spn); //Can't use compile-time rank here
			current_time = 0;
		}
    }
};

//Proof-of-concept:
//https://godbolt.org/z/nxvjb3
//Also see:
//https://stackoverflow.com/questions/66305334/allow-descendant-to-call-overridden-protected-function-on-instance-of-another-de
struct optimizer_wrapper : optimizer {
	//This function should get optimized away
	protected:
	Tensor<float> call_get_deltas(optimizer *o, RTSpan<float> const& grad) {
		return o->get_deltas(grad);
	}
};

//With virtual inheritance (whatever that means...) you could have a class 
//derived from both compiletime_rank_optimizer and optimizer_wrapper. 
//However, I don't understand virtual inheritance, so I decided not to 
//use it.
template <int rank>
struct compiletime_rank_optimizer_wrapper : compiletime_rank_optimizer<rank> {
	//This function should get optimized away
	protected:
	Tensor<float> call_get_deltas(optimizer *o, RTSpan<float> const& grad) {
		return o->get_deltas(grad);
	}
};

//template <typename T = float> //<- Try this sometime in the future?
struct layer {
    virtual ~layer() {}

    //feed-forward
    virtual Tensor<float> ff(RTSpan<float> x, bool save = false) = 0;

    //backprop
	//use_saved only applies to the most recent call to ff, which may have 
	//happened as a result of calling bp
    virtual Tensor<float> bp(RTSpan<float> x, RTSpan<float> y, RTSpan<float> dy,
                             bool use_saved = false) = 0;

	//For model validation
	virtual bool can_accept(int num_inputs) const {return true;}
    virtual int num_outputs(int num_inputs) const {return -1;}

	//Used if this layer is used inside an RNN
	virtual void apply_to_all_optimizers (
		std::function<void(std::unique_ptr<optimizer>&)> fn
	) {
		throw std::runtime_error("Layer has not provided any optimizers");
	}

    //For debugging
    virtual void dump(std::ostream &o) const { o << "\"(does not support dumping)\""; }
};

//Helps eliminate some boilerplate for compile-time rank layers
template <int rank>
struct ctr_layer : layer {
	Tensor<float> ff(RTSpan<float> x, bool save = false) override {
		//Check if rank of given x is one more than rank template parameter;
		//if so, iterate outer dimension
		return ctr_ff(x.as_tspan<rank>(), save);
	}
	
    Tensor<float> bp(
		RTSpan<float> x, RTSpan<float> y, RTSpan<float> dy,
        bool use_saved = false) override {
		//apply_to_all_optimizers(set time to sequence length)
		return ctr_bp(x.as_tspan<rank>(), y.as_tspan<rank>(), dy.as_tspan<rank>(), use_saved);
	}

	virtual Tensor<float> ctr_ff(TSpan<rank, float> x, bool save = false) = 0;
	
	
    virtual Tensor<float> ctr_bp(TSpan<rank, float> x, TSpan<rank, float> y, TSpan<rank, float> dy,
                                 bool use_saved = false) = 0;
};

std::ostream& operator<<(std::ostream &o, layer const& l);

struct cost_fn {
    virtual ~cost_fn() {}

    //calculate cost
    virtual float cc(RTSpan<float> const& x, RTSpan<float> const& actual) = 0;

    //get gradient
    virtual Tensor<float> gg(RTSpan<float> const& x, RTSpan<float> const& actual) = 0;
};

struct activation_fn {
    virtual ~activation_fn() {}

    //Forward
    virtual float operator()(float x) = 0;
    
    //Derivative
    virtual float operator[](float x) = 0;
};


#endif