#ifndef TENSOR_H
#define TENSOR_H

// #ifndef DEBUG_PRINTS
// #define DEBUG_PRINTS 1
// #endif

#include <algorithm>
#include <array>
#include <stdexcept>
#include <cstdint>
#include <vector>
#include <iostream>
#include <assert.h>
#include <random>
#include <cmath>
#include <functional>

template <typename T>
[[maybe_unused]] static bool compare(T const& a, T const& b) {
    return a == b;
}

#define FLOAT_TOL 1e-6
[[maybe_unused]] static bool compare(float const& a, float const& b) {
	return fabs(a - b) < FLOAT_TOL;
}

#define DOUBLE_TOL 1e-8
[[maybe_unused]] static bool compare(double const& a, double const& b) {
	return fabs(a - b) < DOUBLE_TOL;
}

class RCTSpanData {
    int ref_cnt;
    int const* dims;
    int const* strides;

public:
    RCTSpanData(int const* dims, int const* strides) :
        ref_cnt(0), dims(dims), strides(strides)
    {}

    RCTSpanData(RCTSpanData const& other) = delete;
    RCTSpanData(RCTSpanData&& other) = delete;
    RCTSpanData& operator=(RCTSpanData const& other) = delete;
    RCTSpanData& operator=(RCTSpanData&& other) = delete;
    
	//No need to call ref right after constructing
    void ref() {
        ref_cnt++;
    }

    void deref() {
        ref_cnt--;
        if (ref_cnt == 0)
            delete this;
    }

private:
    ~RCTSpanData() {
        delete[] dims;
        delete[] strides;
    }
};

//Forward-declare RTSpan
template <typename T>
struct RTSpan;

//Template specialization below covers ndims = 1, we can assume
//this struct always has ndims > 1
template <int rank, typename T>
struct TSpan {
    static_assert(rank >= 1, "TSpan code only handles positive-rank tensors");

    T const* data;
    int const* dims;
    int const* strides;

    RCTSpanData *rc_data;

	//FIXME: should we keep this? Currently fixes a problem in the 
	//Adam optimizer where we wanted to cache the TSpans. Another 
	//solution would be to regenerate the TSpans every time
	TSpan() : data(nullptr), dims(nullptr), strides(nullptr), rc_data(nullptr) {}

    TSpan(T const* data, int const* dims, int const* strides, 
          RCTSpanData *rc_data = nullptr) :
        data(data), dims(dims), strides(strides), rc_data(rc_data)
    {
        if (rc_data) {
            rc_data->ref();
        }
    }

	TSpan(RTSpan<T> const& other)
		: TSpan(other.data, other.dims, other.strides, other.rc_data)
	{
		if (other.rank != rank) {
			throw std::runtime_error(
				std::string("Could not construct TSpan of rank ")
				+ std::to_string(rank)
				+ " from RTSpace of rank "
				+ std::to_string(other.rank)
			);
		}
	}

    ~TSpan() {
        if (rc_data)
            rc_data->deref();
    }

	//constructor delegation takes care of calling ref() on rc_data
    TSpan(TSpan const& other) :
        TSpan(other.data, other.dims, other.strides, other.rc_data) 
    {}

    TSpan(TSpan&& other) {
        data = other.data;
        dims = other.dims;
        strides = other.strides;
        rc_data = other.rc_data;

        other.data = nullptr; //Technically unnecessary
        other.dims = nullptr; //Technically unnecessary
        other.strides = nullptr; //Technically unnecessary
        other.rc_data = nullptr; //Necessary
    }

    //TODO: this is more thorny
    TSpan& operator=(TSpan const&) = delete;

    TSpan& operator=(TSpan&& other) {
        if(this != &other) {
            //Get rid of what was here before
            if (rc_data)
                rc_data->deref();

            //Copy from the other guy
            data = other.data;
            dims = other.dims;
            strides = other.strides;
            rc_data = other.rc_data;

            //Get rid of other guy's stuff
            other.data = nullptr; //Technically unnecessary
            other.dims = nullptr; //Technically unnecessary
            other.strides = nullptr; //Technically unnecessary
            other.rc_data = nullptr; //Necessary
        }
        return *this;
    }

