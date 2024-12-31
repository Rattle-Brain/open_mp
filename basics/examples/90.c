#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

int main(){
	int i,j,k;

	unsigned int N=100000000;

	double *a= (double*)malloc(N * sizeof(double));;
	double start=0.0,end=0.0;
	start=omp_get_wtime();
	for(i=0;i<N;i++)
		a[i]=i*0.5;
	end=omp_get_wtime();
	printf("Tiempo transcurrido %3.5E segundos\n",end-start);


	start=omp_get_wtime();
	#pragma omp parallel num_threads(20)
	#pragma omp single
	#pragma omp taskloop num_tasks(20)
	for(i=0;i<N;i++)
		a[i]=i*0.5;
	end=omp_get_wtime();
	printf("Taskloop Tiempo transcurrido %3.5E segundos\n",end-start); 

	start=omp_get_wtime();
	#pragma omp parallel for num_threads(20)
	for(i=0;i<N;i++)
		a[i]=i*0.5;
	end=omp_get_wtime();
	printf("For Tiempo transcurrido %3.5E segundos\n",end-start);
	free(a);
	return 0;
}
