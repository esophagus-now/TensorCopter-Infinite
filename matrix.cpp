#include <algorithm>
#include <vector>
#include <iostream>
#include <assert.h>

template <typename T>
class Matrix;

template <typename T>
class Span {
    friend class Matrix<T>;
    T *base;
    int stride;
    int len;

    //vector<T> mystuff;
    //bool do_i_own_my_stuff;
// protected:
    Span(T *base, int stride, int len) :
        base(base), stride(stride), len(len) {}

public:
    T& operator[](int ind) {
        #ifdef DEBUG
        assert(0 <= ind && ind < len);
        #endif
        return *(base + ind*stride);
    }
};

template <typename T>
class Matrix {
    std::vector<T> base;
    int r, c;

public:
    Matrix(int r, int c) : r(r), c(c) {
        #ifdef DEBUG
        #endif
        base = std::vector<T>(r*c, 0.0);
    }

    Span<T> operator[](int row) {
        #ifdef DEBUG
        assert(0 <= row && row < r);
        #endif
        return Span<T>(base.data() + row*c, 1, c);
    }

    Span<T> col(int column) {
        #ifdef DEBUG
        assert(0 <= column && column < c);
        #endif
        return Span<T>(base.data() + column, c, r);
    }

    Span<T> diag() {
        return Span<T>(base.data(), c + 1, std::min(r,c));
    }
    
    template <typename S>
    friend std::ostream& operator<<(std::ostream&, Matrix<S> &);
};

template <typename T>
std::ostream& operator<<(std::ostream& o, Matrix<T>& M) {
    o << "{";
    auto delim = "";
    for (int i; i < M.r; i++) {
        for (int j = 0; j < M.c; j++) {
            o << delim << M[i][j];
            delim = ", ";
        }
        delim = "\n";
    }

    return o << delim << "}";
}

// int main() {
//     auto m = Matrix<float>(8,7);

//     for (int i = 0; i < 8; i++) {
//         for (int j = 0; j < 7; j++) {
//             m[i][j] = i*7 + j;
//         }
//     }

//     for (int i = 0; i < 8; i++) {
//         for (int j = 0; j < 7; j++) {
//             std::cout << m[i][j] << " ";
//         }
//         std::cout << std::endl;
//     }

//     std::cout << m << std::endl;
//     return 0;
// }
