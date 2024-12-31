#include <omp.h>
#include <stdio.h>

#include <sys/time.h>

struct timeval stop, start;

#pragma omp declare simd
double square( double x )
{
    return x * x;
}
double squareO( double x )
{
    return x * x;
}

int main(){
	int i,j;
	const int N=100000;
	double a[N], b[N], c[N];

	for ( i=0; i<N; i++ ) {
		a[i] = i; 
		b[i] = N-i;
		c[i]=a[i]+b[i];
	}
	gettimeofday(&start, NULL);
	for(i=0;i<N;i++)
		a[i]+=b[i]*c[i];
	gettimeofday(&stop, NULL);
	printf("RAW took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	
	gettimeofday(&start, NULL);
	#pragma omp simd
	for(i=0;i<N;i++)
		a[i]+=b[i]*c[i];
	gettimeofday(&stop, NULL);
	printf("SIMD took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	
	gettimeofday(&start, NULL);
	#pragma omp simd aligned(a,b,c:32)
	for(i=0;i<N;i++)
		a[i]+=b[i]*c[i];
	gettimeofday(&stop, NULL);
	printf("SIMD32 took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	
	gettimeofday(&start, NULL);
	for(j=0;j<1000;j++){
	for (i=0; i<N; ++i)
	{
	    c[i] = squareO(a[i]);
	}
	}
	gettimeofday(&stop, NULL);
	printf("RAW sqrt took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	gettimeofday(&start, NULL);
	for(j=0;j<1000;j++){
	#pragma omp simd
	for (i=0; i<N; ++i)
	{
	    c[i] = square(a[i]);
	}
	}
	gettimeofday(&stop, NULL);
	printf("SIMD sqrt took %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 

	
	return 0;
}
