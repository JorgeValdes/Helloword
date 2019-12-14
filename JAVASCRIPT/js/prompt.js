// funcion prompt

var nombre = prompt("ingresa tu nombre ");
var apellido = prompt("ingresa tu apellido");

nombrecompleto = (nombre +  " " + apellido);

document.getElementsByTagName("h1")[0].innerHTML = "Nombre completo";
document.write(nombrecompleto);


var numero1 , numero2, total;

numero1 = parseInt(prompt("ingresa el primero numero"));
numero2 = parseInt(prompt("ingresa el segundo numero"));

// Number(numero1 , numero2);
total = numero1 + numero2;

document.write("<p>");
document.getElementsByTagName("h1")[0].innerHTML = "el resultado de la calculadora es ";
document.write(numero1 + " + " + numero2 + "<b> = </b>" + "<em>"  + total + "</em>");



document.write("<p>");