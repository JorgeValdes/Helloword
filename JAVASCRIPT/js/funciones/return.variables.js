function calcularinva(valor){
    
    valor = prompt("ingrese el valor para calcular el iva");

    var total = valor* .19;

    // document.write("el valor del iva es ");
    return "el iva del "+valor+" es de : " + total;
}
//concepto de variables globales y locales en cualquiera d elos 2 casos

var total = "hola";

alert(total);
document.write(calcularinva());