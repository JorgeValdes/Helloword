// for(var contador =2; contador <=500 ; contador+=50 ){
//     document.write(contador + "<br>");
    
// }

// document.write("el contador quedo en : ", contador);


// for(var i=1; i<=10; i++){

//     document.write(Tabla de multiplicar)

//     for( var x=1; x<=10; x++){
//         // document.write("+i+", "x" , + (i*x);
//     }
// }

// for anidados dentro de todo para hacer una aplicacion de multiplicacion

for(var contador =1; contador<=10; contador++){
    // document.write(contador +"<br>");

    if( contador ==4 ){
        continue;
        
    }
    if(contador == 5){
        continue;
    }
    for(var x=1; x<=10; x++){
        document.write(contador + "x" + x + " : " + contador * x, "<br>");
    }
}