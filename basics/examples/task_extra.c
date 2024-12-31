#include <stdio.h>
#include <omp.h>
int main()
{
   int i=1,  ii=4;
// Note 1: i, j, k, A, B, C are firstprivate by default
#pragma omp parallel
{//jugar con firstprivate, private, shared...
#pragma omp task private(ii)
{    printf("hilo:%d i=%d,ii=%d\n",omp_get_thread_num(),i,ii);
	i++,ii++;
	printf("++->Hilo:%d, i=%d,ii=%d\n",omp_get_thread_num(),i,ii);
}
}
printf("FINAL->Hilo:%d, i=%d,ii=%d\n",omp_get_thread_num(),i,ii);
 
}

