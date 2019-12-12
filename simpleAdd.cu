#include <simpleAddGPU.h>

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
    if(index<N){
        c[index] = a[index] + b[index];
        for(int q=0; q<50000; q++){
            c[index] = c[index]+1;
            c[index] = c[index]-1;
        }
    }
};

