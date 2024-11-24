// Initialize an array with random values and then double them in parallel

#include <stdio.h>
#include <stdlib.h>
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

    // Initialize the array with random values
    for (int i = 0; i < n; i++) {
        a[i] = rand() % 100;
    }

    // Double the values in parallel
    #pragma omp parallel for num_threads(num_threads)
    for (int i = 0; i < n; i++) {
        a[i] = i * i;
        printf("Thread %d computing arr[%d] = %d\n", omp_get_thread_num(), i, a[i]);
    }

    // Print the array
    for (int i = 0; i < n; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;

}