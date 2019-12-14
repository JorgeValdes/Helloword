// function dentro de otra funcion 

// function iniciar(){
//     var nombre;
//     nombre = prompt("indique su nombre");
//     function mostrarnombre(){
//     alert("el nombre es : " + nombre);
//     }
//     mostrarnombre();
       
// }

// iniciar();

// autofuncion 

// (function iniciar(){
//     var nombre;
//     nombre = prompt("indique su nombre");
//     function mostrarnombre(){
//     alert("el nombre es : " + nombre);
//     }
//     mostrarnombre();
       
// })();

// console.log("wena los k");

var operacion = function(){
    var valor = 0;
    var incrementar = function(){
        return valor+=5;
    }
    return incrementar;
}

var ejecutar = operacion();

// console.log(ejecutar());
// console.log(ejecutar());
// console.log(ejecutar());
// console.log(ejecutar());

function log(n){
    console.log(n);
}

function write(x){
    document.write(x+"<br>")
}

function crearSumador(n){

    return function(m){
        return n + m;
    }

}

var suma10 = crearSumador(10);
var suma20 = crearSumador(20);

log(suma10(5));
//log(1);
//write(ejecutar());

function creartamanos (pixeles){
    return function() {
    document.body.style.fontSize = pixeles+'px';
    }
}

var tamano14 = creartamanos(14);
var tamano18 = creartamanos(18);
var tamano24 = creartamanos(24);

document.getElementById('tamano14').onclick = tamano14;
document.getElementById('tamano18').onclick = tamano18;
document.getElementById('tamano24').onclick = tamano24;