	//////////////////////////////////////////
	//OPERATOR[] AND BACK_INDEX FOR RANK > 1//
	//////////////////////////////////////////
	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<not rank_is_1,
	TSpan<rank - 1, T> > operator[] (int n) {
        //auto ptr = const_cast<T*>(data);
        //return TSpan<rank - 1, T>(ptr + n * strides[0], dims + 1, strides + 1);
        return TSpan<rank - 1, T>(data + n * strides[0], dims + 1, strides + 1, rc_data);
    }

	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<not rank_is_1,
	TSpan<rank - 1, T> > const operator[] (int n) const {
        return TSpan<rank - 1, T>(data + n * strides[0], dims + 1, strides + 1, rc_data);
    }

    //Like doing my_tensor(:,:,:,n) in MATLAB syntax
	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<not rank_is_1,
	TSpan<rank - 1, T> > back_index(int n) {
        return TSpan<rank - 1, T>(data + n*strides[rank-1], dims, strides, rc_data);
    }

    //Like doing my_tensor(:,:,:,n) in MATLAB syntax
    template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<not rank_is_1,
	TSpan<rank - 1, T> > const back_index(int n) const {
        return TSpan<rank - 1, T>(data + n*strides[rank-1], dims, strides, rc_data);
    }

	
	//////////////////////////////////////////
	//OPERATOR[] AND BACK_INDEX FOR RANK = 1//
	//////////////////////////////////////////

	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<rank_is_1,
	T&> operator[] (int n) {
        auto ptr = const_cast<T*>(data);
        return ptr[n * strides[0]];
    }

	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<rank_is_1,
    T const&> operator[] (int n) const {
        return data[n * strides[0]];
    }
    
    //Like doing my_tensor(:,:,:,n) in MATLAB syntax
	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<rank_is_1,
    T&> back_index(int n) {
        return (*this)[n];
    }

    //Like doing my_tensor(:,:,:,n) in MATLAB syntax
	template <bool rank_is_1 = (rank == 1)>
    std::enable_if_t<rank_is_1,
    T const&> back_index(int n) const {
        return (*this)[n];
    }

	//////////////////////////
	//DEEP COPY FOR RANK > 1//
	//////////////////////////
	template <bool rank_is_1 = (rank == 1)>
	std::enable_if_t<not rank_is_1,
	void> deep_copy_to(TSpan<rank, T> other) {
		assert(this->dims[0] == other.dims[0]);//Not the most efficient, but whatever
		for (int i = 0; i < this->dims[0]; i++) {
			(*this)[i].deep_copy_to(other[i]);
		}
	}

	//////////////////////////
	//DEEP COPY FOR RANK = 1//
	//////////////////////////
	template <bool rank_is_1 = (rank == 1)>
	std::enable_if_t<rank_is_1,
	void> deep_copy_to(TSpan<rank, T> other) {
		assert(this->dims[0] == other.dims[0]);//Not the most efficient, but whatever
		for (int i = 0; i < this->dims[0]; i++) {
			other[i] = (*this)[i];
		}
	}

	/////////
	//OTHER//
	/////////
	//Don't need enable_if_t for this because we use a static_assert.
	//(Always better to avoid enable_if_t)
    TSpan<2, T> transpose() const {
        static_assert(rank == 2, "transpose only available for rank-2 tensors");
        int *new_dims = new int[2];
        new_dims[0] = dims[1];
        new_dims[1] = dims[0];
        int *new_strides = new int[2];
		new_strides[0] = strides[1];
		new_strides[1] = strides[0];

        TSpan<2, T> ret = TSpan(
			data, new_dims, new_strides,
            new RCTSpanData(new_dims, new_strides)
		);
        return ret;
    }
    
