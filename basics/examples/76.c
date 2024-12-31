#include <omp.h>
#include <stdio.h>

int main(int argc,char*argv[]){
	int x=100;
	#pragma omp task
		x+=1;
	#pragma omp task
		x*=2;
	printf("no-task x=%d\n",x);
	#pragma omp task
                {
                x+=1;
                printf("x+=1=%d, h:%d (solo hilo 0 -fuera de parallel-, x con valor inicial 100, sera shared?)\n",x, omp_get_thread_num());
                }
        #pragma omp task
                {
                x*=2;
                printf("x*=2=%d, h:%d (solo hilo 0 -fuera de parallel-, x con valor inicial 100, no era shared, es firstprivate por defecto)\n",x, omp_get_thread_num());
                }

	printf("La x vale %d (sigue valiendo lo mismo. Los cambios han sido locales en cada tarea)\n",x);
	#pragma omp parallel //private(x) //probar a quitar el comentario de private, probar tambien firstprivate... y no fiarse ya de los comentarios.
	#pragma omp single
	{
		#pragma omp task
		{
		x+=1;
		printf("x+=1=%d, h:%d (ahora ya estamos en parallel. x_ini=%d, sera shared?)\n",x, omp_get_thread_num(),x-1);
		}
		#pragma omp task
		{
		x*=2;
		printf("x*=2=%d, h:%d (ahora si es shared!!)\n",x, omp_get_thread_num());
		}
	}
	printf("Y ahora vale %d (fuera conserva su valor al haber sido tratada como shared)\n",x);
	return 0;
}
