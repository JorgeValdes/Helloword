// sintaxis

// switch(expresion){

//     case valor1:

//     sentecia 
//     break;

//     case valor2:

//     sentecia 
//     break;
// }
var numero1 = parseInt(prompt("introduce el primero numero"));
var numero2 = parseInt(prompt("introduce el segundo numero"));

var operacion = prompt("que tipo de operacion deseas realizar (suma/resta/multiplicacion/division)").toLowerCase();
document.write("<p>");

switch(operacion){
    case "suma":
    
     total = numero1 + numero2;
        
     document.write("el total es :", total);

    break;

    case "resta":
    
    total = numero1 - numero2;

    document.write("el total es :", total);

    break;
    case "multiplicacion":
    
    total = numero1 * numero2;
        
    document.write("el total es :", total);

    break;       
    case "division":
    
    total = numero1 / numero2;
                
    document.write("el total es :", total);
        
    break;

    default:
        alert("Por favor, ingresa bien el texto de la operacion");

    break;
}
