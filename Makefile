main: *.cpp *.h mnist/load_mnist.cpp
	clang++ -DNDEBUG -o main -std=c++17 -O3 -Wall *.cpp mnist/load_mnist.cpp

debug: *.cpp *.h mnist/load_mnist.cpp
	clang++ -DENABLE_DEBUG -g -o main -std=c++17 -Wall *.cpp mnist/load_mnist.cpp


prof: *.cpp *.h mnist/load_mnist.cpp
	clang++ -pg -o main -std=c++17 -O3 -Wall *.cpp mnist/load_mnist.cpp

test: tests/*.cpp *.cpp *.h
	clang++ -std=c++17 -o test -g -Wall tests/tensor_test.cpp $(ls *.cpp | grep -v "main.cpp")

clean:
	rm -rf main 
	rm -rf test