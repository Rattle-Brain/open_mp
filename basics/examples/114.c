#include <stdio.h>
#include <omp.h>
float work1(int i){
    return 1.0 * i;
}

float work2(int i){
    return 2.0 * i;
}

void atomic_example(float *x, float *y, int * index, int n)
{
    int i;
    #pragma omp parallel for shared(x, y, index, n)
    for (i=0; i<n; i++) {
        #pragma omp atomic update
            x[index[i]] += work1(i); //atomic necesario porque no sabemos dónde vamos a caer en x[...] y puede haber conflicto.
        y[i] += work2(i);					/* NO LE AFECTA EL ATOMIC */ //Acá no tenemos problema.
    }
}

int main(){
	int n=10,i;
	float v1[n], v2[n];
	int ind[]={2,5,4,7,6,9,1,3,8,0};
	atomic_example(v1,v2,ind,n);
	printf("v1:\n");
	for(i=0;i<n;i++)
		printf("v1[%d]=%.1f\n",i,v1[i]);
	printf("\nv2:\n");
	for(i=0;i<n;i++) 
                printf("v2[%d]=%.1f\n",i,v2[i]);

	return 0;
}
