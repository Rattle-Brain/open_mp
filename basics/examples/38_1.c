#include <omp.h>
#include <stdio.h>
int main(){
	int c=98;
	#pragma omp parallel private(c)
	{
	printf("c:%d\n",c);
	}
	return 0;
}
