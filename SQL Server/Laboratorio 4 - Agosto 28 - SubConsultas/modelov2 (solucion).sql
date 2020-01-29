drop table detalle;
drop table boleta;
drop table producto;
drop table categoria;
drop table cliente;

create table producto(
    codigo_producto number not null,
    nombre varchar2(20),
    precio number,
    codigo_categoria number,
    stock number    
);
/
create table categoria(
    codigo_categoria number not null,
    nombre_categoria varchar2(20)
);
/
create table detalle(
    codigo_producto number not null,
    codigo_boleta number not null,
    cantidad number,
    precio_unitario number,
    total number
);
/
create table cliente(
    rut number not null,
    nombre varchar2(30),
    apellidos varchar2(50),
    correo varchar2(50),
    edad number
);
/
create table boleta(
    codigo_boleta number not null,
    rut number,
    fecha date,
    total number
);

/
alter table categoria add constraint pk_categoria primary key(codigo_categoria);
alter table producto add constraint pk_productos primary key(codigo_producto);
alter table detalle add constraint pk_detalle primary key(codigo_producto, codigo_boleta);
alter table cliente add constraint pk_cliente primary key(rut);
alter table boleta add constraint pk_boleta primary key(codigo_boleta);

alter table producto add constraint fk_producto foreign key(codigo_categoria) references categoria(codigo_categoria);
alter table detalle add constraint fk_detalle_1 foreign key(codigo_producto) references producto(codigo_producto);
alter table detalle add constraint fk_detalle_2 foreign key(codigo_boleta) references boleta(codigo_boleta);
alter table boleta add constraint fk_boleta foreign key(rut) references cliente(rut);

/

INSERT INTO CATEGORIA VALUES(1,'PORTABLES');
INSERT INTO CATEGORIA VALUES(2,'TECNOLOGIA');
INSERT INTO CATEGORIA VALUES(3,'AUDIO');
INSERT INTO CATEGORIA VALUES(4,'MONITORES');
INSERT INTO CATEGORIA VALUES(5,'ACCESORIOS');
INSERT INTO CATEGORIA VALUES(6,'TABLETS');

INSERT INTO PRODUCTO VALUES (1,'NOTEBOOK LENOVO',380000,1,20);
INSERT INTO PRODUCTO VALUES (2,'CELULAR MOTOROLA',110000,2,15);
INSERT INTO PRODUCTO VALUES (3,'AUDIFONOS MACROTEL',3500,3,12);
INSERT INTO PRODUCTO VALUES (4,'NOTEBOOK SAMSUNG',500000,1,3);
INSERT INTO PRODUCTO VALUES (5,'MONITOR 17" AOC',67990,4,80);
INSERT INTO PRODUCTO VALUES (6,'MONITOR 21" DELL',81990,4,20);
INSERT INTO PRODUCTO VALUES (7,'NOTEBOOK HP',280990,1,1);
INSERT INTO PRODUCTO VALUES (8,'CELULAR IPHONE 6S',560000,2,6);
INSERT INTO PRODUCTO VALUES (9,'CELULAR LG',450000,2,7);
INSERT INTO PRODUCTO VALUES (10,'MOUSE BLUETOOTH',28990,5,9);
INSERT INTO PRODUCTO VALUES (11,'MONITOR 17" SAMSUNG',150000,4,7);
INSERT INTO PRODUCTO VALUES (12,'MONITOR 17" LENOVO',250000,4,7);
INSERT INTO PRODUCTO VALUES (13,'MONITOR 17" LG',125000,4,4);
INSERT INTO PRODUCTO VALUES (14,'MONITOR 15" LENOVO',200000,4,3);
INSERT INTO PRODUCTO VALUES (15,'MOTO G 2013',130000,2,45);
INSERT INTO PRODUCTO VALUES (16,'MOTO G 2015',180000,2,32);
INSERT INTO PRODUCTO VALUES (17,'MOTO X PLAY',370000,2,12);
INSERT INTO PRODUCTO VALUES (18,'IPAD MINI 2',200000,6,4);
INSERT INTO PRODUCTO VALUES (19,'IPAD AIR',260000,6,2);
INSERT INTO PRODUCTO VALUES (20,'NOTEBOOK MSI',850000,1,4);
INSERT INTO PRODUCTO VALUES (21,'MOUSE MICROSOFT',8500,5,5);

