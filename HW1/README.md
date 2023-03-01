# HW1

## 檔案結構
<img width="415" alt="image" src="https://user-images.githubusercontent.com/37164678/220504706-0ce63e9d-e9bd-4b27-a0c9-e5221588b814.png">

## Makefile
```make
TARGET ?= 1024

build:
	@echo "----------------------------------------"
	@echo "- Building the source...               -"
	@echo "----------------------------------------"
	cc 	-o out.0 src/mmd_serial.c
	cc -O1 	-o out.1 src/mmd_serial.c
	cc -O2 	-o out.2 src/mmd_serial.c
	cc -O3 	-o out.3 src/mmd_serial.c

run:
	@echo "----------------------------------------"
	@echo "- Time the program...                  -"
	@echo "----------------------------------------"
	@echo " No optimization: "
	@time ./out.0 $(TARGET) | awk -F ' ' '{print $3}'
	@echo "----------------------------------------"
	@echo " O1 optimization: "
	@time ./out.1 $(TARGET) | awk -F ' ' '{print $3}'
	@echo "----------------------------------------"
	@echo " O2 optimization: "
	@time ./out.2 $(TARGET) | awk -F ' ' '{print $3}'
	@echo "----------------------------------------"
	@echo " O3 optimization: "
	@time ./out.3 $(TARGET) | awk -F ' ' '{print $3}'
	@echo "----------------------------------------"

clean:
	rm out.*
```

## `src/mmd_serial.c`
```c
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
double **a, **b, **c;

double matrixMult(int n)
{
int i, j, k;

   for (i=0; i<n; i++) {
      for (j=0; j<n; j++) {
         c[i][j] = 0.0;
         for (k=0; k<n; k++)
            c[i][j] += a[i][k] * b[k][j];
      }
   }
}  
/* end of matrixMult */

void print(int n)
{
int i, j;

   for (i=0; i<n; i++){
      for (j=0; j<n; j++)
         printf("%f ", c[i][j]);
      putchar('\n');
   }
}

int main(int argc, char *argv[])
{
int size, i, j;
 
   size = atoi(argv[1]);
  /* allocate a, b, and c to be n by n matrices */

   a = (double **)malloc(sizeof(double)*size);
   b = (double **)malloc(sizeof(double)*size);
   c = (double **)malloc(sizeof(double)*size);

   for (i=0; i<size; i++) {
      a[i] = (double*)malloc(sizeof(double)*size);
      b[i] = (double*)malloc(sizeof(double)*size);
      c[i] = (double*)malloc(sizeof(double)*size);
   } 

/* initialize a, b, c */

   for (i=0; i<size; i++) {
      for (j=0; j<size; j++) {
         a[i][j] = 2.0;
         b[i][j] = 5.0;
         c[i][j] = 0.0;
     }
   }
  matrixMult(size);
 
/* print results */
/* print(size);*/ 
   printf("%f\n", c[size-1][size-1]);
   free(a);
   free(b);
   free(c);
   exit(0);
} /* end of main */

```

---

## 編譯
<img width="462" alt="image" src="https://user-images.githubusercontent.com/37164678/220504861-759bd81c-30d3-4a20-90cd-4e10e5e0116f.png">

## 計時結果(TARGET=2048)
```shell
❯ make run TARGET=2048
----------------------------------------
- Time the program...                  -
----------------------------------------
 No optimization: 
20480.000000

real	1m18.217s
user	1m18.162s
sys	0m0.019s
-rwxr-xr-x 1 jsl jsl 15816 Mar  1 10:29 out.0
----------------------------------------
 O1 optimization: 
20480.000000

real	0m53.306s
user	0m53.265s
sys	0m0.017s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.1
----------------------------------------
 O2 optimization: 
20480.000000

real	0m43.038s
user	0m43.002s
sys	0m0.011s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.2
----------------------------------------
 O3 optimization: 
20480.000000

real	0m40.689s
user	0m40.650s
sys	0m0.020s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.3
----------------------------------------
```

## 清理out檔
<img width="342" alt="image" src="https://user-images.githubusercontent.com/37164678/220505652-d70e37e7-3297-4ae6-bce3-fa97cb0db3ad.png">

## 心得
O2應該是CP值最高的優化，O3就有些雞肋了。
