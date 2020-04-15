// more pointers
#include <iostream>
using namespace std;

int main ()
{
  int numbers[5]; //Declaración de un array de 5 elementos
  int *p; //Declaración de un puntero
  p = numbers;  *p = 10; //El puntero apunta a la dirección de memoria del primer elemento del array, y le da el valor 10
  cout << "value of p is " << p << '\n';
  p++;  *p = 20;
  cout << "value of p is " << p << '\n';
  p = &numbers[2];  *p = 30;
  p = numbers + 3;  *p = 40;
  p = numbers;  *(p+4) = 50;
  for (int n=0; n<5; n++)
    cout << numbers[n] << ", ";
    
  return 0;
}