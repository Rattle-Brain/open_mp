#include <omp.h>
#include <stdio.h>
int main(){
	int i,j,k;
	#pragma omp parallel num_threads(4)
	#pragma omp for private(j,k) collapse(2)
	for(i=0;i<2;i++)
		for(j=0;j<3;j++)
			for(k=1;k<2;k++)
				printf("%d con (i,j,k)=(%d,%d,%d)\n",omp_get_thread_num(),i,j,k);
	return 0;
}
