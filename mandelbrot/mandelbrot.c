#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <time.h>

#define WIDTH 1000          // Width of the image
#define HEIGHT 1000         // Height of the image
#define MAX_ITER 500        // Maximum number of iterations per pixel

/*
The write_image function writes the image to a file in PPM format.
*/
void write_image(const char *filename, int width, int height, int *buffer) {
    FILE *f = fopen(filename, "w");
    fprintf(f, "P3\n%d %d\n255\n", width, height);
    for (int i = 0; i < width * height; i++) {
        int color = buffer[i];
        fprintf(f, "%d %d %d ", color, color, color);
    }
    fclose(f);
}

/*
The mandelbrot function calculates the number of iterations required for the
complex number c to escape the circle of radius 2.0. If the number of iterations
exceeds the maximum number of iterations, the function returns the maximum number
of iterations. Otherwise, it returns the number of iterations required for the
complex number to escape the circle.
*/
int mandelbrot(double complex c) {
    double complex z = 0;
    int iter;
    for (iter = 0; iter < MAX_ITER; iter++) {
        if (cabs(z) > 3.0) break;
        z = z * z + c;
    }
    return iter;
}

int main() {
    int *image = (int *)malloc(WIDTH * HEIGHT * sizeof(int));

    // Using this function is not required. It could also be done with the C time_t and ctime
    clock_t start_time = clock();

    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            double real = (x - WIDTH / 2.0) * 4.0 / WIDTH;
            double imag = (y - HEIGHT / 2.0) * 4.0 / HEIGHT;
            double complex c = real + imag * I;
            int color = mandelbrot(c);
            image[y * WIDTH + x] = (color == MAX_ITER) ? 0 : (255 * color / MAX_ITER);
        }
    }

    clock_t end_time = clock();
    double execution_time = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Execution time single thread: %f seconds\n", execution_time);

    write_image("mandelbrot.ppm", WIDTH, HEIGHT, image);
    free(image);
    return 0;
}
