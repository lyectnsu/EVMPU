// Compilation command 
// g++ -O1 -std=c++11 prog.cpp -o a.out

#include <iostream>
#include <fstream>
#include <x86intrin.h>

#include "effolkroniumRandom.h"

#define ull unsigned long long

#define K 100
#define Nmin 1000
#define Nmax 1100000

using Random = effolkronium::random_static;

void fillArrayDirect(int N, int array[]){
    for (int i = 0; i < N; ++i){
        array[i] = (i+1)%N;
    }
}

void fillArrayReverse(int N, int array[]){
    for (int i = 0; i < N; ++i){
        array[i] = (i+N-1)%N;
    }
}

void fillArrayRandom(int N, int items[]){
	for (int i = 0; i < N; ++i){
		items[i] = i;
	}
    int i = N;
    int j;
    while (i > 1){
        i -= 1;
        j = Random::get(0, i-1);
        std::swap(items[j], items[i]);
    }
}

void printArray(int N, int array[]){
    std::cout << "[";
    for (int i=0; i < N; ++i){
        std::cout << array[i];
        if (i != N - 1){
            std::cout << ", ";
        }
    }
    std::cout << "]\n";
}

void boost(){
	int matrixSize = 100;
	int* A = new int[matrixSize * matrixSize];
	int* B = new int[matrixSize * matrixSize];
	int* C = new int[matrixSize * matrixSize];

	for (int i = 0; i < matrixSize * matrixSize; ++i){
		A[i] = Random::get(0, 100);
		B[i] = Random::get(0, 100);
		C[i] = 0;
	}
	for (int i = 0; i < matrixSize; ++i){
		for (int j = 0; j < matrixSize; ++j){
			for (int k = 0; k < matrixSize; ++k){
				C[i*matrixSize+k] += A[i*matrixSize+j] * B[j*matrixSize+k];
			}
		}
	}

	delete [] A;
	delete [] B;
	delete [] C;
}

ull test(int N, int* array){
	ull start, end;
	int k, i;

	boost();

	// warm up the cache
	k = 0;
	for (i = 0; i < N*K; i++) k = array[k];
	if (k == 12345) std::cout << "\n";

	k = 0;
	start = __rdtsc();
	for (i = 0; i < N*K; i++) k = array[k];
	end = __rdtsc();
	if (k == 12345) std::cout << "\n";

	return end - start;

}

ull testDirectBypass(int N){
	int* array = new int[N];
	fillArrayDirect(N, array);

	auto x = test(N, array);

	delete [] array;
	
	return x;
}

ull testReverseBypass(int N){
	int* array = new int[N];
	fillArrayReverse(N, array);

	auto x = test(N, array);

	delete [] array;
	
	return x;
}

ull testRandomBypass(int N){
	int* array = new int[N];
	fillArrayRandom(N, array);

	auto x = test(N, array);

	delete [] array;
	
	return x;
}

int main(){

	std::ofstream out("data.csv");
	out << "N;Direct;Reverse;Random\n";

	int N = Nmin;
	
	double multiplier = 1.05;

	while (N < Nmax){
		auto direct = testDirectBypass(N);
		auto reverse = testReverseBypass(N);
		auto random = testRandomBypass(N);

		out << N << ";";
		out << direct / (N * K) << ";";
		out << reverse / (N * K) << ";";
		out << random / (N * K) << "\n";

		N = (int)(N * multiplier);
	}

	out.close();

    return 0;
}