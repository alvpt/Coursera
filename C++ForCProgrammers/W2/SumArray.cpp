#include <iostream>


array[];

int size = 4;


template <class Summable> //T is generic type

T sum(const Summable data[], int size, Summable s=0){
    for(int i=0; i<size; ++i)
        s+=data[i]; // 
    return s;
}