    TSpan<2, T> submat(int x0, int y0, int xsz, int ysz) const {
        //Assert in bounds
        assert(x0 + xsz <= dims[1]);
        assert(y0 + ysz <= dims[0]);
		assert(x0 >= 0);
		assert(y0 >= 0);
        int *new_dims = new int[2];
        int *new_strides = new int[2];
        new_dims[0] = ysz; new_dims[1] = xsz;
        new_strides[0] = strides[0];
        new_strides[1] = strides[1];

        T const* new_data = data + (y0 * strides[0]) + (x0 * strides[1]);

        return TSpan<2,T>(
            new_data, 
            new_dims, 
            new_strides, 
            new RCTSpanData(new_dims, new_strides)
        );
    }

    int length() const {
      return dims[0];
    }
    
    void dump(std::ostream &o) const {
        o << "np.array(" << *this << ")";
    }

    bool operator==(const TSpan<rank, T>& other) const {
        if (dims[0] != other.dims[0])
            return false;
        for (int i = 0; i < dims[0]; i++) {
            if (!compare((*this)[i], other[i]))
                return false;
        }
        return true;
    }

	/*operator RTSpan<T>() {
		return RTSpan<T>(*this);
	}*/

	RTSpan<T> as_rtspan() {
		return RTSpan<T>(*this);
	}
	
	RTSpan<T> const as_rtspan() const {
		return RTSpan<T>(*this);
	}
};

template <typename T>
using MSpan = TSpan<2,T>;

template <typename T>
using VSpan = TSpan<1,T>;

template <typename T>
struct RTSpan {
	T const *data;
	
	int rank;
	int const *dims;
	int const *strides;
	
	RCTSpanData *rc_data;

	RTSpan(
		T const *data, 
		int rank, int const* dims, int const* strides, 
		RCTSpanData *rc_data = nullptr
	)
		: data(data), rank(rank), dims(dims), strides(strides), rc_data(rc_data)
	{
        if (rc_data) {
            rc_data->ref();
        }
	}

	//Constructor delegation takes care of calling ref on rc_data
	template <int other_rank>
	RTSpan(TSpan<other_rank, T> const& other) 
		: RTSpan(other.data, other_rank, other.dims, other.strides, other.rc_data)
	{}

	~RTSpan() {
		if(rc_data) 
			rc_data->deref();
	}

	template<int rank>
	TSpan<rank, T> as_tspan() {
		return TSpan<rank, T>(*this);
	}

	template <int rank>
	TSpan<rank, T> const as_tspan() const {
		return TSpan<rank, T>(*this);
	}

	RTSpan operator[](int n) {
		assert(rank > 0);
		return RTSpan(data + n*strides[0], rank - 1, dims + 1, strides + 1, rc_data);
	}
	
	RTSpan const operator[](int n) const {
		assert(rank > 0);
		return RTSpan(data + n*strides[0], rank - 1, dims + 1, strides + 1, rc_data);
	}

	//This lets you at least do *my_rtspan[3][4][5] when you 
	//know you have an RTSpan of rank 3.
	T& operator*() {
		assert(rank == 0);
		auto ptr = const_cast<T*>(data);
		return *ptr;
	}

	T const& operator*() const {
		assert(rank == 0);
		return *data;
	}

	//Like doing my_tensor(:,:,:,n) in MATLAB syntax
    RTSpan<T> back_index(int n) {
        return RTSpan<T>(data + n*strides[rank-1], rank - 1, dims, strides, rc_data);
    }

    //Like doing my_tensor(:,:,:,n) in MATLAB syntax
    RTSpan<T> const back_index(int n) const {
        return RTSpan<T>(data + n*strides[rank-1], rank - 1, dims, strides, rc_data);
    }

