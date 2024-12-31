#include <omp.h>
#include <stdio.h>

int main(){
	int yo,x=0;
	#pragma omp parallel private(yo)
	{
		yo=omp_get_thread_num();
		printf("Soy %d antes flush x vale %d\n",yo,x);
		#pragma omp master
		{
			x=99;
			#pragma omp flush(x)
			printf("Master actualizo x a 99\n");
		}
		while(x==0){
			#pragma omp flush(x)
		}
		printf("Soy %d after flush x vale %d\n",yo,x);
	}
	return 0;
}
