// var saludo = function(nombre){

//     alert(nombre);
// }

// saludo("jorge");

// var nombre = prompt("cual es su nombre");

// function name(nombre){
//     alert(nombre);
// }

// name(nombre);

// var numero1 = parseInt(prompt("introduzca el primero numero"));
// var numero2 = parseInt(prompt("introduzca el segundo numero"));

// function suma(numero1, numero2){
//     total = numero1 + numero2;
//     alert("el total de la suma es : " +total);
// }

// suma(numero1, numero2);

function suma(){

    var suma =0;
    
    var arg = arguments; //la funcion arguments le decimos a la funcion que entrara mas de un argumento


    for(i = 0; i<arguments.length; i++){

        suma += parseInt(arguments[i]);
    }

    document.write(suma);
}

suma(75,35, 12312312);