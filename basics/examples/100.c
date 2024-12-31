#include <omp.h>
#include <stdio.h>

int x=-69;
#pragma omp threadprivate(x)
int main(){
	int yo;
	int x=-99;
	#pragma omp parallel private(yo)

	{
		yo=omp_get_thread_num();
		printf("%d antes x vale %d\n",yo,x);
		x=yo;
		printf("%d actualiza x a %d\n",yo,x);
	}
	printf("La x al final vale %d\n",x);
	return 0;
}
