#include <stdio.h>
#include <omp.h>

int main() {
    int num_threads;

    //Set the input number of threads
    do {
        printf("Enter the number of threads: ");
        scanf("%d", &num_threads);

        // Check for it to be greater than 0
        if (num_threads <= 0) {
            printf("The number of threads should be greater than 0\n");
        }
    } while (num_threads <= 0);

    #pragma omp parallel
    {
        int tid = omp_get_thread_num();
        printf("Hello, World! I'm thread %d\n", tid);
    }
    return 0;
}