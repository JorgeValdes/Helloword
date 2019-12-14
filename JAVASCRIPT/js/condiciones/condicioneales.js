var numero1 = parseInt(prompt("introduce el primero numero"));
var numero2 = parseInt(prompt("introduce el segundo numero"));

var operacion = prompt("que tipo de operacion deseas realizar (suma/resta/multiplicacion/division)").toLowerCase();
document.write("<p>");
// document.write(operacion);
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
if( operacion != "suma" || operacion != "resta" || operacion !="multiplicacion" || operacion != "division"){
    alert("introduzca un nombre valido de operacion");
}
else{
    document.write("hasta la proxima");
}


document.write("<p>");