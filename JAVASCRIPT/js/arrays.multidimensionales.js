//arrays multidimensionales


var tridi = [];
tridi[0] = "carro";
tridi[1] = "moto";
tridi[2] = "avion";

var bidi = [];
bidi[0] = "pelota";
bidi[1] = "perro";
bidi[2] = "gato";
bidi[3] = tridi;

var uni = [];
uni[0] = bidi;



document.write("<p>");

document.write(uni[0][3][0] + "<br>");

//otra forma de hacerlo
var arraymulti = ["auto", "carro", ["jorge", "ignacio", "alfredo", ["perez", "valdes"]], "avion"];

document.write(arraymulti[2][3]);




document.write("<p>");