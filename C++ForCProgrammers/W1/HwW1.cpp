// Convert this program to C++

// change to C++ io  -------- OK

// change to one line comments ------- OK

// change defines of constants to const ------- OK

// change array to vector<>

// inline any short function ------ OK



#include <iostream>  //Header for input and outputñ
#include <vector> //Header for using vectors

using namespace std; 

const int N = 40;


inline void sum(int*p, int n, vector<int> d) //Función que suma los elementos de un array.
//Esta función recibe una dirección de memoria, un entero, y un array.
{
    int i; //Declaración del contador

    *p = 0; //Asignación del valor a la variable a la que apunta el puntero

    for(i = 0; i < n; ++i)
        {
        *p = *p + d.at(i); //Suma de los elementos del array usando punteros
         cout<<*p;
        }
}

int main()

{
    int i; //Declaración de la variable contador

    int accum = 0; //Declaración del valor del que parte la suma de los elementos del array

    vector<int> data(N); //Declaración del array 

    for(i = 0; i < N; ++i)  //Asignación de un número a cada elemento del array

        data[i] = i;

    sum(&accum, N, data); //LLamada a la función que suma todos los números del array
    //Esta función recibe una dirección de memoria, la longitud del array, y el array

    cout<<"sum is "<< accum ; //Resultado tras aplicar la función sum.

    return 0;

}