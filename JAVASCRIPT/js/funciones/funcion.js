// // sintaxis de la funcion 

// // es function nombre_de la funcion(){

// //     //instrucciones
// // }

// // llamando a la funcion

// // nombre();

// var numero1= parseInt(prompt("por favor introduzca un numero"));
// var numero2= parseInt(prompt("por favor introduzca un numero"));

// function suma(numero1 , numero2){

//     total = numero1 + numero2;
//     document.write("el total de la suma es : " + total);
// }

// function resta(numero1 , numero2){

//     total = numero1 - numero2;
//     document.write("el total de la resta es : " + total);
// }

// function multiplicacion(numero1 , numero2){

//     total = numero1 * numero2;
//     document.write("el total de la multiplicacion es : " + total);
// }

// function division(numero1 , numero2){

//     total = numero1 / numero2;
//     document.write("el total de la division es : " + total);
// }

// suma(numero1 , numero2 );
// document.write("<br>");
// resta(numero1 , numero2);
// document.write("<br>");
// multiplicacion(numero1 , numero2);
// document.write("<br>");
// division(numero1 , numero2);
// document.write("<br>");

function saludar (){
    alert("hola que tal como estan");
}

// function saludar(){
//     alert("que pasar");
// }

function nombre(){
    var nombre = prompt("por favor introduce un nombre");
    document.write("<h1>"+nombre+"</h1>");
}

saludar();
nombre();