	void deep_copy_to(RTSpan<float> other) {
		assert(rank == other.rank);
		assert(dims[0] == other.dims[0]); //Not the most efficient, but whatever

		if (rank == 1) {
			for (int i = 0; i < dims[0]; i++) {
				*((*this)[i]) = *(other[i]);
			}
		} else {
			for (int i = 0; i < dims[0]; i++) {
				(*this)[i].deep_copy_to(other[i]);
			}
		}
	}

    RTSpan transpose() const {
        assert(rank == 2);

		int *new_dims = new int[2];
        new_dims[0] = dims[1];
        new_dims[1] = dims[0];

        int *new_strides = new int[2];
		new_strides[0] = strides[1];
		new_strides[1] = strides[0];

        RTSpan<T> ret = RTSpan(
			data, 2, new_dims, new_strides, 
			new RCTSpanData(new_dims, new_strides)
		);
        return ret;
    }

    int length() const {
		assert(rank > 0);
    	return dims[0];
    }

    void dump(std::ostream &o) const {
        o << "np.array(" << *this << ")";
    }

    bool operator==(const RTSpan<T>& other) const {
		if (rank != other.rank) {
			return false;
		} else if (rank == 0) {
			return compare(*data, *other);
		} else if (dims[0] != other.dims[0]) {
            return false;
		}

        for (int i = 0; i < dims[0]; i++) {
            if (!compare((*this)[i], other[i]))
                return false;
        }
        return true;
    }
};

template<int ndims, typename T>
std::ostream& operator<<(std::ostream &o, TSpan<ndims, T> const& t) {
    o << "[";
    auto delim = "";

    for (int i = 0; i < t.dims[0]; i++) {
        auto thing = t[i];
        o << delim << thing; //Make it an l-value
        delim = ", ";
    }

    return o << "]";
}

//This is still cleaner as a template specialization
template<typename T>
std::ostream& operator<<(std::ostream &o, TSpan<1, T> const& t) {
    o << "[";
    auto delim = "";

    for (int i = 0; i < t.dims[0]; i++) {
        o << delim << t[i];
        delim = ", ";
    }

    return o << "]";
}

template<typename T>
std::ostream& operator<<(std::ostream &o, RTSpan<T> const& s) {
	assert(s.rank >= 0);
	o << "[";
	if (s.rank == 0) {
		return o << *s << "]";
	}
	
    auto delim = "";

	for (int i = 0; i < s.dims[0]; i++) {
		o << delim << s[i];
		delim = ", ";
	}
	
	return o << "]";	
}

template<typename realtype>
struct uniform_randgen {
    std::default_random_engine eng;
    std::uniform_real_distribution<realtype> dist;
    realtype next_out;

    uniform_randgen(realtype a, realtype b, uint32_t seed = 24) : dist(a,b) {
		eng.seed(seed);
        next_out = dist(eng);
    }

    realtype operator*() {
        return next_out;
    }

    uniform_randgen& operator++() {
        next_out = dist(eng);
        return *this;
    }
};

template <typename T>
struct Tensor {
    std::vector<T> storage;
    std::vector<int> dims;
    std::vector<int> strides;
    size_t rank;

    int copy_dims_get_strides(int const *dims) {        
        int prod = 1;
        for (int i = this->rank - 1; i >= 0; i--) {
            this->dims[i] = dims[i];
            this->strides[i] = prod;
            prod *= dims[i]; //NOT a mistake: only update prod after setting strides[i]
        } 

        return prod;
    }

    //Makes things a bit easier when you have a default constructor
	//Mark tensor with invalid rank to prevent default-constructed
	//tensors from participating in regular code
    Tensor() : rank(-1) {};

    //TODO: add constructors that might copy from a vector or something, 
    //rather than initialize an empty one
    Tensor(int const* dims, size_t dim_len) 
		: dims(dim_len), strides(dim_len) //Make sure vectors have space
	{
        this->rank = dim_len;
        int prod = copy_dims_get_strides(dims);
        storage = std::vector<T>(prod, T());
    }

