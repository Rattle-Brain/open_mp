#include <omp.h>
#include <stdio.h>

int main(){
	int yo;
	#pragma omp parallel private(yo)
	{
	yo=omp_get_thread_num();
	#pragma omp single //copyprivate(yo) nowait
	printf("Soy %d actuando en solitario dentro de single\n",yo);

	printf("Hilo %d y yo=%d\n",omp_get_thread_num(),yo);
	}
	return 0;
}
