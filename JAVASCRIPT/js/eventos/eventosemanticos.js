

function mostrarmensaje(){
    alert("me has presionado :)")
}

function entrar(){
    alert("has entrado en la funcion");
}

function salir(){
    alert("has salido de la funcion");
}
window.onload = function(){
document.getElementById('presioname').onclick = mostrarmensaje;

    var seccion = document.getElementById('mouse');

    seccion.onmouseover = entrar;
    seccion.onmouseout = salir;
}
// mostrarmensaje(); //por que no la estamos llamanod asi nostros necesitamos que al realizar el click , llame la funcion
