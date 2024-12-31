#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#include <sys/time.h>

struct timeval stop, start;
int main(){
	int i,j,k;
	unsigned int N=100000000;

	double *a= (double*)malloc(N * sizeof(double));;
	gettimeofday(&start, NULL);
	for(i=0;i<N;i++)
		a[i]=i*0.5;
	gettimeofday(&stop, NULL);
	printf("Seq took \t%lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 


	gettimeofday(&start, NULL);
	#pragma omp parallel num_threads(20)
		#pragma omp single
			#pragma omp taskloop num_tasks(20)
			for(i=0;i<N;i++)
				a[i]=i*0.5;
			gettimeofday(&stop, NULL);
	printf("taskloop took \t%lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 

	gettimeofday(&start, NULL);
	#pragma omp parallel for num_threads(20)
	for(i=0;i<N;i++)
		a[i]=i*0.5;
	gettimeofday(&stop, NULL);
	printf("par for took \t%lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 
	free(a);
	return 0;
}
