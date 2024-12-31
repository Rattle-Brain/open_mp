#include <stdio.h>
void foo3(){
	int x=2;
	#pragma omp task
	x++;
	#pragma omp taskwait //irrelevante, porque no se va a actualizar en ningún caso
	printf("En foo3 la x vale %d\n",x);
}

int main(int argc,char*argv[]){
	foo3();
	return 0;
}
