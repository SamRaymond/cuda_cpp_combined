#ifndef _SIMPLEADD_GPU
#define _SIMPLEADD_GPU

__global__ void randomize_cuda(double* a,double* b, double* c,long N);
__global__ void add_cuda(double* a,double* b,double* c,long N);

#endif
