#include <stdio.h>
#include <cblas.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#define N 2048
#define M 10

float* generateMatrix(){
	float *matrix = (float*)aligned_alloc(32, sizeof(float) * (N*N));
	return matrix;
}

void printMatrix(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			printf("%.6f ", matrix[i*N+j]);
		}
		printf("\n");
	}
	printf("\n");
}

void fillMatrixByRandomNumbers(float matrix[N*N]){
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			matrix[i*N + j] = (float)rand() / rand();
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

double getTimeDelta(struct timespec start, struct timespec end){
    return (end.tv_sec - start.tv_sec) + 0.000000001*(end.tv_nsec - start.tv_nsec);
}

int main(){
	struct timespec start, end;

	float* A = generateMatrix();
	float* Z = generateMatrix();
	float* B = generateMatrix();
	float* R = generateMatrix();
	float* I = generateMatrix();
	float* Rr = generateMatrix();
	float* Rrc = generateMatrix();
	float* Av = generateMatrix();

	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			A[i*N + j] = (float)rand() / rand();
			B[j*N + i] = (float)rand() / rand();
		}
	}


	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			I[i*N + j] = 0;
			R[i*N + j] = 0;
			Rr[i*N + j] = 0;
			if (i == j){
				I[i*N + j] = 1;
				R[i*N + j] = 1;
				Rr[i*N + j] = 1;
			}
		}
	}

	clock_gettime(CLOCK_MONOTONIC_RAW, &start);
	float Ai = findMaxRowSum(A);
	float Aj = findMaxColSum(A);

	// B <- B/(Ai*Aj) = A^T/(Ai*Aj)
	cblas_sgemm(
		CblasRowMajor,CblasNoTrans,CblasNoTrans,
		N, N, N,
		0.0, Z, N, Z, N,
		1.0/(Ai*Aj), B, N
	);

	cblas_sgemm(
		CblasColMajor,CblasNoTrans,CblasNoTrans,
		N, N, N,
		-1.0, B, N, A, N,
		1.0, R, N
	);
	
	for (int i = 1; i < M; ++i){
		memcpy(Rrc, Rr, sizeof(float)*N*N);
		cblas_sgemm(
			CblasRowMajor,CblasNoTrans,CblasNoTrans,
			N, N, N,
			1.0, Rrc, N, R, N,
			0.0, Rr, N
		);
		
		cblas_sgemm(
			CblasRowMajor,CblasNoTrans,CblasNoTrans,
			N, N, N,
			1.0, I, N, I, N,
			1.0, Rr, N
		);
	}

	cblas_sgemm(
		CblasRowMajor,CblasNoTrans,CblasNoTrans,
		N, N, N,
		1.0, Rr, N, B, N,
		0.0, Av, N
	);

	clock_gettime(CLOCK_MONOTONIC_RAW, &end);
	
	double time = getTimeDelta(start, end);
	printf("BLAS-optimized program took %.6lfs. to compute inversed matrix\n", time);

	free(A);
	free(Z);
	free(B);
	free(R);
	free(I);
	free(Rr);
	free(Rrc);
	free(Av);
	
	return 0;
}