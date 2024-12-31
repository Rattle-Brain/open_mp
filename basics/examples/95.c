#include <omp.h>
#include <stdio.h>

int main(){
	omp_nest_lock_t llave;
	int yo,c=0;
	omp_init_nest_lock(&llave);
	#pragma omp parallel private(yo) num_threads(4)
	{
		yo=omp_get_thread_num();
		omp_set_nest_lock(&llave);
		omp_set_nest_lock(&llave);
		printf("%d pasa primer lock\n",yo);
		omp_unset_nest_lock(&llave);
		omp_unset_nest_lock(&llave);

		printf("%d suelta primer lock\n",yo);

		while(!omp_test_nest_lock(&llave)) //ojo, activa. Si triunfa, bloquea
			printf("%d espera segundo lock\n",yo);
		printf("%d por fin segundo lock\n",yo);
		c++;
		omp_unset_nest_lock(&llave);
		printf("%d suelta segundo lock\n",yo);

	}
	omp_destroy_nest_lock(&llave);
	printf("La c al final vale %d\n",c);
	return 0;
}
