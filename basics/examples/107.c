#include <omp.h>
#include <stdio.h>
#include <float.h>

int ParIdamin(const int N, const double *v) {
   int i, pos_min = 0;
   double val_min = v[0];
   #pragma omp parallel
   {
      double val = DBL_MAX;//OJO: al estar declarada dentro, es privada al hilo
      int pos = 1;         //ídem
      #pragma omp for nowait
         for(i=1; i<N; i++)  if (v[i]<val) { val=v[i]; pos=i; }
      #pragma omp critical //Ahora vamos a acceder a las compartidas, por eso necesitamos el critical
         if (val < val_min) { val_min=val; pos_min=pos; }
   }
   return pos_min;
}
int main(int argc, char * argv[]) {
    double v[10]={9, 6, 7, 5, 3, 3, 3, 3 ,3, 3};
    printf("%d\n",ParIdamin(10, v));
}
