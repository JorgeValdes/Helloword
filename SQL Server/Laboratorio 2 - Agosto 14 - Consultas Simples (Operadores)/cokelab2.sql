--modelo a programar para este curso
/*
drop table cliente;
drop table boleta;
drop table detalle;
drop table productos;

*/


create table cliente (

    rut int not null,
    nombre VARCHAR(30),
    apellidos VARCHAR(50),
    correo VARCHAR(50),
    edad int CHECK(edad > 18)
)

CREATE table boleta (

    codigo_boleta int not NULL,
    rut int not null,
    fecha date,
    total INT
)

create table detalle (
    codigo_producto int not null,
    codigo_boleta int not null,
    cantidad int,
    total INT
)

create table productos(
    codigo_producto int not null,
    nombre VARCHAR(20),
    precio int,
    categoria VARCHAR(20)

)

--Lenguaje  de manipulacion de los datos
/*
    Lenguaje proporcionado por el gestor de base de datos para llevar a cabos tareas de consulta y manipulacion de los datos

    Siguientes sentencias

    Sentencia de insercion(Insert)
    Sentencia de modificacion(update)
    Sentenecia de eliminacion (delete)
    Sentencia de consulta (select)
*/

/*
Sentencia de insercion 
INSERT INTO NOMBRE_TABLA(COLUMNAS) VALUES(VALORES);

SELECT * FROM cliente;
insert into cliente(rut) VALUes('19104897-0');

Sentencia de Update
UPDATE NOmbre_tabla set columna1 = valor1, columna2 = valor2 where columna operator valor
*UPDATE productos SET nombre = 'NOTEBOOK LENOVO' WHERE codigo_producto = 1;

*/

--SENTENCIA DELETE
--DELETE FROM NOMBRE_TABLA WHERE COLUMNA OPERATOR VALOR

DELETE FROM productos;
select * from productos

INSERT INTO productos VALUES ('1', 'Notebook Lenovo', 380.000, 'PORTABLES')
INSERT INTO PRODUCTOS(codigo_producto,NOMBRE, PRECIO , CATEGORIA) VALUES (1,'Notebook Lenovo',380.000,'Portables');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES(2, 'CELULAR MOTOROLA', 110.000, ' TECNOLOGIA');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE , PRECIO , CATEGORIA) VALUES (3,'AUDIFONOS MACROTEL',3.500,'AUDIO');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (4, 'NOTEBOOK SAMSUNG',500.000, 'PORTABLES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES (5,'PANTALLA 17" AOC',67.900,'MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES (6,'PANTALLA 21" DELL',81.900, 'MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (7,'NOTEBOOK HP',280.990,'PORTABLES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (8, 'CELULAR IPHONE 6S',560.000,'TECNOLOGIA');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (9,'CELULAR LG',450.000,'TECNOLOGIA');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (10,'MOUSE BLUETOOH',28.990,'ACCESORIOS');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES (11,'MONITOR 17 " SAMSUNG',150.000, ' MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE , PRECIO , CATEGORIA) VALUES (12,'MONITOR 17 " LENOVO',250.000, 'MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (13, 'MONITOR 17 "LG', 125.000, 'MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE , PRECIO ,CATEGORIA) VALUES (14, 'MONITOR 15" LENOVO0',200.000, 'MONITORES');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES(16, 'MOTO G 2015',180.000,'TECNOLOGOIA');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO, CATEGORIA) VALUES (17, 'MOTO X PLAY',370.000,'TECNOLOGIA');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES (18,'IPAN MINI 2',200.000,'TABLETS');
INSERT INTO PRODUCTOS(codigo_producto, NOMBRE, PRECIO , CATEGORIA) VALUES (19,'IPAD AIR',260.000,'TABLETS');
INSERT INTO PRODUCTOS VALUES (20,'NOTEBOOK MSI',850000,'PORTABLES');
INSERT INTO PRODUCTOS VALUES (21,'MOUSE MICROSOFT',8500,'ACCESORIOS');

SELECT * FROM productos;
delete FROM productos WHERE codigo_producto =1 and categoria = 'Portables';

/*
    funcion select la mas importante de todas , posee la mayor cantidad de operadores, funciones e instrucciones para realizar las consultas
    consultas con operadores y manejo de funciones

    Operador de compuesto

    AND Verdado si todas las condiciones por separado son VERDADERO
    VERDADERO si el operador está en el
    BETWEEN rango de comparación
    VERDADERO si la subconsulta retorna una
    EXISTS
    o más filas
    VERDADERO si el operador es igual a un
    IN
    elemento de la lista de expresiones
    VERDADERO si el operador coincide con
    LIKE
    el patrón
    Muestra el resultado si la condición NO ES
    NOT
    VERDADERA
    VERDADERO si alguna de las condiciones
    OR
    por separado es VERDADERO
*/

--operador compuesto and
SELECT * FROM productos;
SELECT NOMBRE, PRECIO FROM productos WHERE PRECIO > 100;

