#include<iostream>

using namespace std;

int main(){
	
	int opcion;
	float n1, n2 , suma , resta, multi , divi;
	
	cout<<"Menu de opciones a elejir" <<endl; //end1 para saltar de fila
	cout<<" 1. Sumar "<<endl;
	cout<<" 2. resta "<<endl;
	cout<<" 3. multi "<<endl;
	cout<<" 4. divi "<<endl;
	cout<<"Elegir una opcion del menu"<<endl;
	cin>>opcion;
	switch(opcion){
		case 1:
			cout<<"Ingrese los numeros a sumar"<<endl;
			cin>>n1;
			cin>>n2;
			suma = n1 + n2;
			cout<<"el resultado es"<<endl;
			cout<<suma;
			break;
		case 2:
			cout<<"Ingrese los numeros a restar"<<endl;
			cin>>n1;
			cin>>n2;
			resta = n1 - n2;
			cout<<"el resultado es"<<endl;
			cout<<resta;
			break;
		case 3:
			cout<<"Ingrese los numeros a multiplicar"<<endl;
			cin>>n1;
			cin>>n2;
			multi = n1 * n2;
			cout<<"el resultado de la multiplicacion es"<<endl;
			cout<<multi;
			break;
		case 4:
			cout<<"Ingrese los numeros a dividir"<<endl;
			cin>>n1;
			cin>>n2;
			divi = n1 / n2;
			cout<<"el resultado de la division es"<<endl;
			cout<<divi;
			break;		
			
	}
	
	return 0;
}
