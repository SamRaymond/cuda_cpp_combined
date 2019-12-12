#include <simpleAddCPU.hpp>

void randomize_CPU(double* a,double* b, double* c,long N){
    
    for(int i=0; i<N; i++){
        a[i] = i;
        b[i] = i/2;
    }

};
void add_CPU(double* a,double* b, double* c,long N){
    #pragma omp parallel for
    for(int i=0; i<N; i++){
        // printf("%i \n",i);
       c[i] = a[i] + b[i];
        for(int q=0; q<50000; q++){
            c[i] = c[i]+1;
            c[i] = c[i]-1;
       }
    }

};