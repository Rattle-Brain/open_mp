#include <stdio.h>
#include <omp.h>
#include <unistd.h>
int main() {
int x,y;
#pragma omp parallel num_threads(10)
{
#pragma omp single nowait
 {
#pragma omp task depend (out:x)  //task1
  {
        x=1;
	printf("task1(x=1, out:x): %d\n" , x);
  }
#pragma omp task depend(in:x) depend(out:y)  //task2
  {
        sleep(2); //Does task3 wait for us? Yes!
        y=x+1;
	printf("task2(y=x+1, in:x, out:y): %d\n" , y);
  }
#pragma omp task depend (inout:x)  //task3
  {
        x++;
        printf("task3(x++, inout:x): %d\n" , x);
  }
#pragma omp task depend (in:x,y)  //task4
 {
        printf("task4(x+y, in:w,y): %d\n" , x+y);
 }
 }
}
return 0;
}
