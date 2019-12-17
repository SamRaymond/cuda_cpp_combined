#include "simpleAddCPU.hpp"

void randomize_CPU(float* a,float* b, float* c,long N){
    
    for(int i=0; i<N; i++){
        a[i] = i;
        b[i] = i/2;
    }

};
void add_CPU(float* a,float* b, float* c,long N){
    printf("%f,%p\n",c[2],(void*)&c[2]);
    #pragma omp parallel for
    for(int i=0; i<N; i++){
        // printf("%i \n",i);
       c[i] += a[i] + b[i];
        for(int q=0; q<100000; q++){
            c[i] +=0.1;
            c[i] -=0.05;
       }
    }
    printf("%f,%p\n",c[2],(void*)&c[2]);

};
