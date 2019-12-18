#ifndef _SIMPLEADDCPU
#define _SIMPLEADDCPU

#include <stdio.h>
#include <math.h>
#include <omp.h>

void randomize_CPU(double* a,double* b, double* c,long N);
void add_CPU(double* a,double* b, double* c,long N, int iterations);

#endif
