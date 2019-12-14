// alert("que pasa ");

// alert("aksdj")
      // alert("aksjdas");
      function write(cadena) {
        document.write(cadena+"<br>")
}

var cadena = "esto es una cadena";
var cadena2 = "esto es una cadena";
// var obj_cadena = new String("esto es una cadena");

write(cadena);
write(cadena.charAt(15));
write(cadena.length);
write(cadena.indexOf('una', 6));
write(cadena.lastIndexOf('Cadena', '15'));
write(cadena.replace('Cadena', 'nueva cadena'))
var convertido_array = cadena.split(' , ')
var convertido_array = cadena2.split(' , ')
write(convertido_array);
write(convertido_array[3]);
write(cadena.substring(5 ,15));
write(cadena.substr(5,15));
write(cadena.trim());
write(cadena.toLowerCase());
write(cadena.toUpperCase());
write(cadena.strike());
write(cadena.sup());
write(cadena.sub());
write(cadena.anchor("nombre_atributo_name"));
write(cadena.link("http://misitioweb.com"));

var num1 = 5, num2 = 7;
write(num1 + num2)
num1 = num1.toString();
write(num1+num2)