INSERT INTO CLIENTE VALUES (145375682,'Alejandro','Sepulveda','alesepulveda@hotmail.com',39);
INSERT INTO CLIENTE VALUES (204821232,'Francisca','Perez','fran__xdperez2000@gmail.com',18);
INSERT INTO CLIENTE VALUES (185756203,'Felipe','Tapia','ftapia46@gmail.com',25);
INSERT INTO CLIENTE VALUES (85762340,'Camila','Fernandez','cfernandez@ucm.cl',58);
INSERT INTO CLIENTE VALUES (183447872,'Javiera','Faundez','javi_faundez94@gmail.com',24);
INSERT INTO CLIENTE VALUES (175682842,'Carlos','Hernandez','carlos_herna91@gmail.com',28);

INSERT INTO BOLETA VALUES (2,145375682,'14/08/2019',0);
INSERT INTO BOLETA VALUES (1,145375682,'12/07/2019',0);
INSERT INTO BOLETA VALUES (3,145375682,'17/08/2019',0);
INSERT INTO BOLETA VALUES (4,145375682,'24/08/2019',0);
INSERT INTO BOLETA VALUES (5,204821232,'12/08/2019',0);
INSERT INTO BOLETA VALUES (6,204821232,'16/08/2019',0);
INSERT INTO BOLETA VALUES (7,183447872,'02/09/2019',0);
INSERT INTO BOLETA VALUES (8,85762340,'10/09/2019',0);
INSERT INTO BOLETA VALUES (9,183447872,'16/09/2019',0);
INSERT INTO BOLETA VALUES (10,145375682,'20/09/2019',0);
INSERT INTO BOLETA VALUES (11,85762340,'01/10/2019',0);
INSERT INTO BOLETA VALUES (12,204821232,'11/10/2019',0);
INSERT INTO BOLETA VALUES (13,185756203,'12/10/2019',0);
INSERT INTO BOLETA VALUES (14,183447872,'05/11/2019',0);
INSERT INTO BOLETA VALUES (15,145375682,'08/11/2019',0);
INSERT INTO BOLETA VALUES (16,185756203,'12/12/2019',0);
INSERT INTO BOLETA VALUES (17,204821232,'12/12/2019',0);
INSERT INTO BOLETA VALUES (18,85762340,'21/12/2019',0);


INSERT INTO DETALLE VALUES(1,1,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 1), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 1)*1);  
INSERT INTO DETALLE VALUES(21,1,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 21), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 21)*1);  
INSERT INTO DETALLE VALUES(2,2,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 2), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 2)*1);                                                                
INSERT INTO DETALLE VALUES(6,3,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 6), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 6)*1);  
INSERT INTO DETALLE VALUES(3,4,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 3), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 3)*1); 
INSERT INTO DETALLE VALUES(17,5,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 17), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 17)*1); 
INSERT INTO DETALLE VALUES(17,6,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 17), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 17)*1); 
INSERT INTO DETALLE VALUES(19,7,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 19), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 19)*1);
INSERT INTO DETALLE VALUES(21,8,2,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 21), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 21)*2);                                                                
INSERT INTO DETALLE VALUES(2,9,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 2), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 2)*1); 
INSERT INTO DETALLE VALUES(8,10,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 8), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 8)*1);                                                                
INSERT INTO DETALLE VALUES(3,11,2,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 3), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 3)*2);   
INSERT INTO DETALLE VALUES(7,12,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 7), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 7)*1); 
INSERT INTO DETALLE VALUES(19,13,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 19), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 19)*1);       
INSERT INTO DETALLE VALUES(20,13,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 20), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 20)*1);   
INSERT INTO DETALLE VALUES(21,13,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 21), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 21)*1);   
INSERT INTO DETALLE VALUES(6,13,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 6), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 6)*1);
INSERT INTO DETALLE VALUES(2,14,3,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 2), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 2)*3);
INSERT INTO DETALLE VALUES(5,14,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 5), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 5)*1);     
INSERT INTO DETALLE VALUES(10,15,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 10), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 10)*1);                                                                    
INSERT INTO DETALLE VALUES(9,15,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 9), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 9)*1);                                                              
INSERT INTO DETALLE VALUES(10,16,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 10), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 10)*1);       
INSERT INTO DETALLE VALUES(15,17,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 15), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 15)*1);  
INSERT INTO DETALLE VALUES(20,18,1,(SELECT PRECIO
                                  FROM PRODUCTO
                                  WHERE CODIGO_PRODUCTO = 20), (SELECT PRECIO
                                                               FROM PRODUCTO
                                                               WHERE CODIGO_PRODUCTO = 20)*1);                                                                    
