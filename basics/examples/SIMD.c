#include <omp.h>
#include <stdio.h>
#include <sys/time.h>

struct timeval stop, start;

#pragma omp declare simd uniform(fact)
double add1(double a, double b, double fact){
	double c;
	c = a + b + fact;
	return c;
}

#pragma omp declare simd uniform(a,b,fact) linear(i:1)
double add2(double*a, double*b, int i, double fact){
	double c;
	c = a[i] + b[i] + fact;
	return c;
}
#pragma omp declare simd uniform(fact) linear(a,b:1)
double add3(double*a, double*b, double fact){
	double c;
	c =*a +*b + fact;
	return c;
}

void work( double*a, double*b, int n ){
	int i;
	double tmp;
	#pragma omp simd private(tmp) safelen(32)
	for ( i = 0; i < n; i++ ) {
		tmp  = add1( a[i],  b[i], 1.0);
		a[i] = add2( a, b, i, 1.0) + tmp;
		a[i] = add3(&a[i], &b[i], 1.0);
	}
}

int main(){
	int i;
	const int N=100000;
	double a[N], b[N];

	for ( i=0; i<N; i++ ) {
		a[i] = i; 
		b[i] = N-i;
	}
	gettimeofday(&start, NULL);
	double tmp;
        for ( i = 0; i < N; i++ ) {
                tmp  = a[i]+b[i]+1.0;
                a[i] = a[i]+b[i]+1.0 + tmp;
                a[i] = a[i]+b[i]+1.0;
        }

	gettimeofday(&stop, NULL);
	printf("RAW took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	gettimeofday(&start, NULL);
	work(a, b, N );
	gettimeofday(&stop, NULL);
        printf("SIMD took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);
	return 0;
}
