#include <simpleAddCPU.hpp>

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

int main(void){

    long N = 100*1000*1000;
    // int *a;
    // a = new int[N];
    // int *b;
    // b = new int[N];
    // int *c;
    // c = new int[N];

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
    add_cuda<<<numBlocks, blockSize>>>(a,b,c,N);
    cudaDeviceSynchronize();
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }
    add_CPU(a,b,c,N);
    for(int p=0;p<10;p++){
        printf("%f, %f,%f \n",a[p],b[p],c[p]);
    }
    // delete a;
    // delete b;
    // delete c;
    cudaDeviceSynchronize();
    cudaFree(a);
    cudaFree(b);
    cudaFree(c);
    return 0;
}

