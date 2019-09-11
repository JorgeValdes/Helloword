#include<iostream>

/*Un vendedor realiza una serie de ventas y desea conocer aquellas de $200.000 o menos otras de $200.000 y $400.000 y las otras superiores a $400.000*/
using namespace std;


int main(){
	
	int i=1;
	int nventas; //numero de ventas
	float venta; //ingreso de la venta
	int vp=0, vm=0 , vg=0; //cantidad de venta hechas 
	float pvp = 0 , pvm =0 , pvg= 0; //promedio de cada venta
	
		cout<<"Ingrese el numero de ventas"<<endl;
		cin>>nventas;
	do{
	
		cout<<"Ingrese el monto de la venta"<<endl;
		cin>>venta;
		if(venta<=200){
			vp = vp + 1;
			pvp = pvp + venta;
		}
		if(venta >200 && venta <=400){
			vp = vm + 1;
			pvp = pvm + venta;
		}
		if(venta>400){
			vg= vg + 1;
			pvg = pvg + venta;
		}
		i = i+1;
		}while(i <= nventas);{
			cout<<"-------------------------"<<endl;
			cout<<"Ventas pequeñas"<<endl;
			cout<< vp  <<endl <<pvp<<endl;
				cout<<"Ventas medianas"<<endl;
			cout<< vm  <<endl <<pvm <<endl;
				cout<<"Ventas Grandes"<<endl;
			cout<< vg  <<endl <<pvg<<endl;
		}
		
		return 0;
	
}
