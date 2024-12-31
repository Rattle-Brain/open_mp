#include <omp.h>
#include <stdio.h>
int main () {
	int nth, tid;
	omp_set_num_threads(2);
	#pragma omp parallel private(nth, tid)
	{
	#ifdef _OPENMP
	tid =omp_get_thread_num();
	nth =omp_get_num_threads();
	#endif
	printf("Soy %d de %d hilos\n", tid, nth);
	}
}
