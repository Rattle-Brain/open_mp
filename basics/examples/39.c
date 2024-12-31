#include <omp.h>
#include <stdio.h>
int main(){
	int oyo,iyo,onp,inp;
	int valor=1;
	omp_set_nested(valor);
	#pragma omp parallel num_threads(2) private(oyo,onp)
	{
		oyo=omp_get_thread_num();
		onp=omp_get_num_threads();
		printf("Out:(%d,%d)\n",oyo,onp);
		#pragma omp parallel num_threads(2) private(iyo,inp)
		{
			iyo=omp_get_thread_num();
			inp=omp_get_num_threads();
			printf("Inner:(%d,%d/%d,%d)\n",oyo,onp,iyo,inp);
		}
	}
	return 0;
}
