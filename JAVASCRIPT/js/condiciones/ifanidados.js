var numero1 = parseInt(prompt("introduce el primero numero"));
var numero2 = parseInt(prompt("introduce el segundo numero"));

var operacion = prompt("que tipo de operacion deseas realizar (suma/resta/multiplicacion/division)").toLowerCase();
document.write("<p>");
 document.write(operacion);
if (!isNaN (numero1) && !isNaN(numero2)){

    if(operacion == "suma")   {
        total = numero1 + numero2;
        
        document.write("el total es :", total);
    
    }   else if(operacion == "multiplicacion"){
        total = numero1 * numero2;
        
        document.write("el total es :", total);
    } if(operacion == "resta"){
        total = numero1 - numero2;
        
        document.write("el total es :", total);
    } else if(operacion == "division"){
        total = numero1 / numero2;
        
        document.write("el total es :", total);
    }
    else{
        // document.write("hasta la proxima");
    }
    
   
    
    document.write("<p>");
} else{
    // alert("por favor ingresa datos de tipo numeros");
    if(typeof(numero1) == "string" || typeof(numero2) == "string"){
        alert("has introducido un texto , en vez de un numero");
    } else{
        alert("Error no identificado");
    }

} 
    


