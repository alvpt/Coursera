// my first pointer
#include <iostream>
using namespace std;

int main ()
{
  int firstvalue, secondvalue; //Declaración de dos variables de tipo int
  int * mypointer; //  Declaración de un puntero de tipo int

  mypointer = &firstvalue; // Asignación del valor del puntero: dirección de memoria de firstvalue
  *mypointer = 10; //* actúa como operador de dereferencia: firstvalue valdrá 1o
  mypointer = &secondvalue;
  *mypointer = 20;
  cout << "firstvalue is " << firstvalue << '\n';
  cout << "secondvalue is " << secondvalue << '\n';
  return 0;
}