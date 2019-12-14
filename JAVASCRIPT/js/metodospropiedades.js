// document.getElementsByTagName("h1")[0].innerHTML = "Articulos"
//lista de funciones (unshift , push , pop , shit)
var articulos = ["libreta", "lapiz", "Borrador de goma", "bolso"];

document.write("<p>");

// articulos.length=5; //una tecnica de truncar es como cortar el array en este caso lo cortare en 2

// document.write(articulos.length, "<br>");

// document.write(articulos[3]);

document.write(articulos[0], "<br>");

articulos.unshift("estuche"); //le agrego un elemento al principo del arreglo

document.write(articulos[0], "<br>");

document.write(articulos[4] + "<br>");

articulos.push("sacapuntas", 25); //funcion le agrega un elemento al arreglo al final de este
//digamos que agregamos al arreglo el numero 25 de casualidad
document.write(articulos[5] + "<br>");

articulos.pop();  //elimina el articulo final del array
document.write(articulos[6] + "<br>");

document.write("cantidad del arreglo es : ", articulos.length-1 + "<br>");

document.write(articulos[0] + "<br>");

articulos.shift(); //elimina el primer articulo del array
document.write(articulos[0]);
document.write("<p>"); 