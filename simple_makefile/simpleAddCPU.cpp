#include <simpleAddCPU.hpp>

void randomize_CPU(double* a,double* b, double* c,long N){
    
    for(int i=0; i<N; i++){
        a[i] = i;
        b[i] = i/2;
    }

};
void add_CPU(double* a,double* b, double* c,long N){
    printf("%f,%p\n",c[2],(void*)&c[2]);
    #pragma omp parallel for
    for(int i=0; i<N; i++){
        // printf("%i \n",i);
       c[i] += a[i] + b[i];
        for(int q=0; q<5000; q++){
            c[i] +=1;
            c[i] -=1;
       }
    }
    printf("%f,%p\n",c[2],(void*)&c[2]);

};