    Tensor(std::vector<int> const& dims): Tensor(dims.data(), dims.size()) {}

    Tensor(T const* data, int const* dims, size_t dim_len) 
		: dims(dim_len), strides(dim_len) //Make sure vectors have space
	{
        this->rank = dim_len;
        int prod = copy_dims_get_strides(dims);
        
        storage = std::vector<T>();
        for (int i = 0; i < prod; ++i) {
            storage.push_back(data[i]);
        }
    }

    template <typename generator>
    Tensor(std::vector<int> const& dims, generator g) : Tensor(dims) {
        for(auto& item : storage) {
            item = *g;
            ++g;
        }
    }

    template <typename generator>
    Tensor(int const* dims, size_t dim_len, generator g) : Tensor(dims, dim_len) {
        for(auto& item : storage) {
            item = *g;
            ++g;
        }
    }

	Tensor(RTSpan<T> const& s) : Tensor(s.data, s.dims, s.rank) {}

    template<int rank>
    Tensor(TSpan<rank, T> const& t) : Tensor(t.data, t.dims, rank) {}
    
    Tensor(std::vector<T> vec, int const* dims, size_t dim_len) 
		: storage(std::move(vec)),
		  dims(dim_len), strides(dim_len) //Make sure vectors have space
	{
        this->rank = dim_len;
        copy_dims_get_strides(dims);
    }

    Tensor(std::vector<T> vec, std::vector<int> dims) 
		: storage(std::move(vec)),
		  dims(dims.size()), strides(dims.size()) //Make sure vectors have space
	{
        this->rank = dims.size();
        copy_dims_get_strides(dims.data());
    }

    RTSpan<T> operator[] (int n) {
      return RTSpan<T>(*this)[n];
    }

    RTSpan<T> operator& () {
        return RTSpan<T>(*this);
    }

	template <int rank>
	TSpan<rank, T> as_tspan() {
		return TSpan<rank, T>(*this);
	}

	template <int rank>
	TSpan<rank, T> const as_tspan() const {
		assert(initialized());
		return TSpan<rank, T>(*this);
	}

    RTSpan<T> const operator& () const {
        return RTSpan<T>(*this);
    }

    explicit operator RTSpan<T>() const {
		assert(initialized());
        return RTSpan<T>(storage.data(), rank, dims.data(), strides.data());
    }

    template<int span_rank>
    explicit operator TSpan<span_rank, T>() const {
		assert(initialized());
        if (span_rank != this->rank) {
          throw std::runtime_error("TSpan rank doesn't match Tensor Rank.");
        }
        return TSpan<span_rank, T>(storage.data(), dims.data(), strides.data());
    }

    int length() const {
      if (this->rank == 0) {
        return 0;
      }
    	return dims[0];
    }

    void dump(std::ostream &o) const {
		if (initialized())
        	o << "np.array(" << *this << ")";
		else
			o << "\"Empty tensor\"";
    }

    bool operator==(Tensor<T> const& other) const {
		assert(initialized());
        return &(*this) == &other;
    }

	static Tensor<T> empty() {
		return Tensor<T>();
	}

	bool initialized() const {
		return rank >= 0; //I can't remember, can rank be equal to 0?
	}

	operator bool() {
		return initialized();
	}
};

//To random people who find this code: it would be nice
//if you made this work at compile time with nicer syntax
//thx
template<typename T>
Tensor<T> make_tensor(std::initializer_list<int> const dims,
                      std::initializer_list<T> const vals
					  ) {
    std::vector<int> dims_vec(dims);
    std::vector<T> vals_vec(vals);

    int prod = 1;
    for (int d : dims) prod *= d;

    if (prod != static_cast<int>(vals.size())) {
        throw std::runtime_error("Given number of elements does not match dimensions");
    }

    return Tensor<T>(dims_vec, vals_vec.data());
}

