#include <iostream>
#include <sys/times.h>
#include <unistd.h>
#include <iomanip>

#define ll long long

double GregoryLeibniz(ll N){
	double sum = 0;
	double prev = 1;
	for (ll n = 0; n < N; ++n){
		prev *= (2*(n-1) + 1);
		prev /= (2*n + 1);
		prev *= -1;
		sum += 4*prev;
	}
	return sum;
}

int main(int argc, char* argv[]){
	if (argc <= 1) return 0;

	ll N = std::stoll(argv[1]);

	tms start, end;
	ll clocks_per_sec = sysconf(_SC_CLK_TCK);
	ll clocks;

	times(&start);
	double approx_pi = GregoryLeibniz(N);
	times(&end);

	std::cout << std::fixed << std::setprecision(10) << approx_pi << "\n";

	clocks = end.tms_utime - start.tms_utime;
	std::cout << "Time taken: " << std::setprecision(2) << (double)clocks / clocks_per_sec << "\n";
	return 0;
}
