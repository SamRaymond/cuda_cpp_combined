#include "simpleAddGPU.h"
#include <stdio.h>
__global__ void randomize_cuda(double* a,double* b, double* c,long N){
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    
    if(index<N){
        a[index] = index;
        b[index] = index/2;
        c[index] = 0;
    }
};

__global__ void add_cuda(double* a,double* b,double* c,long N){
    
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    if(index == 2){
	printf("%f,%p\n",c[index],(void*)&c[index]);
}

    if(index<N){
        c[index] += a[index] + b[index];
        for(int q=0; q<100000; q++){
            c[index] +=0.1;
            c[index] -=0.05;
        }
    }
};

