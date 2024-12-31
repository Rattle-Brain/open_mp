#include <omp.h>
#include <stdio.h>
int main () {
	int nth, tid;
	#pragma omp parallel private(nth, tid)
	{
	#ifdef _OPENMP
	tid =omp_get_thread_num();
	nth =omp_get_num_threads();
	#endif
	printf("Soy %d de %d hilos\n", tid, nth);
	}
}
