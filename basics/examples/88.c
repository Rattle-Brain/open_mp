#include <omp.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <stdlib.h>

struct timeval stop, start;


int main(){
	double max=1.0,min=1.0;
	int n=1000000;
	double *a=(double*)malloc(n*sizeof(double));
	int i;
	for(i=0;i<n;i++)
		a[i]=2*i;
	gettimeofday(&start, NULL);
	#pragma omp parallel for num_threads(4)
	for(i=0;i<n;i++){
			#pragma omp critical
			if(a[i]>=max) max=a[i];


			#pragma omp critical
			if(a[i]<=min) min=a[i];

	}
	gettimeofday(&stop, NULL);
	printf("Sin ifs externos          tarda %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);
	gettimeofday(&start, NULL);
	#pragma omp parallel for num_threads(4)
	for(i=0;i<n;i++){
		if(a[i]>=max){
			#pragma omp critical
			if(a[i]>=max) max=a[i];
		}
		if(a[i]<=min){
			#pragma omp critical
			if(a[i]<=min) min=a[i];
		}
	}
	gettimeofday(&stop, NULL);
	printf("Con ifs externos (-espec) tarda %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);
	gettimeofday(&start, NULL);
	#pragma omp parallel for num_threads(4)
	for(i=0;i<n;i++){
		if(a[i]>=max){
			#pragma omp critical(maximo)
			if(a[i]>=max) max=a[i];
		}
		if(a[i]<=min){
			#pragma omp critical(minimo)
			if(a[i]<=min) min=a[i];
		}
	}
	gettimeofday(&stop, NULL);
	printf("Con ifs externos (+espec) tarda %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);

	printf("max=%f y min=%f\n",max,min);
	free(a);
	return 0;
}