-------------------------> SOLO EJECUTAR UNA VEZ <-------------------------------
UPDATE BOLETA B
SET B.TOTAL = (SELECT SUM(D.TOTAL) FROM DETALLE D WHERE D.CODIGO_BOLETA = B.CODIGO_BOLETA);

--------------------> CONSULTA DE COMPROBACIÓN <---------------------------------
-- SI LOS VALORES ENTRE TOTAL Y TOTAL_DETALLE SON IGUALES, TODO SALIÓ BIEN
SELECT B.RUT, B.TOTAL AS TOTAL, SUM(D.TOTAL) AS TOTAL_DETALLE FROM BOLETA B JOIN DETALLE D
ON B.CODIGO_BOLETA = D.CODIGO_BOLETA
GROUP BY B.RUT, B.TOTAL;

------------------------> SECCIÓN DE CONSULTAS CON AGRUPACION Y SUBCONSULTAS<--------------------------
--CONSULTA 1
--MUESTRE LOS CLIENTES QUE SON MAYORES A LA EDAD DE "Carlos Hernandez"
--RUT, NOMBRE Y APELLIDOS (CONCATENADOS LOS 3) CON EL SIGUIENTE FORMATO
--EJ: CLIENTE RUT: 185756203 - FELIPE TAPIA (MAYUSCULAS)
SELECT CONCAT(CONCAT(CONCAT('CLIENTE RUT: ',RUT),' - '),CONCAT(CONCAT(UPPER(NOMBRE),' '),UPPER(APELLIDOS))) AS CLIENTE
FROM CLIENTE 
WHERE EDAD > (SELECT EDAD
              FROM CLIENTE
              WHERE NOMBRE = 'Carlos' 
              AND APELLIDOS = 'Hernandez');
              
--CONSULTA 2
--MUESTRE TODOS LOS CLIENTES QUE COMPRARON PRODUCTOS ENTRE JULIO Y SEPTIEMBRE
--DEBE MOSTRAR RUT, NOMBRE (UTILICE JOIN)
SELECT C.RUT, C.NOMBRE
FROM CLIENTE C JOIN BOLETA B
ON C.RUT = B.RUT
WHERE EXTRACT(MONTH FROM FECHA) BETWEEN 07 AND 09
GROUP BY C.RUT, C.NOMBRE;

--CONSULTA 3
--REALICE LA CONSULTA ANTERIOR, PERO SIN UTILIZAR JOIN (USE SUBCONSULTA)
SELECT RUT, NOMBRE
FROM CLIENTE
WHERE RUT IN (SELECT RUT 
              FROM BOLETA
              WHERE EXTRACT(MONTH FROM FECHA) BETWEEN 07 AND 09);

--CONSULTA 4 
--MUESTRE LA CANTIDAD TOTAL DE VENTAS POR CLIENTE QUE SON MAYORES AL PROMEDIO DE VENTAS MULTIPLICADO POR 3
--DEBE MOSTRAR EL RUT, NOMBRE DEL CLIENTE (EN MAYUSCULAS) Y EL TOTAL DE LAS VENTAS
--DEBE ORDENAR EL RESULTADO POR LA CANTIDAD TOTAL DE VENTAS EN FORMA DESCENDENTE
SELECT C.RUT, UPPER(C.NOMBRE) AS NOMBRE, SUM(B.TOTAL) AS TOTAL_DE_VENTAS
FROM CLIENTE C JOIN BOLETA B
ON C.RUT = B.RUT
GROUP BY C.RUT, C.NOMBRE
HAVING SUM(B.TOTAL) > (SELECT AVG(TOTAL)*3 FROM BOLETA)
ORDER BY TOTAL_DE_VENTAS DESC;

