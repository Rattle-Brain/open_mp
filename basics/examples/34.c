#include <omp.h>
#include <stdio.h>
int main () {
	int th=5;
	int nth, tid;
	omp_set_num_threads(2);
	#pragma omp parallel private(nth, tid) num_threads(th)
	{
	#ifdef _OPENMP
	tid =omp_get_thread_num();
	nth =omp_get_num_threads();
	#endif
	printf("Soy %d de %d hilos\n", tid, nth);
	}
}
