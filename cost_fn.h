#ifndef COST_FN_H
#define COST_FN_H

#include <vector>
#include <stdexcept>
#include <memory>
#include <utility>
#include "base_types.h"

#define EPS (1e-7)

struct sqerr : cost_fn {
    //feed-forward
    float cc(RTSpan<float> const& x, RTSpan<float> const& actual) override {
        float sum = 0.0;

        assert(x.dims[0] == actual.dims[0]);
        assert(x.dims[1] == actual.dims[1]);

		//Intentionally using (much slower) runtime rank code. Makes
		//sqerr more general. If we really care about the speed we can
		//make a sqerr_matrix struct and use that instead
        for (int i = 0; i < x.length(); i++) {
            for (int j = 0; j < x[i].length(); j++) {
                float diff = *x[i][j] - *actual[i][j];
                sum += diff*diff;
            }
        }

        return sum;
    }

    //get gradient
    Tensor<float> gg(RTSpan<float> const& x, RTSpan<float> const& actual) override {
        assert(x.dims[0] == actual.dims[0]);
        assert(x.dims[1] == actual.dims[1]);
        assert(x.length() > 0);

		//Intentionally using (much slower) runtime rank code. Makes
		//sqerr more general. If we really care about the speed we can
		//make a sqerr_matrix struct and use that instead
        Tensor<float> ret(x.dims, x.rank);

        for (int i = 0; i < x.length(); i++) {
            for (int j = 0; j < x[i].length(); j++) {
                *ret[i][j] = 2.0*(*x[i][j] - *actual[i][j]);
            }
        }

        return ret;
    }
};

struct nll : cost_fn {
	float cc(RTSpan<float> const& x, RTSpan<float> const& actual) override {
        assert(x.dims[0] == actual.dims[0]);
        assert(x.dims[1] == actual.dims[1]);

		float cost = 0.0f;
		
		for (int i = 0; i < x.dims[0]; i++) {
			int ind_actual = -1;
			//Search for index of correct answer
			for (int j = 0; j < x.dims[1]; j++) {
				if (*actual[i][j] != 0.0f) {
					assert(ind_actual == -1);
					ind_actual = j;
					#ifdef NDEBUG 
					break;
					#endif
				}
			}
			
            assert(*x[i][ind_actual] > -EPS/2);
			cost -= log(*x[i][ind_actual] + EPS); //TODO? Remove this eps?
		}

		return cost;
	}

    Tensor<float> gg(RTSpan<float> const& x, RTSpan<float> const& actual) override {
        assert(x.dims[0] == actual.dims[0]);
        assert(x.dims[1] == actual.dims[1]);
        Tensor<float> ret(x.dims, x.rank);
        
        for (int i = 0; i < x.dims[0]; i++) {
            bool hot = false;
            for (int j = 0; j < actual.dims[1]; j++) {
                if (*actual[i][j] != 0) {
                    assert(!hot);
                    hot = true;
                    assert(*x[i][j] > -EPS/2);
                    *ret[i][j] = -1 / (*x[i][j] + EPS); //TODO? Remove this eps?
                }
            }
            assert(hot);
        }
        return ret;
    }
};

#endif