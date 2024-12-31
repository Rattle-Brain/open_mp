#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

int comp_fib_numbers(int n){
	int a,b;
	if(n<2) return n;
	else{
		#pragma omp task shared(a) untied
		a=comp_fib_numbers(n-1);
		#pragma omp task shared(b) untied
		b=comp_fib_numbers(n-2);
		#pragma omp taskwait
		return a+b;
	}
}

int main(int argc,char* argv[]){
	int result,N;
	N=atoi(argv[1]);
	#pragma omp parallel
		#pragma omp single nowait
		result=comp_fib_numbers(N);

	printf("fibo(%d)=%d\n",N,result);
	return 0;
}
