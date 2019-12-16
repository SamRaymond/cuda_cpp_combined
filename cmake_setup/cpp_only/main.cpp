#include "simpleAddCPU.hpp"
#include <stdio.h>

int main(void){

    long N = 1*1000*1000;
    double *a;
    a = new double[N];
    double *b;
    b = new double[N];
    double *c;
    c = new double[N];

    // double* a;
    // cudaMallocManaged(&a, N*sizeof(double));
    // double* b;
    // cudaMallocManaged(&b, N*sizeof(double));
    // double* c;
    // cudaMallocManaged(&c, N*sizeof(double));
    
    // int blockSize = 256;
    // int numBlocks = (N + blockSize - 1) / blockSize;
    // randomize_cuda<<<1, blockSize>>>(a,b,c,N);
    // cudaDeviceSynchronize();
    // add_cuda<<<numBlocks, blockSize>>>(a,b,c,N);
    // cudaDeviceSynchronize();
    // for(int p=0;p<10;p++){
    //     printf("%f, %f,%f \n",a[p],b[p],c[p]);
    // }
    randomize_CPU(a,b,c,N);
    add_CPU(a,b,c,N);
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }
    delete a;
    delete b;
    delete c;
    // cudaDeviceSynchronize();
    // cudaFree(a);
    // cudaFree(b);
    // cudaFree(c);
    return 0;
}
