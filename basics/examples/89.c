int atomic_read(const int *x)
{
  int value;
  /* Ensure that the entire value of *x is read atomically. */ 
  /* No part of *x can change during the read operation. */
#pragma omp atomic read
  value = *x;
  return value;
}

void atomic_write(int *x, int value)
{
  /* Ensure that value is stored atomically into *x.   */
  /* No part of *x can change until after the entire write operation has completed. */
  #pragma omp atomic write
  *x = value;
}

#pragma omp parallel for shared (pos)
     int i;
     for (i=0; i < size; i++) { 
          if (isValid(data[i])) {
                int tmpPos;
                // Using omp atomic capture pragma 
                #pragma omp atomic capture
                {
                     tmpPos = pos;
                     pos =  pos+1;
                }
                //Pack all selected element' indices in index; exact order of indices values is not important.
                index[tmpPos] = i;
          }
     }
