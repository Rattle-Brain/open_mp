#include <omp.h>
#include <stdio.h>
int main(){
	int yo,iyo,iiyo,np,inp,iinp;
	omp_set_nested(0);
	printf("yo np iyo inp iiyo iinp\n");
	#pragma omp parallel num_threads(2)
	{
		yo=omp_get_thread_num();
		np=omp_get_num_threads();
		#pragma omp parallel private(iyo,inp) num_threads(3)
		{
			iyo=omp_get_thread_num();
			inp=omp_get_num_threads();
			#pragma omp parallel private(iiyo,iinp) num_threads(3)
			{
				iiyo=omp_get_thread_num();
				iinp=omp_get_num_threads();
				printf("%2d %3d %3d %3d %4d %4d\n",yo,np,iyo,inp,iiyo,iinp);
			}
		}
	}
}
