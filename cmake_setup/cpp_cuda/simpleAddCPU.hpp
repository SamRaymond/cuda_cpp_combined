#ifndef _SIMPLEADDCPU
#define _SIMPLEADDCPU

#include <stdio.h>
#include <math.h>
#include <omp.h>

void randomize_CPU(float* a,float* b, float* c,long N);
void add_CPU(float* a,float* b, float* c,long N);

#endif