#include <iostream>

using namespace std;

/*  Dado una lista de N , numeros:
	obtenga cuantos numeros ingresados fueron mayores a cero y a la suma de dichos numeros
	obtenga cuantos numeros ingresador fueron menos a cero y a la suma de dichos numeros
	Calcule el promedio de los numeros positivos
	Obtenga el promedio de todos los numeros.

*/


int main(){
	int N;
	int numero;
	int suma=0; //acumulador 
	int resta=0; //acumulador negativo
	float sumapositivos = 0;
	float sumanegativos = 0;
	float PromedioPositivos;
	float PromedioGeneral;
	int i=1;
	cout<<"cuantos numeros ahi en la lista"<<endl;
	cin>>N;
	while(i<=N){
		cout<<"Ingrese el numero "<< i << "de la lista : ";
		cin>>numero;
		
		if(numero>0){
			sumapositivos = sumapositivos +1;
			suma = suma + numero;
		}
		
		if(numero<0){
			sumanegativos = sumanegativos +1;
			resta = resta + numero;
		}
		
		i++;
		
		
	
	}
	
	PromedioPositivos = suma / sumapositivos;
	PromedioGeneral = ((suma + resta)  / (sumapositivos + sumanegativos));
	
	cout<<"--------------------------------------------------------------"<<endl;
	cout<<"Resultados"<<endl;
	cout<<"numeros mayores a cero "<< sumapositivos <<endl;
	cout<<"numeros menores a cero "<< sumanegativos <<endl;
	cout<<"Promedio de los numeros Positivos "<<PromedioPositivos<<endl;
	cout<<"Promedio de los numeros En General "<<PromedioGeneral<<endl;
	

}
