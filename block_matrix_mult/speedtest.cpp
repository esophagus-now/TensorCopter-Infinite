#include <iostream>
#include <vector>
#include "../tensor.h"
#include "../time_fn.h"

#define NUM_ITERS 100

//To be honest, I don't even really care if this is functionally correct.
//I really just want to know how fast things go.



template <typename T>
TSpan<2, T> submat(TSpan<2,T> mat, int x0, int y0, int xsz, int ysz) {
	//Assert in bounds
	int *new_dims = new int[2];
	int *new_strides = new int[2];
	new_dims[0] = ysz; new_dims[1] = xsz;
	new_strides[0] = mat.strides[0];
	new_strides[1] = mat.strides[1];

	T const* new_data = mat.data + y0*mat.strides[0] + x0*mat.strides[1];

	return TSpan<2,T>(
		new_data, 
		new_dims, 
		new_strides, 
		new RCTSpanData(new_dims, new_strides)
	);
}

//This isn't fully general, it's just meant to be a litmus test. We want 
//to know if adding tiling support is worth the trouble
template <int bsz>
void block_matmul(TSpan<2,float> lhs, TSpan<2,float> rhs, TSpan<2,float> res) {
	assert(lhs.dims[1] == rhs.dims[0]);
	assert(res.dims[0] == lhs.dims[0]);
	assert(res.dims[1] == rhs.dims[1]);
	assert(lhs.dims[0] % bsz == 0);
	assert(lhs.dims[1] % bsz == 0);
	assert(rhs.dims[0] % bsz == 0);
	assert(rhs.dims[1] % bsz == 0);

	//Start by creating a matrix of blocks (where each block is itself 
	//a matrix of size bsz*bsz) for the inputs and the output

	int lhs_blocks_dims[2] = {lhs.dims[0] / bsz, lhs.dims[1] / bsz};
	int rhs_blocks_dims[2] = {rhs.dims[0] / bsz, rhs.dims[1] / bsz};
	int res_blocks_dims[2] = {res.dims[0] / bsz, res.dims[1] / bsz};

	Tensor<TSpan<2,float>> lhs_blocks(lhs_blocks_dims, 2);
	Tensor<TSpan<2,float>> rhs_blocks(rhs_blocks_dims, 2);
	Tensor<TSpan<2,float>> res_blocks(res_blocks_dims, 2);

	auto lhs_blocks_spn = lhs_blocks.as_tspan<2>();
	auto rhs_blocks_spn = rhs_blocks.as_tspan<2>();
	auto res_blocks_spn = res_blocks.as_tspan<2>();

	for (int i = 0, ii = 0; i < lhs_blocks.dims[0]; i++, ii += bsz) {
		for (int j = 0, jj = 0; j < lhs_blocks.dims[1]; j++, jj += bsz) {
			lhs_blocks_spn[i][j] = submat(lhs, jj, ii, bsz, bsz);
		}
	}
	
	for (int i = 0, ii = 0; i < rhs_blocks.dims[0]; i++, ii += bsz) {
		for (int j = 0, jj = 0; j < rhs_blocks.dims[1]; j++, jj += bsz) {
			rhs_blocks_spn[i][j] = submat(rhs, jj, ii, bsz, bsz);
		}
	}

	for (int i = 0, ii = 0; i < res_blocks.dims[0]; i++, ii += bsz) {
		for (int j = 0, jj = 0; j < res_blocks.dims[1]; j++, jj += bsz) {
			res_blocks_spn[i][j] = submat(res, jj, ii, bsz, bsz);
		}
	}

	//Now iterate over all blocks of the output and calculate the 
	//matrix product 
	for (int i = 0; i < res_blocks_spn.dims[0]; i++) {
		for (int j = 0; j < res_blocks_spn.dims[1]; j++) {
			for (int k = 0; k < lhs_blocks_spn.dims[1]; k++) {
				tensormul(lhs_blocks_spn[i][k], rhs_blocks_spn[k][j], res_blocks_spn[i][j]);
			}
		}
	}

	//Phew!
}

using namespace std;

int main() {
	vector<int> dims = {512, 512};
	auto t1 = make_random_tensor<float>({512,512});
	auto t2 = make_random_tensor<float>({512,512});
	auto res_golden = Tensor<float>(dims);

	auto t1_spn = t1.as_tspan<2>();
	auto t2_spn = t2.as_tspan<2>();
	auto res_golden_spn = res_golden.as_tspan<2>();

	cout << "512x512 raw tensormuls: ";
	time_fn(NUM_ITERS, [=]{tensormul(t1_spn, t2_spn, res_golden_spn);});

	auto res = Tensor<float>(dims);
	auto res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 512): ";
	time_fn(NUM_ITERS, [=]{block_matmul<512>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;

	res = Tensor<float>(dims);
	res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 256): ";
	time_fn(NUM_ITERS, [=]{block_matmul<256>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;
	
	res = Tensor<float>(dims);
	res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 128): ";
	time_fn(NUM_ITERS, [=]{block_matmul<128>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;
	
	res = Tensor<float>(dims);
	res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 64): ";
	time_fn(NUM_ITERS, [=]{block_matmul<64>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;
	
	res = Tensor<float>(dims);
	res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 32): ";
	time_fn(NUM_ITERS, [=]{block_matmul<32>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;
	
	res = Tensor<float>(dims);
	res_spn = res.as_tspan<2>();
	cout << "512x512 block matrix mults (bsz = 16): ";
	time_fn(NUM_ITERS, [=]{block_matmul<16>(t1_spn, t2_spn, res_spn);});
	cout << "\tEqual? " << (res_spn == res_golden_spn) << endl;
}