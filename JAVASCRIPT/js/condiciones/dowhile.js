
// una forma
// while(numero<1 || numero>20){

//     numero = prompt("escribe un numero del 1 al 20");
// }

do {
    var numero = prompt("escribe un numero del 1 al 20");
} while(numero < 1 || numero> 20 || isNaN(numero) );