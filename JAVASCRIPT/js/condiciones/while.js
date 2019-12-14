// 2 tipos de bucles determinados for
//  tipos de bucles indeterminados while , do while

var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre","Noviembre", "Diciembre"];

var contador = 0;

while(contador<meses.length){
    document.write("<tr>");
    document.write("<td>");

    document.write(contador+1);
    document.write("</td>");

    document.write("<td>");

    document.write(meses[contador]);
    
    document.write("</td>");
    document.write("</tr>");

    contador++;
}

alert(contador);