#include <omp.h>
#include <stdio.h>
void foo3(){
	int x=2;
	#pragma omp task
	x++;
	#pragma omp taskwait
	printf("En foo3 la x vale %d\n",x);
}

void foo2(){
	int x=2;
	#pragma omp task shared(x)
	x++;
	//#pragma omp taskwait
	printf("En foo2 la x vale %d\n",x);}

int main(int argc,char*argv[]){
	foo2();
	foo3();
	return 0;
}
