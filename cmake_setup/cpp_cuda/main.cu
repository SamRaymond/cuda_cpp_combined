#include "simpleAddCPU.hpp"
#include "simpleAddGPU.h"
#include <stdio.h>

int main(void){

    
    // int *a;
    // a = new int[N];
    // int *b;
    // b = new int[N];
    // int *c;
    // c = new int[N];
    int LOOP_COUNT = 1000;
    int NUM_PARTICLES = 1000000;
    long N = 300*NUM_PARTICLES; // ~ 300 variable arrays in Graphyt
    int ITERATE_COUNT = 1;
    double* a;
    cudaMallocManaged(&a, N*sizeof(double));
    double* b;
    cudaMallocManaged(&b, N*sizeof(double));
    double* c;
    cudaMallocManaged(&c, N*sizeof(double));
    
    int blockSize = 256;
    int numBlocks = (N + blockSize - 1) / blockSize;
    randomize_cuda<<<1, blockSize>>>(a,b,c,N);
    cudaDeviceSynchronize();
    double t1 = omp_get_wtime();
    for(int i=0;i<LOOP_COUNT;i++)
    {
        add_cuda<<<numBlocks, blockSize>>>(a,b,c,N,ITERATE_COUNT);
    }
    cudaDeviceSynchronize();
    double t2 = omp_get_wtime();
    
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }
    printf("Particles: %li\nGPU Time: %.2fs\n",N/300,t2-t1);

    double t3 = omp_get_wtime();
    for(int i=0;i<LOOP_COUNT;i++)
    {
        add_CPU(a,b,c,N,ITERATE_COUNT);
    }
    double t4 = omp_get_wtime();
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }

    printf("Particles: %li\nGPU Time: %.2fs\nCPU Time: %.2fs\nApprox. Speed-up: %.1f\n",N/300,t2-t1,t4-t3,(t4-t3)/(t2-t1));
    // delete a;
    // delete b;
    // delete c;
    cudaDeviceSynchronize();
    cudaFree(a);
    cudaFree(b);
    cudaFree(c);
    return 0;
}