--CONSULTA 5 
--MUESTRE LA CANTIDAD TOTAL DE VENTAS POR CLIENTE Y MES
--DEBE MOSTRAR EL RUT, NOMBRE Y APELLIDO DEL CLIENTE (EN MAYUSCULAS Y CONCATENADO), NOMBRE DEL MES DE LA COMPRA Y TOTAL DE LAS VENTAS
--ORDENAR EL MES DE ACUERDO AL ORDEN DEL CALENDARIO
--HAY QUE AGRUPAR POR EL NÚMERO DEL MES PRIMERO, DESPUÉS ESE NÚMERO HABRÁ QUE CONVERTIRLO A "NOMBRE"
--PARA ESO, HABRÁ QUE HACER UNA SUBCONSULTA Y UTILIZAR LAS FUNCIONES TO_CHAR Y TO_DATE
SELECT RUT, NOMBRE_COMPLETO, TO_CHAR(TO_DATE(FECHA,'MM'),'MONTH') AS FECHA, TOTAL_DE_VENTAS FROM 
    (SELECT C.RUT, CONCAT(CONCAT(UPPER(C.NOMBRE),' '),UPPER(C.APELLIDOS)) AS NOMBRE_COMPLETO, 
    EXTRACT(MONTH FROM B.FECHA) AS FECHA, SUM(B.TOTAL) AS TOTAL_DE_VENTAS
    FROM CLIENTE C JOIN BOLETA B
    ON C.RUT = B.RUT
    GROUP BY C.RUT, C.NOMBRE, C.APELLIDOS, EXTRACT(MONTH FROM FECHA)
    ORDER BY FECHA);

--CONSULTA 6
--MUESTRE EL LA CANTIDAD DE PRODUCTOS QUE SE COMPRAN POR CADA MES
--DEBE MOSTRAR SOLAMENTE EL NOMBRE DEL MES, LA CANTIDAD DE PRODUCTOS
--ORDENAR EL MES DE ACUERDO AL ORDEN DEL CALENDARIO
SELECT NOMBRE_MES, CANTIDAD_PRODUCTOS_VENDIDOS FROM (SELECT EXTRACT(MONTH FROM B.FECHA) AS NUMERO_MES, TO_CHAR(B.FECHA,'MONTH') AS NOMBRE_MES, 
SUM(D.CANTIDAD) AS CANTIDAD_PRODUCTOS_VENDIDOS
FROM BOLETA B JOIN DETALLE D
ON B.CODIGO_BOLETA = D.CODIGO_BOLETA
GROUP BY EXTRACT(MONTH FROM B.FECHA), TO_CHAR(B.FECHA,'MONTH')
ORDER BY NUMERO_MES);


--CONSULTA 7 
--CONDICIONAR LA CONSULTA 5 PARA MOSTRAR SOLAMENTE EL TOTAL DE VENTAS POR CLIENTE Y MES
--DONDE EL TOTAL DE VENTAS SEA MAYOR AL PROMEDIO DE TODAS LAS VENTAS QUE SE HAN REALIZADO
SELECT C.RUT, CONCAT(CONCAT(UPPER(C.NOMBRE),' '),UPPER(C.APELLIDOS)) AS NOMBRE_COMPLETO, 
TO_CHAR(B.FECHA, 'MONTH') AS NOMBRE_MES, SUM(B.TOTAL) AS TOTAL_DE_VENTAS
FROM CLIENTE C JOIN BOLETA B
ON C.RUT = B.RUT
GROUP BY C.RUT, C.NOMBRE, C.APELLIDOS, B.FECHA
HAVING SUM(B.TOTAL) > (SELECT AVG(TOTAL) FROM BOLETA)
ORDER BY EXTRACT(MONTH FROM FECHA);

--CONSULTA 8
--OBTENGA LOS PRODUCTOS QUE COMPRÓ ALEJANDRO SEPULVEDA 
--EL 24 DE AGOSTO Y EL 08 DE NOVIEMBRE
--**SOLO UTILIZANDO SUBCONSULTAS**
--DEBE MOSTRAR CODIGO Y NOMBRE DEL PRODUCTO
SELECT CODIGO_PRODUCTO, NOMBRE
FROM PRODUCTO
WHERE CODIGO_PRODUCTO IN (SELECT CODIGO_PRODUCTO
                          FROM DETALLE 
                          WHERE CODIGO_BOLETA IN (SELECT CODIGO_BOLETA
                                                  FROM BOLETA
                                                  WHERE RUT = (SELECT RUT
                                                              FROM CLIENTE
                                                              WHERE UPPER(NOMBRE) = 'ALEJANDRO'
                                                              AND UPPER(APELLIDOS) = 'SEPULVEDA')
                                                  AND FECHA BETWEEN '24/08/2019' AND '08/11/2019'));
                                                              
