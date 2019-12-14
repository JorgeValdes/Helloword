/*
Operadores de condiciones

== verifica la igual de dos expresiones sin tener en cuenta el tipo de dato 3=="3", true
=== lo mismo pero teniendo cuenta el dato 3=="3", false
!= distinto 3!="3"; false
!== la niega , con el dato 3!="3"; true
> mayor que  3>4 ; false
>= mayor o igual que  4>=4; true
< menor que
<= menor o igual que
&& establece una conjuncion entre dos expresiones
|| establece una disnyuncion logica de dos expresiones
! establece una negacion
*/

// var preciohelado = 5;
// var midinero = prompt("con cuanto dinero cuentas para compar un helado");

// // document.write(preciohelado);
// // document.write(midinero);
// if( midinero >= preciohelado) {
//     alert("si puedes comprar el helado");
// }

// alert("continua el programa");

// if else

var numero1 =3;
var numero2 = "3";
if(numero1 == numero2){
    alert("los dos numeros son iguales sin importar el tipo de dato");

}else{
    alert("los dos numeros son iguales pero no del mismo tipo de datos");
}

var midinero = prompt("cuentas con dinero necesario para comprar las bebidas");

var edad = prompt("cuanta edad tienes");

if( midinero >= 70 || edad >= 18){
    alert("puedes pasar a comprar");
}else{
    alert("no puedes ingresar");
}