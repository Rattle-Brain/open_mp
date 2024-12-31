#include <stdio.h>
#include <omp.h>
#include <unistd.h>
int main () {
   int yo;
   #pragma omp parallel private(yo)
   {
      yo = omp_get_thread_num();
      #pragma omp single
         {printf("%d en solitario dentro del 1st single\n",yo); sleep(1);}

      #pragma omp master
         {printf("%d. Debo ser 0, estoy en master\n",yo);  sleep(1);}

      #pragma omp single
         {printf("%d en solitario dentro del 2nd single\n",yo); sleep(1);}

      #pragma omp single
         {printf("%d en solitario dentro del 3rd single\n",yo); sleep(1);} 

      printf("Thread %d, fuera de singles y masters\n",yo);
   }
   return 0;
}
