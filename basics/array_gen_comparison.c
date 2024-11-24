// Initialize an array with random values and then double them in parallel

#include <stdio.h>
#include <omp.h>

int main(){
    int num_threads;
    int n;

    // Set the input number of threads
    do {
        printf("Enter the number of threads: ");
        scanf("%d", &num_threads);

        // Check for it to be greater than 0
        if (num_threads <= 0) {
            printf("The number of threads should be greater than 0\n");
        }
    } while (num_threads <= 0);

    // Do-while loop to ask for number of elements in the array
    do {
        printf("Enter the number of elements in the array: ");
        scanf("%d", &n);

        // Check for it to be greater than 0
        if (n <= 0) {
            printf("The number of elements should be greater than 0\n");
        }
    } while (n <= 0);

    // Create the array
    int a[n];
    double start_time, end_time;

    // Initialize the array with random values sequentially
    start_time = omp_get_wtime();
    for (int i = 0; i < n; i++) {
        a[i] = i * i;
    }
    end_time = omp_get_wtime();
    printf("Time taken to initialize array sequentially:\t%f seconds\n", end_time - start_time);

    // Initialize the array with random values in parallel
    start_time = omp_get_wtime();
    #pragma omp parallel num_threads(num_threads)
    #pragma omp for
    for (int i = 0; i < n; i++) {
        a[i] = i * i;
    }
    end_time = omp_get_wtime();
    printf("Time taken to initialize array in parallel:\t%f seconds\n", end_time - start_time);

    return 0;

}