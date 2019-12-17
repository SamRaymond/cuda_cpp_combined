#include "simpleAddCPU.hpp"
#include "simpleAddGPU.h"
#include <stdio.h>

int main(void){

    long N = 300*1000*1000; //~300 variables in Graphyt
    // int *a;
    // a = new int[N];
    // int *b;
    // b = new int[N];
    // int *c;
    // c = new int[N];

    float* a;
    cudaMallocManaged(&a, N*sizeof(float));
    float* b;
    cudaMallocManaged(&b, N*sizeof(float));
    float* c;
    cudaMallocManaged(&c, N*sizeof(float));
    
    int blockSize = 256;
    int numBlocks = (N + blockSize - 1) / blockSize;
    randomize_cuda<<<1, blockSize>>>(a,b,c,N);
    cudaDeviceSynchronize();
    double t1 = omp_get_wtime();
    add_cuda<<<numBlocks, blockSize>>>(a,b,c,N);
    cudaDeviceSynchronize();
    double t2 = omp_get_wtime();
    
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }
    printf("Particles: %li\nGPU Time: %.2fs\n",N/300,t2-t1);

    double t3 = omp_get_wtime();
    add_CPU(a,b,c,N);
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
