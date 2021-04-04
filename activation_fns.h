#ifndef ACTIVATION_FNS_H
#define ACTIVATION_FNS_H 1

#include "base_types.h"

struct identity : activation_fn {
    identity() {}

    float operator()(float x) override {
      return x;
    }
    float operator[](float x) override {
      return 1;
    }
};

struct hyptan : activation_fn {
    float operator()(float x) override {
      return tanh(x);
    }
    float operator[](float x) override {
      float tmp = cosh(x);
      return 1.0 / (tmp*tmp);
    }
};

struct sigmoid : activation_fn {
    float operator()(float x) override {
        return 1.0 / (1 + exp(-x));
    }
    
    float operator[](float x) override {
        float sig = operator()(x);
        return sig*(1.0 - sig);
    }
};

//Experiment:
//https://www.desmos.com/calculator/3miy5kbrlj

struct hypsin : activation_fn {
    float operator()(float x) override {
        return sinh(x);
    }
    
    float operator[](float x) override {
        return cosh(x);
    }
};

//https://www.desmos.com/calculator/je2ixlcklj
struct oddln : activation_fn {
    float operator()(float x) override {
        if (x >= 0)
            return log(x + 1.0);
        else 
            return -log(1.0 - x);
    }
    
    float operator[](float x) override {
        if (x >= 0)
            return 1.0/(x + 1.0);
        else 
            return 1.0/(1.0 - x);
    }
};

struct relu : activation_fn {
  float operator()(float x) override {
    return x < 0 ? 0 : x;
  }

  float operator[](float x) override {
    //return x < 0 ? 0 : 1;
    return x >= 0;
  }
};

#endif