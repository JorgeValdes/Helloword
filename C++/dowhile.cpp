#include<iostream>


using namespace std;

int main(){
	
	float nota, suma = 0 , promedio;
	int i =1;
	
	
	do{
		//instrucciones
		cout<<"Ingrese las notas"<< i << "  : ";
		cin>>nota;
		suma = suma + nota;
		i++;
	}while(i<=10);{
		
		promedio = suma/10;
		cout<<"el promedio es : "<<promedio;
		return 0;
	}
	
	
	return 0;
}
