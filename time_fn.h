#include <chrono>
#include <iostream>

template <typename fn, typename... T>
void time_fn(int iterations, fn F, T... args) {
    auto tic = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < iterations; i++) F(args...);
    auto toc = std::chrono::high_resolution_clock::now();

    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(toc-tic).count();

    std::cout << iterations << " iterations in " << duration << " ms" << std::endl;
}