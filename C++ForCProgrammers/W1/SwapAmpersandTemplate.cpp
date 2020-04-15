#include <iostream>
using namespace std;

int x, y;
int * p;
int * q;



int swap(T& i, T& j){
    
    T temp = i;
    //temp = i;
    i = j;
    j = temp;

    cout<<"\nChanged direction of x "<< i << "; and of y "<< j;

}


int main(void){
    cout<<"Enter the value of x ";
    cin>>x;

    cout<<"\nEnter the value of y ";
    cin>>y;

    p = &x;
    q = &y;


    cout<<"Direction of x: "<< p << "; and of y "<< q;

    template<class T>;

    swap(p,q);

    
}

