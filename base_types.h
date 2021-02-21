#ifndef BASE_TYPES_H
#define BASE_TYPES_H 1

#include <iostream>
#include <string>
#include <cstdint> //For uint64_t
#include <stdexcept> //For std::runtime_error
#include <utility> //For std::move
#include <memory> //For std::shared_ptr
#include <vector>
#include "tensor.h"

//Instead of using function pointers, we are using a base class. 
//This simplifies cases where optimizers need to retain state.
struct optimizer {
	//Not all optimizers need to implement this, but all layers should 
	//call it if it makes sense
	virtual void advise_size(int const *dims, int rank) {}

	//Takes parameters by (non-const) reference to allow the 
	//chance to update them in place
	virtual void update(RTSpan<float>& params, RTSpan<float> const& grad) = 0;

	template <int rank>
	void update_tspan(TSpan<rank, float>& params, TSpan<rank, float> const& grad) {
		//Create non-temporary RTSpans
		auto params_rt = params.as_rtspan();
		auto grad_rt = grad.as_rtspan();

		update(params_rt, grad_rt);
	}

	virtual ~optimizer() {}
};

//template <typename T = float> //<- Try this sometime in the future?
struct layer {
    virtual ~layer() {}

    //feed-forward
    virtual Tensor<float> ff(RTSpan<float> const& x, bool use_saved = false, 
	                         bool save = false) = 0;

    //backprop
    virtual Tensor<float> bp(RTSpan<float> const& x, RTSpan<float> const& dy,
                             bool use_saved = false) = 0;

	//For model validation
	virtual bool can_accept(int num_inputs) const {return true;}
    virtual int num_outputs(int num_inputs) const {return -1;}

    //For debugging
    virtual void dump(std::ostream &o) const { o << "\"(does not support dumping)\""; }
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