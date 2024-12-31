#include <omp.h>
#include <stdio.h>

int main(){
	#pragma omp parallel
	#pragma omp sections nowait
	{
		printf("Hola desde %d\n",omp_get_thread_num());
		#pragma omp section
		printf("¿Qué tal desde %d?\n",omp_get_thread_num());
		#pragma omp section
		printf("Regular desde %d?\n",omp_get_thread_num());
	}
	return 0;
}
