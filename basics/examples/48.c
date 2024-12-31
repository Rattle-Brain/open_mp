#include <omp.h>
#include <stdio.h>
int main(){
	int i;
	#pragma omp parallel private(i)
	#pragma omp for schedule(dynamic,1)
	for(i=0;i<10;i++)
		printf("(%d,%d,%d)\n",omp_get_thread_num(),omp_get_num_threads(),i);
	return 0;
}
