#include <omp.h>
#include <stdio.h>

int main(){
	int yo,i,x=-99;
	#pragma omp parallel private(yo,i) num_threads(4)
	{
		yo=omp_get_thread_num();
		printf("%d antes con x= %d\n",yo,x);
		#pragma omp for lastprivate(x)
		for(i=0;i<8;i++){
			x=yo*i;
			printf("%d con i %d modifica x a %d\n",yo,i,x);
		}
		printf("%d tras for,x vale %d\n",yo,x);
	}
	printf("La x al final vale %d\n",x);
	return 0;
}
