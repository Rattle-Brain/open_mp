#include <omp.h>
#include <stdio.h>
int main(){
	int yo,i;
	#pragma omp parallel private(yo,i) num_threads(4)
	{
	yo=omp_get_thread_num();
	#pragma omp for
	for(i=0;i<4;i++)
		printf("%d en orden con i %d\n",yo,i);
	}
	return 0;
}
