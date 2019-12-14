// la idea de la funcion anonima ejecutable es evaluar las distintas funciones sin llamarlas
// (function saludar(){
    
//     alert("wena los kbroz");
// })();

// con los parentesis ejecuta atumaticamente aunque sea anonima


// saludar();

(function suma(numero1, numero2){
    var total = numero1 + numero2;
    alert(total);
})(1,2);

//autoejecutable en este caso no la estoy llamando 
var num1 = 5;
var num2 = 7;

function suma(){
    return num1 + num2;
}


alert(suma()); //alert para alguna funcion que se realize afuera