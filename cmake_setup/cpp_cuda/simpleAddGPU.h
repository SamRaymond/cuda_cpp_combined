#ifndef _SIMPLEADD_GPU
#define _SIMPLEADD_GPU

__global__ void randomize_cuda(float* a,float* b, float* c,long N);
__global__ void add_cuda(float* a,float* b,float* c,long N);

#endif
