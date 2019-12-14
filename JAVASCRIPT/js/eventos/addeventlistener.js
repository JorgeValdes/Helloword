// queda a la escucha de la interaccion de un cliente

// elemento_que_escucha.addEventListener("click", function , booelano)
var seccion, div, boton, boton2;
seccion = document.getElementsByTagName('section')[0];
div = document.getElementsByTagName('div')[0];
boton = document.getElementsByTagName('button')[0]; //me entra un array por eso el [0]
boton2 = document.getElementsByTagName('button')[1]; //me entra un array por eso el [0]



function lanzador() {

    function soySeccion() {
        alert('Hola soy la etiqueta section');
    }

    function soyDiv() {
        alert('Hola soy la etiqueta Div');
    }

    function soyBoton() {
        alert('Hola soy la etiqueta Boton');
    }

    seccion.addEventListener('click', soySeccion, true);
    div.addEventListener('click', soyDiv, true);
    boton.addEventListener('click', soyBoton, true);


    function lanzar() {
        alert("me has ejecutado primera y unica vez");
        boton2.removeEventListener('click', lanzar, false);
    }

    boton2.addEventListener('click', lanzar, false);
}

window.addEventListener('load', lanzador, false);
// boton.addEventListener('click', lanzador, false);

//removeEventlistener solamente se ejecutara una vez el codigo , al contrario con lo de arriba