//Had to make this a template so linker wouldn't complain about 
//multiple-definition
template<typename T>
Tensor<T> make_random_tensor(std::initializer_list<int> const dims,
                            uint32_t seed = 24
							) {
    std::vector<int> dims_vec(dims);

	uniform_randgen<T> gen(-1.0, 1.0);
    return Tensor<T>(dims_vec, gen);
}

template <int rank, typename T>
std::ostream& operator<<(std::ostream &o, Tensor<T> const& t) {
    return o << &t;
}

//Does NOT perform any safety checks. Will default-construct all
//elements in the output
//Base case: dot product of two 1-d arrays
template<int LHS_rank, int RHS_rank, typename T>
std::enable_if_t<(LHS_rank == 1) && (RHS_rank == 1),
void> tensormul(
    TSpan<LHS_rank, T> const& A, 
    TSpan<RHS_rank, T> const& B,
    T& dest
) {
    //dest = T(); 
	//Assume already initialized; this is important for supporting 
	//multiply-accumulate, e.g. in block matrix mult
    for (int i = 0; i < A.dims[0]; i++) {
      dest += A[i] * B[i];
    }
    return;
}

//Does NOT perform any safety checks.
template<int LHS_rank, int RHS_rank, typename T>
std::enable_if_t<(LHS_rank > 2) || (LHS_rank == 2 && RHS_rank != 2),
void> tensormul(
    TSpan<LHS_rank, T> const& A, 
    TSpan<RHS_rank, T> const& B,
    TSpan<LHS_rank+RHS_rank-2, T> dest
) {
    for (int i = 0; i < A.dims[0]; i++) {
        tensormul(A[i], B, dest[i]);
    }
}

//Does NOT perform any safety checks. 
template<int LHS_rank, int RHS_rank, typename T>
std::enable_if_t<(LHS_rank == 1) && (RHS_rank > 1),
void> tensormul(
    TSpan<LHS_rank, T> const& A, 
    TSpan<RHS_rank, T> const& B,
    TSpan<LHS_rank+RHS_rank-2, T> dest
) {
    for (int i = 0; i < B.dims[RHS_rank-1]; i++) {
        tensormul(A, B.back_index(i), dest.back_index(i));
    }
}

//TODO: find a nicer way to supply the block size
#define BSZ 64
//TODO: 64 is just a magic number

template<typename T>
Tensor<TSpan<2,T> > tilize(TSpan<2,T> A) {
/*

   +-------------+-------------+-------------+-------+
   |             |             |             |       |
   |             |             |             |       |
   |   BSZ*BSZ   |   BSZ*BSZ   |   BSZ*BSZ   |       |
   |             |             |             |       |
   |             |             |             |       |
   +-------------+-------------+-------------+-------+
   |             |             |             |       |
   |             |             |             |       |
   |   BSZ*BSZ   |   BSZ*BSZ   |   BSZ*BSZ   |       |
   |             |             |             |       |
   |             |             |             |       |
   +-------------+-------------+-------------+-------+
   |             |             |             |  XX   |
   +-------------+-------------+-------------+-------+

*/	

	//Uses a neat little trick:
	//     (A + (B-1)) / B = ceil(A/B)
	//                 ^           ^
	//Integer division /           |
	//Regular division------------/

	int blocks_dims[2] = {
		(A.dims[0] + BSZ - 1) / BSZ, 
		(A.dims[1] + BSZ - 1) / BSZ
	};

	Tensor<TSpan<2,T>> blocks(blocks_dims, 2);
    auto blocks_spn = blocks.template as_tspan<2>();
    
    for (int y = 0, yy = 0; y < blocks.dims[0]; y++, yy += BSZ) {
        int y_space = A.dims[0] - yy;
        int ybsz = (y_space > BSZ) ? BSZ : y_space;

		int x, xx;
        //Do the first n - 1
        for (x = 0, xx = 0; x < blocks.dims[1] - 1; x++, xx += BSZ) {
            blocks_spn[y][x] = A.submat(xx, yy, BSZ, ybsz);
        }
        //Do the last one
        int xbsz = A.dims[1] - xx;
        assert(xbsz > 0);
        assert(xbsz <= BSZ);
        blocks_spn[y][x] = A.submat(xx, yy, xbsz, ybsz);
    }

    return blocks;
}

