/*var evento = window.event;

function resalta(elEvento){
    var evento = elEvento || window.event;
    var tipo = evento.type;

    switch(tipo){
        case 'mouseover':
            this.style.borderColor ='white'
            this.style.backgroundColor ='black'
        break;

        case 'mouseout':
            this.style.borderColor ='black'
            this.style.backgroundColor ='white'
        break;
    }
}

var seccion = document.getElementById('seccion');

window.onload = function(){
    seccion.onmouseover = resalta;
    seccion.onmouseout = resalta;
    
}*/
var seccion = document.getElementById('seccion');

function muestrainfo(elEvento){
    var e = window.event || elEvento;
    var info = "Tipo de evento : " + e.type + "<br>" + 
    "propiedad keyCode: " + e.keyCode + "<br>" +
    "propiedad charCode: " + e.charCode + "<br>" +
    "caracter pulsado :" + String.fromCharCode(e.charCode);
    seccion.innerHTML += "<p>" + info + "</p> -------------";

    if( e.altKey){
        alert("la tecla AlT fue pulsada");
    }else if( e.ctrlkey){
        alert('la tecla Control fue pulsada');
    }else if( e.shiftKey){
        alert('la tecla Shift fue pulsada');
    }

    if( e.ctrlkey && e.charCore === 115){
        //guardar contenido
    }
}

window.onload = function(){
    document.onkeyup = muestrainfo;
    document.onkeypress = muestrainfo;
    document.onkeydown = muestrainfo;

}