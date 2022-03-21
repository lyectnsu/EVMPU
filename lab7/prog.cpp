#include <iostream>
#include <x86intrin.h>
#include <fstream>

#define N 768432
#define BSi sizeof(int)/sizeof(int) // size of block of integers
#define ull unsigned long long
#define K 100

void fillNumOfBlocks(int numOfBlocks[N]){
	for(int i = 0; i < N; ++i){
		numOfBlocks[i] = i + 1;
	}
}

int* generateArray(int arraySize){
	int* array = (int*)malloc(arraySize * sizeof(int));

	for (int i = 0; i < arraySize; ++i){
		array[i] = i + BSi;
		if (i + BSi >= arraySize){
			array[i] %= arraySize;
			array[i] += 1;
		}
	}

	return array;
}

void boost(){
	int matrixSize = 100;
	int* A = new int[matrixSize * matrixSize];
	int* B = new int[matrixSize * matrixSize];
	int* C = new int[matrixSize * matrixSize];

	for (int i = 0; i < matrixSize * matrixSize; ++i){
		A[i] = rand();
		B[i] = rand();
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

ull testCacheAssociativity(int arraySize, int* array){
	ull start, end;
	int k;
	boost();

	k = 0;
	for (int i = 0; i < arraySize * K; ++i){
		k = array[k];
	}
	if (k == -1){
		std::cout << "Wow!";
	}

	k = 0;
	start = __rdtsc();
	for (int i = 0; i < arraySize * K; ++i){
		k = array[k];
	}
	end = __rdtsc();
	if (k == -1){
		std::cout << "Wow!";
	}
	return end - start;
}

int main(){

	std::ofstream fout("data.csv");

	int numOfBlocks[N];
	fillNumOfBlocks(numOfBlocks);

	for (int i = 0; i < N; ++i){
		int arraySize = BSi * numOfBlocks[i];
		int* array = generateArray(arraySize);
		ull res = testCacheAssociativity(arraySize, array);
		fout << i << ";" << ((double)res / arraySize) / K << "\n";
		if (i % 1024 == 0) std::cout << i / 1024 + 1 << "/" << 768 << "\n";
		//std::cout << i + 1 << "/" << N << "\n";
		delete [] array;
	}
	fout.close();

	return 0;
}