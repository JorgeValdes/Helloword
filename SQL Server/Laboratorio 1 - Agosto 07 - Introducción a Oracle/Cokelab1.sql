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

