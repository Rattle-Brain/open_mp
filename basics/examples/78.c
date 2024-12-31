#include <stdio.h>
#include <omp.h>

int main(){
	int x=100;
	printf("La x vale %d\n",x);
	#pragma omp parallel
	#pragma omp single
	{
		#pragma omp task depend(in:x)
		x+=1;
		#pragma omp task depend(out:x)
		x*=2;
	}
	printf("Y ahora vale %d\n",x);
	return 0;
}
