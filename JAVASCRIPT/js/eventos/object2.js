var seccion = document.getElementById('seccion');

function muestrainfo(eLEvento){

    var e = window.event || eLEvento;

    var ie= navigator.userAgent.toLowerCase().indexOf('msie')!=-1;

    // var coordenadasX = e.screenX;
    // var coordenadasY = e.screenY;
    coordenadasX;
    coordenadasY;
    
    
    if(ie){
    
         coordenadasX = e.clientX + document.body.scrollLeft;
         coordenadasY = e.clientX + document.body.scrollTop;
    } else {
        var coordenadasX = e.pageX;
        var coordenadasY = e.pageY;
    }

    seccion.innerHTML += "<p>Has pulsado el raton en la posicion :" + coordenadasX + " , " + coordenadasY + "</p>";


}

document.onclick = muestrainfo;
