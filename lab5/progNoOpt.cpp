#include <iostream>
#include <time.h> 

#define N 2048
#define M 10

float* generateMatrix(){
	float *matrix = (float*)aligned_alloc(32, sizeof(float) * (N*N));
	return matrix;
}

void printMatrix(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			std::cout << matrix[i*N+j] << " ";
		}
		std::cout << "\n";
	}
	std::cout << "\n";
}

void fillMatrixByZeros(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			matrix[i*N+j] = 0.0;
		}
	}
}

void fillMatrixAsUnit(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			if (i == j){
				matrix[i*N + j] = 1;
				continue;
			}
			matrix[i*N + j] = 0;
		}
	}
}

void fillMatrixByRandomNumbers(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			matrix[i*N + j] = (float)rand()/rand();
		}
	}
}

float findMaxColSum(float A[N*N]){
	float curColSum;
	float maxColSum = -1;
	for (int j = 0; j < N; ++j){
		curColSum = 0;
		for (int i = 0; i < N; ++i){
			curColSum += ((A[i*N + j] < 0) ? -A[i*N + j] : A[i*N + j]);
		}
		if (maxColSum < curColSum){
			maxColSum = curColSum;
		}
	}
	return maxColSum;
}

float findMaxRowSum(float A[N*N]){
	float curRowSum;
	float maxRowSum = -1;
	for (int i = 0; i < N; ++i){
		curRowSum = 0;
		for (int j = 0; j < N; ++j){
			curRowSum += ((A[i*N + j] < 0) ? -A[i*N + j] : A[i*N + j]);
		}
		if (maxRowSum < curRowSum){
			maxRowSum = curRowSum;
		}
	}
	return maxRowSum;
}

void transpose(float src[N*N], float dest[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			dest[i*N + j] = src[j*N + i];
		}
	}
}

void divideMatrixByScalar(float matrix[N*N], float scalar){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			matrix[i*N+j] /= scalar;
		}
	}
}

void multiplyMatrices(float lMatrix[N*N], float rMatrix[N*N], float res[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			for (int k = 0; k < N; ++k){
				res[i*N+k] += lMatrix[i*N+j]*rMatrix[j*N+k];
			}
		}
	}
}

void subtractMatrices(float lMatrix[N*N], float rMatrix[N*N], float res[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			res[i*N+j] = lMatrix[i*N+j] - rMatrix[i*N+j];
		}
	}
}

void addMatrices(float lMatrix[N*N], float rMatrix[N*N], float res[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			res[i*N+j] = lMatrix[i*N+j] + rMatrix[i*N+j];
		}
	}
}

void copyMatrix(float src[N*N], float dest[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			dest[i*N+j] = src[i*N+j];
		}
	}
}

double getTimeDelta(timespec &start, timespec &end){
    return (end.tv_sec - start.tv_sec) + 0.000000001*(end.tv_nsec - start.tv_nsec);
}

void findInverse(float A[N*N], float Av[N*N]){
    float *B  = generateMatrix();
    float *BA = generateMatrix();
    float *I  = generateMatrix();
    float *R  = generateMatrix();
    float *Rn = generateMatrix();
    float *Rt = generateMatrix();
    float *Rr = generateMatrix();

    fillMatrixAsUnit(I);
    fillMatrixAsUnit(Rn);
    fillMatrixAsUnit(Rr);
	
	
    float Ai = findMaxRowSum(A);
    float Aj = findMaxColSum(A);
    // B = A^T
	transpose(A, B);
	// B = B / (Ai*Aj) = A^T / (Ai*Aj);
    divideMatrixByScalar(B, Ai*Aj);
    // BA = B*A
    multiplyMatrices(B, A, BA);
    // R = I - BA = I - B*A
    subtractMatrices(I, BA, R);

    // Rr = (I + R + R^2 + ... + R^{m-1})
    for (int i = 1; i < M; ++i){
    	multiplyMatrices(Rn, R, Rt);
    	addMatrices(Rr, Rt, Rr);
    	copyMatrix(Rt, Rn);
    	
    }
    // Ai = Rr*B = (I + R + R^2 + ... + R^{m-1})*B
    multiplyMatrices(Rr, B, Av);

    free(B);
    free(BA);
    free(I);
    free(R);
    free(Rn);
    free(Rt);
    free(Rr);
}

int main(){	
	timespec start, end;

    float *A  = generateMatrix();
    float *Av = generateMatrix();

    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    findInverse(A, Av);
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);

    double time = getTimeDelta(start, end);

    std::cout << "Non-optimized program took " << time << "s. to compute inversed matrix\n";

    free(A);
    free(Av);

	return 0;
}