//Special overload for doing tiling matrix multiplications
template<int LHS_rank, int RHS_rank, typename T>
std::enable_if_t<(LHS_rank == 2) && (RHS_rank == 2),
void> tensormul(
    TSpan<LHS_rank, T> const& A, 
    TSpan<RHS_rank, T> const& B,
    TSpan<2, T> dest
) {
	if (
		A.dims[0] <= BSZ ||
		B.dims[0] <= BSZ ||
		B.dims[1] <= BSZ
	) {
		for (int i = 0; i < A.dims[0]; i++) {
			tensormul(A[i], B, dest[i]);
		}
	} else {
		//copy in the block matmul
        assert(A.dims[1] == B.dims[0]);
        assert(dest.dims[0] == A.dims[0]);
        assert(dest.dims[1] == B.dims[1]);

        //Start by creating a matrix of blocks (where each block is itself 
        //a matrix of size bsz*bsz) for the inputs and the output

        Tensor<TSpan<2,T>> lhs_blocks = tilize(A);
        Tensor<TSpan<2,T>> rhs_blocks = tilize(B);
        Tensor<TSpan<2,T>> res_blocks = tilize(dest);

        auto lhs_blocks_spn = lhs_blocks.template as_tspan<2>();
        auto rhs_blocks_spn = rhs_blocks.template as_tspan<2>();
        auto res_blocks_spn = res_blocks.template as_tspan<2>();

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
}

template<int LHS_rank, int RHS_rank, typename T>
Tensor<T> tensormul(
    TSpan<LHS_rank, T> const& A, 
    TSpan<RHS_rank, T> const& B)
{
    static_assert(LHS_rank >= 1, "LHS must have positive rank");
    static_assert(RHS_rank >= 1, "RHS must have positive rank");

    int constexpr ret_rank = LHS_rank + RHS_rank - 2;

    int ret_dims[ret_rank];
    int pos = 0;
    for (int i = 0; i < LHS_rank - 1; i++) {
        ret_dims[pos++] = A.dims[i];
    }
    for (int i = 1; i < RHS_rank; i++) {
        ret_dims[pos++] = B.dims[i];
    }

    Tensor<T> ret(ret_dims, ret_rank);

    if (A.dims[LHS_rank - 1] != B.dims[0]) {
        std::string msg = "Inner dimensions must agree. LHS dims = ";
        std::string delim = "[";
        for (int i = 0; i < LHS_rank; i++) {
            msg += delim + std::to_string(A.dims[i]);
            delim = ",";
        }

        delim = "], RHS dims = [";
        for (int i = 0; i < RHS_rank; i++) {
            msg += delim + std::to_string(B.dims[i]);
            delim = ",";
        }
        throw std::runtime_error(msg + "]");
    }

    tensormul(A, B, TSpan<ret_rank, T>(ret));

    return ret;
}

//This specifically does NOT just directly index the underlying
//data pointer in the TSpan. This has to support proper striding
template <int rank, typename fn, typename T>
std::enable_if_t<rank == 1,
void> tensorunary(TSpan<rank, T> const t, TSpan<rank, T> dest, fn F) {
	assert(t.dims[0] == dest.dims[0]);
	for (int i = 0; i < t.dims[0]; i++)
		dest[i] = F(t[i]);
}

template <int rank, typename fn, typename T>
std::enable_if_t<(rank > 1),
void> tensorunary(TSpan<rank, T> const t, TSpan<rank, T> dest, fn F) {
	assert(t.dims[0] == dest.dims[0]);
	for (int i = 0; i < t.dims[0]; i++)
		tensorunary<rank - 1, fn, T>(t[i], dest[i], F);
}

//The dest TSpan can safely alias either (or both) of the 
//inputs
template <int rank, typename fn, typename T>
std::enable_if_t<rank == 1, 
void> tensoreltwise(TSpan<rank,T> const lhs, TSpan<rank,T> const rhs, TSpan<rank,T> dest, fn F) {
	assert(lhs.dims[0] == rhs.dims[0]);
	assert(lhs.dims[0] == dest.dims[0]);
	for (int i = 0; i < lhs.dims[0]; i++) {
		dest[i] = F(lhs[i], rhs[i]);
	}
}

template <int rank, typename fn, typename T>
std::enable_if_t<(rank > 1), 
void> tensoreltwise(TSpan<rank,T> const lhs, TSpan<rank,T> const rhs, TSpan<rank,T> dest, fn F) {
	assert(lhs.dims[0] == rhs.dims[0]);
	assert(lhs.dims[0] == dest.dims[0]);
	for (int i = 0; i < lhs.dims[0]; i++) {
        auto dest_i = dest[i];
		tensoreltwise<rank - 1, fn, T>(lhs[i], rhs[i], dest_i, F);
	}
}

template <typename fn, typename T>
void tensoreltwise(RTSpan<T> const lhs, RTSpan<T> const rhs, RTSpan<T> dest, fn F) {
	assert(lhs.rank == rhs.rank);
	assert(lhs.rank > 0); //Are we allowed to have rank 0?
	assert(lhs.dims[0] == rhs.dims[0]);
	assert(lhs.dims[0] == dest.dims[0]);

	if (lhs.rank == 1) {
		//Base case 
		for (int i = 0; i < lhs.dims[0]; i++) {
			*dest[i] = F(*lhs[i], *rhs[i]);
		}
	} else {
		for (int i = 0; i < lhs.dims[0]; i++) {
			tensoreltwise(lhs[i], rhs[i], dest[i], F);
		}
	}
}

template <int rank, typename T>
void tensorplus(TSpan<rank,T> const lhs, TSpan<rank,T> const rhs, TSpan<rank,T> dest) {
	tensoreltwise(lhs, rhs, dest, std::plus<T>{});
}

template <typename T>
void tensorplus(RTSpan<T> const lhs, RTSpan<T> const rhs, RTSpan<T> dest) {
	tensoreltwise(lhs, rhs, dest, std::plus<T>{});
}

template <int rank, typename T>
void tensorprod(TSpan<rank,T> const lhs, TSpan<rank,T> const rhs, TSpan<rank,T> dest) {
	tensoreltwise(lhs, rhs, dest, std::multiplies<T>{});
}

template <int rank, typename T>
void tensorprod(RTSpan<T> const lhs, RTSpan<T> const rhs, RTSpan<T> dest) {
	tensoreltwise(lhs, rhs, dest, std::multiplies<T>{});
}

template <int rank, typename T>
Tensor<T> operator+(TSpan<rank,T> const lhs, TSpan<rank,T> const rhs) {
	assert(std::equal(lhs.dims,lhs.dims+rank,rhs.dims));

	Tensor<T> ret(lhs.dims, rank);
	tensorplus(lhs, rhs, ret.template as_tspan<rank>());
	return ret;
}

//This is pretty rudimentary, but it's enough to do some interesting
//things.
template <int rank, typename T>
TSpan<rank, T> broadcast_scalar_to(T *scalar, TSpan<rank, T> const &ref_sz) {
	int *new_dims = new int[rank];
	std::copy(ref_sz.dims, ref_sz.dims+rank, new_dims);
	int *new_strides = new int[rank];
	for (int i = 0; i < rank; i++) new_strides[i] = 0;

	return TSpan<rank,T>(
		scalar, new_dims, new_strides, 
		new RCTSpanData(new_dims, new_strides)
	);
}

#endif