--CONSULTA 9
--REALICE LA MISMA CONSULTA ANTERIOR, PERO UTILIZANDO SOLAMENTE JOIN
SELECT P.CODIGO_PRODUCTO, P.NOMBRE
FROM PRODUCTO P JOIN DETALLE D
ON P.CODIGO_PRODUCTO = D.CODIGO_PRODUCTO
JOIN BOLETA B
ON D.CODIGO_BOLETA = B.CODIGO_BOLETA
JOIN CLIENTE C
ON B.RUT = C.RUT
WHERE B.FECHA BETWEEN '24/08/2019' AND '08/11/2019'
AND UPPER(C.NOMBRE) = 'ALEJANDRO'
AND UPPER(C.APELLIDOS) = 'SEPULVEDA';

--CONSULTA 10 (INSERTE MEME DE THANOS IMPOSSIBLE AQUI)
--MUESTRE TODOS LOS PRODUCTOS QUE COMPRÓ EL CLIENTE CON EL TOTAL DE BOLETA MÁS ALTO
--MUESTRE CODIGO Y NOMBRE DEL PRODUCTO (con join, subconsulta, magia, como pueda, da igual)
SELECT P.CODIGO_PRODUCTO, P.NOMBRE
FROM PRODUCTO P JOIN DETALLE D
ON P.CODIGO_PRODUCTO = D.CODIGO_PRODUCTO
JOIN BOLETA B
ON B.CODIGO_BOLETA = D.CODIGO_BOLETA
WHERE B.RUT = (SELECT RUT
FROM BOLETA
GROUP BY RUT
HAVING SUM(TOTAL) = (SELECT MAX(TOTAL_BOLETA) FROM (SELECT RUT, SUM(TOTAL) AS TOTAL_BOLETA
                FROM BOLETA
                GROUP BY RUT)));

SELECT CODIGO_PRODUCTO, NOMBRE
FROM PRODUCTO
WHERE CODIGO_PRODUCTO IN (SELECT CODIGO_PRODUCTO
                          FROM DETALLE
                          WHERE CODIGO_BOLETA IN (SELECT CODIGO_BOLETA
                                                  FROM BOLETA
                                                  WHERE RUT = (SELECT RUT
                                                               FROM BOLETA
                                                               GROUP BY RUT
                                                               HAVING SUM(TOTAL) = (SELECT MAX(TOTAL_BOLETA) FROM (SELECT RUT, SUM(TOTAL) AS TOTAL_BOLETA
                                                                                    FROM BOLETA
                                                                                    GROUP BY RUT)))));

SELECT P.CODIGO_PRODUCTO, P.NOMBRE
FROM PRODUCTO P JOIN DETALLE D
ON P.CODIGO_PRODUCTO = D.CODIGO_PRODUCTO
JOIN BOLETA B
ON B.CODIGO_BOLETA = D.CODIGO_BOLETA
WHERE B.RUT = (SELECT RUT
               FROM BOLETA
               GROUP BY RUT
               HAVING SUM(TOTAL) = (SELECT TOTAL_BOLETA FROM (SELECT SUM(TOTAL) AS TOTAL_BOLETA
                                    FROM BOLETA
                                    GROUP BY RUT
                                    ORDER BY TOTAL_BOLETA DESC)
                                    WHERE ROWNUM = 1));

--CONSULTA 11
--MUESTRE LA CANTIDAD DE PRODUCTOS SAMSUNG, MOTOROLA Y LENOVO QUE SE HAN VENDIDO
--DEBE MOSTRAR EL CÓDIGO, NOMBRE DEL PRODUCTO Y LA CANTIDAD QUE SE HA VENDIDO
SELECT P.CODIGO_PRODUCTO, P.NOMBRE, SUM(D.CANTIDAD) AS CANTIDAD
FROM PRODUCTO P JOIN DETALLE D
ON P.CODIGO_PRODUCTO = D.CODIGO_PRODUCTO
WHERE P.NOMBRE LIKE '%LENOVO%'
OR P.NOMBRE LIKE '%SAMSUNG%'
OR P.NOMBRE LIKE '%MOTOROLA%'
OR P.NOMBRE LIKE '%MOTO%'
GROUP BY P.CODIGO_PRODUCTO, P.NOMBRE;

