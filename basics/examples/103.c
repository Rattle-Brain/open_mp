#include <omp.h>
#include <stdio.h>

float x=1.2,y=2.1;
#pragma omp threadprivate(x,y)

void Inicializa(float *a,float *b){
	#pragma omp single copyprivate(x,y)
	scanf("%f %f %f %f",a,b,&x,&y);
}

int main(){
	float a=3.4,b=5.6;
	#pragma omp parallel private(a,b)
	{
		Inicializa(&a,&b);
		printf("La salida es: %f %f %f %f en hilo %d\n",a,b,x,y,omp_get_thread_num());
	}
	return 0;
}
