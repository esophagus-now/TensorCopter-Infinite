#include <vector>
#include <utility> //pair 
#include <string>

using tpair = std::pair<std::vector<float>, std::vector<float> >;

std::vector<tpair> load_mnist_training(std::string const& base = ".");

std::vector<tpair> load_mnist_testing(std::string const& base = ".");