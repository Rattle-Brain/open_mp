#include <omp.h>
#include <stdio.h>

void foo(void)
{
   int i;

   #pragma omp for
   for (i = 0; i < 12; i++)
      printf("%d in %d\n",i,omp_get_thread_num());
   printf("\n");
}

int main(void)
{
   foo();

   #pragma omp parallel num_threads(4)
   {
      foo();
   }

   return 0;
}
