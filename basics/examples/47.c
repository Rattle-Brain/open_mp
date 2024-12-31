#include <omp.h>
#include <stdio.h>

int main(){

int i, j;
printf("i j th\n");

#pragma omp parallel for num_threads(2) private(j)
for (i = 0; i < 4; i++)
    for (j = 0; j <= 4; j++)
        printf("%d %d %d\n", i, j, omp_get_thread_num());
return 0;
}
