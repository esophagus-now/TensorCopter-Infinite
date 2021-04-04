#include "../tensor.h"
#include <random>
#include <iostream>
#include <exception>

#define _STRINGIFY(x) #x
#define STRINGIFY(x) _STRINGIFY(x)

#define OUR_ASSERT(x) \
	if (!(x)) throw runtime_error(__FILE__ " " STRINGIFY(__LINE__) ": " #x);

using namespace std;

ostream& el(ostream &o) {return o << "\n";}

void test_tensor_equal() {
    auto A = make_tensor<float> ({2,3}, {1,2,3,4,5,6});
    auto B = make_tensor<float> ({3,2}, {1,2,3,4,5,6});
    auto C = make_tensor<float> ({2,3}, {1,2,3,4,5,6});
    auto D = make_tensor<float> ({2,3}, {1+FLOAT_TOL/10, 2-FLOAT_TOL/10,
                                           3, 4,
                                           5, 6+FLOAT_TOL/10});
    auto E = make_tensor<float> ({2,3}, {1+FLOAT_TOL/10, 2-FLOAT_TOL/10,
                                           3, 4,
                                           5, 6+FLOAT_TOL*10});

    OUR_ASSERT(!(A == B)); //different dimensions
    OUR_ASSERT(A == C); // equal
    OUR_ASSERT(A == D); // within the tolerance threshold
    OUR_ASSERT(!(A == E)); // exceeds tolerance threshold
    
    auto F = make_tensor<float> ({2,1,2,1,3}, {1,2,3,4,5,6,7,8,9,10,11,12});
    auto G = make_tensor<float> ({2,1,2,1,3}, {1,2,3,3,5,6,7,8,9,10,11,12});
    OUR_ASSERT(!(F == G));
}

void fuzz_product_of_transposes() {
	static uint32_t seed = 24;
	Tensor<float> A = make_random_tensor<float>({20,300}, seed++);
	Tensor<float> B = make_random_tensor<float>({300,40}, seed++);

	Tensor<float> prod1 = tensormul(A.as_tspan<2>(), B.as_tspan<2>());

	MSpan<float> A_T = (&A).transpose();
	MSpan<float> B_T = (&B).transpose();
	
	Tensor<float> prod2_T = tensormul(B_T, A_T);

	MSpan<float> prod2 = (&prod2_T).transpose();

	OUR_ASSERT(&prod1 == prod2);	
}

void a_tt_equals_a() {
	static uint32_t seed = 235252;
	Tensor<float> A = make_random_tensor<float>({15,63}, seed++);
	
	OUR_ASSERT(&A == (&A).transpose().transpose());
}

void test_transpose_index() {
    static uint32_t seed = 42;
    Tensor<float> A = make_random_tensor<float>({10,20}, seed++);
    MSpan<float> A_T = (&A).transpose();
    
    OUR_ASSERT(A.length() == A_T.dims[1]);

    for (int i = 0; i < A.length(); i++) {
        OUR_ASSERT(A[i] == A_T.back_index(i));
    }
}

#define EMPTY()
#define DEFER(x) x EMPTY()
#define EXPAND(...) __VA_ARGS__

#define mktest(x, count_in)                              \
do {                                                     \
	try {                                                \
		int count = count_in;                            \
		while (count --> 0) DEFER(x)();                  \
		cout << "[PASSED] " #x << el;                    \
	} catch (exception const& e) {                       \
		cout << "[FAILED] " #x "\n\t" << e.what() << el; \
	}                                                    \
} while(0)

int main() {
    mktest(test_tensor_equal, 1);

	mktest(fuzz_product_of_transposes, 50);
	
	mktest(a_tt_equals_a, 50);

	mktest(test_transpose_index, 50);

    cout << "Test world" << el;
}