#include <stdio.h>
#include <pthread.h>
 void ver(void *mensaje) {
     printf("%s\n", (char *)mensaje); 	// Race Condition
 }
 int main() {
    pthread_t h1, h2;   char *m1="Hola", *m2="Mundo";   int error, *status;
    pthread_create(&h1,NULL,(void*)&ver,(void*)m1);
    pthread_create(&h2,NULL,(void*)&ver,(void*)m2);
    error = pthread_join(h1,(void *)&status);
    if (error && ((int)&status != h1)) return -1;
    error = pthread_join(h2,(void *)&status);
    if (error && ((int)&status != h2)) return -1;
    return 0;
 }
