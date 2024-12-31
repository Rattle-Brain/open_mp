#include <omp.h>
#include <stdio.h>
#include <unistd.h>
int main(){
	int yo;
	#pragma omp parallel private(yo)
	{
		yo=omp_get_thread_num();
		#pragma omp critical
		{
			printf("Soy %d al inicio de la seccion critica\n",yo);
			sleep(1);
			printf("Soy %d al final de la seccion critica\n",yo);
		}
	}
	
	return 0;
}
