#include <pthread.h>
#include <stdio.h>

void ver(void *mensaje) {
	printf("%s\n", (char *)mensaje);// Race Condition
}

int main(void) {
	pthread_t h1, h2; 
	char *m1="Hola", *m2="Mundo"; 
	int error, *status;
	pthread_create(&h1,NULL,(void*)&ver,(void*)m1);
	pthread_create(&h2,NULL,(void*)&ver,(void*)m2);
	error = pthread_join(h1,(void *)&status);
	if (error && ((int)&status != h1))  
		printf("error h1\n");
	error = pthread_join(h2,(void *)&status);
	if (error && ((int)&status != h2))  
		printf("error h2\n");

	return 0;
}

