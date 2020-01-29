drop table detalle;
drop table boleta;
drop table carrito;
drop table producto;
drop table cliente;
drop table medio_pago;
drop table tipo_pago;
drop table categoria;
drop table empleado;
drop table usuario;

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
create table usuario(
    rut number not null,
    contrasena varchar2(30) not null,
    tipo_usuario varchar2(10) not null,
    nombre varchar2(30),
    apellidos varchar2(50),
    correo varchar2(50),
    edad number
);
/
create table cliente(
    rut number not null,
    tipo_usuario varchar2(10) default 'CLIENTE',
    estado varchar2(10) default  'ACTIVO'
);
/
create table empleado(
    rut number not null,
    tipo_usuario varchar2(10) default 'EMPLEADO',
    fecha_contrato date,
    salario number
);
/
create table boleta(
    codigo_boleta number not null,
    rut_cliente number,
    rut_empleado number,
    fecha date,
    total number
);
/
create table carrito(
    codigo_producto number not null,
    rut number not null,
    cantidad number,
    precio_unitario number
);
/
create table medio_pago(
    codigo_boleta number not null,
    codigo_pago number not null,
    total_pago number
);
/
create table tipo_pago(
    codigo_pago number,
    descripcion varchar2(30)
);
/
alter table categoria add constraint pk_categoria primary key(codigo_categoria);
alter table producto add constraint pk_productos primary key(codigo_producto);
alter table detalle add constraint pk_detalle primary key(codigo_producto, codigo_boleta);
alter table usuario add constraint pk_usuario primary key(rut, tipo_usuario);
alter table empleado add constraint pk_empleado primary key(rut);
alter table cliente add constraint pk_cliente primary key(rut);
alter table boleta add constraint pk_boleta primary key(codigo_boleta);
alter table carrito add constraint pk_carrito primary key(codigo_producto, rut);
alter table medio_pago add constraint pk_medio_pago primary key(codigo_boleta, codigo_pago);
alter table tipo_pago add constraint pk_tipo_pago primary key(codigo_pago);
/
alter table producto add constraint fk_producto foreign key(codigo_categoria) references categoria(codigo_categoria);
alter table carrito add constraint fk_carrito_cliente foreign key(rut) references cliente(rut);
alter table carrito add constraint fk_carrito_producto foreign key(codigo_producto) references producto(codigo_producto);
alter table detalle add constraint fk_detalle_1 foreign key(codigo_producto) references producto(codigo_producto);
alter table detalle add constraint fk_detalle_2 foreign key(codigo_boleta) references boleta(codigo_boleta);
alter table boleta add constraint fk_boleta_cliente foreign key(rut_cliente) references cliente(rut);
alter table boleta add constraint fk_boleta_empleado foreign key(rut_empleado) references empleado(rut);
alter table cliente add constraint fk_cliente_usuario foreign key(rut,tipo_usuario) references usuario(rut,tipo_usuario);
alter table empleado add constraint fk_empleado_usuario foreign key(rut,tipo_usuario) references usuario(rut,tipo_usuario);
alter table medio_pago add constraint fk_medio_pago_boleta foreign key(codigo_boleta) references boleta(codigo_boleta);
alter table medio_pago add constraint fk_medio_pago_tipo_pago foreign key(codigo_pago) references tipo_pago(codigo_pago);
/

SET SERVEROUTPUT ON;

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

SET SERVEROUTPUT ON;

DECLARE
    CODIGOP NUMBER;
    NOMBREP VARCHAR2(30);
    PRECIOP NUMBER;
    CODIGOC NUMBER;
    STOCKP NUMBER;
    CURSOR PRODUCTOS IS SELECT * FROM PRODUCTO;
BEGIN
    OPEN PRODUCTOS;
    LOOP
        FETCH PRODUCTOS INTO CODIGOP,NOMBREP,PRECIOP,CODIGOC,STOCKP;
        DBMS_OUTPUT.PUT_LINE('LEYENDO LA FILA: '||PRODUCTOS%ROWCOUNT);
        IF STOCKP > 12 THEN
            DBMS_OUTPUT.PUT_LINE('CODIGO: '||CODIGOP||' - NOMBRE: '||NOMBREP); 
        END IF;
        EXIT WHEN PRODUCTOS%NOTFOUND;
    END LOOP;
    CLOSE PRODUCTOS;
END;

DROP SEQUENCE GENERADOR_PK_PRODUCTO;
CREATE SEQUENCE GENERADOR_PK_PRODUCTO
START WITH 1
INCREMENT BY 1
MAXVALUE 10000;

DECLARE
    NUMERO NUMBER;
BEGIN
    NUMERO := GENERADOR_PK_PRODUCTO.NEXTVAL;
    DBMS_OUTPUT.PUT_LINE('EL NÚMERO OBTENIDO ES: '||NUMERO);
END;

--************************************************* SOLUCION DEL PROBLEMA *******************************************************
-- EL PDF PIDE REALIZAR PROCEDIMIENTOS DE INSERCIÓN, MODIFICACIÓN Y BORRADO PARA LAS TABLAS CLIENTE, BOLETA, DETALLE, PRODUCTO
-- Y CARRITO. A MODO DE EJEMPLO, DEJO AQUÍ LA SOLUCIÓN DE LOS PROCEDIMIENTOS MENCIONADOS ANTERIORMENTE SOLO PARA LA TABLA
-- PRODUCTO. EL RESTO DE LOS PROCEDIMIENTOS QUEDA COMO TAREA PARA QUE PRACTIQUEN

CREATE OR REPLACE FUNCTION VERIFICAR_CATEGORIA(
    CODIGO IN NUMBER
)RETURN BOOLEAN
IS
    EXISTE NUMBER;
BEGIN
    SELECT COUNT(*) INTO EXISTE FROM CATEGORIA WHERE CODIGO_CATEGORIA = CODIGO;
    IF EXISTE > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN FALSE;
END;

CREATE OR REPLACE FUNCTION VERIFICAR_PRODUCTO(
    CODIGO IN NUMBER
)RETURN BOOLEAN
IS
    EXISTE NUMBER;
BEGIN
    SELECT COUNT(*) INTO EXISTE FROM PRODUCTO WHERE CODIGO_PRODUCTO = CODIGO;
    IF EXISTE > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN FALSE;
END;



CREATE OR REPLACE PROCEDURE AGREGAR_PRODUCTO(
    CODIGOP IN PRODUCTO.CODIGO_PRODUCTO%TYPE,
    NOMBREP IN PRODUCTO.NOMBRE%TYPE,
    PRECIOP IN PRODUCTO.PRECIO%TYPE,
    CATEGORIAP IN PRODUCTO.CODIGO_CATEGORIA%TYPE,
    STOCKP IN PRODUCTO.STOCK%TYPE,
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    PRODUCTO_EXISTE EXCEPTION;
    CATEGORIA_NO_EXISTE EXCEPTION;
    PRECIO_NEGATIVO EXCEPTION;
    STOCK_NEGATIVO EXCEPTION;
BEGIN
    IF VERIFICAR_CATEGORIA(CATEGORIAP) = TRUE THEN
        IF VERIFICAR_PRODUCTO(CODIGOP) = FALSE THEN
            IF STOCKP > 0 THEN
                IF PRECIOP > 0 THEN
                    LOCK TABLE PRODUCTO IN ROW EXCLUSIVE MODE;
                    INSERT INTO PRODUCTO VALUES (CODIGOP,NOMBREP,PRECIOP,CATEGORIAP,STOCKP);
                    COMMIT;
                    RESULTADO := 'TRUE';
                    MENSAJE := 'PRODUCTO INGRESADO CON EXITO';
                ELSE
                    RAISE PRECIO_NEGATIVO;
                END IF;
            ELSE 
                RAISE STOCK_NEGATIVO;
            END IF;
        ELSE
            RAISE PRODUCTO_EXISTE;
        END IF;
    ELSE
        RAISE CATEGORIA_NO_EXISTE;
    END IF;
    EXCEPTION
        WHEN PRECIO_NEGATIVO THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'PRECIO NO PUEDE SER NEGATIVO';
            ROLLBACK;
        WHEN STOCK_NEGATIVO THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'STOCK NO PUEDE SER NEGATIVO O CERO';
            ROLLBACK;
        WHEN PRODUCTO_EXISTE THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'PRODUCTO INGRESADO YA EXISTE';
            ROLLBACK;
        WHEN CATEGORIA_NO_EXISTE THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'CATEGORIA INGRESADA NO EXISTE';
            ROLLBACK;
        WHEN OTHERS THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'ERROR EN PROCEDIMIENTO: '||SQLCODE;
            ROLLBACK;
END;

SELECT * FROM PRODUCTO;
SELECT * FROM CATEGORIA;
DECLARE
    RESULTADO VARCHAR2(5);
    MENSAJE VARCHAR2(100);
BEGIN
    AGREGAR_PRODUCTO(101,'NOTEBOOK HP',350000,1,1,RESULTADO,MENSAJE);
    DBMS_OUTPUT.PUT_LINE(RESULTADO);
    DBMS_OUTPUT.PUT_LINE(MENSAJE);
END;

CREATE OR REPLACE PROCEDURE MODIFICACION_PRODUCTO(
    CODIGOP IN PRODUCTO.CODIGO_PRODUCTO%TYPE,
    NOMBREP IN PRODUCTO.NOMBRE%TYPE,
    PRECIOP IN PRODUCTO.PRECIO%TYPE,
    CATEGORIAP IN PRODUCTO.CODIGO_CATEGORIA%TYPE,
    STOCKP IN PRODUCTO.STOCK%TYPE,
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    PRODUCTO_NO_EXISTE EXCEPTION;
    CATEGORIA_NO_EXISTE EXCEPTION;
    PRECIO_NEGATIVO EXCEPTION;
    STOCK_NEGATIVO EXCEPTION;
BEGIN
    IF(VERIFICAR_CATEGORIA(CATEGORIAP) = TRUE) THEN
        IF(VERIFICAR_PRODUCTO(CODIGOP) = TRUE) THEN
            IF(PRECIOP > 0) THEN
                IF(STOCKP > 0) THEN
                    LOCK TABLE PRODUCTO IN ROW EXCLUSIVE MODE;
                    UPDATE PRODUCTO 
                    SET NOMBRE = NOMBREP, PRECIO = PRECIOP, CODIGO_CATEGORIA = CATEGORIAP, STOCK = STOCKP
                    WHERE CODIGO_PRODUCTO = CODIGOP;
                    COMMIT;
                    RESULTADO := 'TRUE';
                    MENSAJE := 'PRODUCTO ACTUALIZADO CON ÉXITO';
                ELSE
                    RAISE STOCK_NEGATIVO;
                END IF;
            ELSE
                RAISE PRECIO_NEGATIVO;
            END IF;
        ELSE    
            RAISE PRODUCTO_NO_EXISTE;
        END IF;
    ELSE
        RAISE CATEGORIA_NO_EXISTE;
    END IF;
    EXCEPTION
        WHEN PRECIO_NEGATIVO THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'PRECIO NO PUEDE SER NEGATIVO';
            ROLLBACK;
        WHEN STOCK_NEGATIVO THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'STOCK NO PUEDE SER NEGATIVO O CERO';
            ROLLBACK;
        WHEN PRODUCTO_NO_EXISTE THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'EL PRODUCTO QUE INTENTA MODIFICAR NO EXISTE';
            ROLLBACK;
        WHEN CATEGORIA_NO_EXISTE THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'LA CATEGORIA INGRESADA NO EXISTE';
            ROLLBACK;
        WHEN OTHERS THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'ERROR EN PROCEDIMIENTO: '||SQLCODE;
            ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE BORRAR_PRODUCTO(
    CODIGOP IN PRODUCTO.CODIGO_PRODUCTO%TYPE,
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    PRODUCTO_NO_EXISTE EXCEPTION;
BEGIN
    IF(VERIFICAR_PRODUCTO(CODIGOP) = TRUE) THEN
        LOCK TABLE PRODUCTO IN ROW EXCLUSIVE MODE;
        DELETE FROM PRODUCTO WHERE CODIGO_PRODUCTO = CODIGOP;
        COMMIT;
        RESULTADO := 'TRUE';
        MENSAJE := 'EL PRODUCTO '||CODIGOP||' FUE ELIMINADO CON ÉXITO';
    ELSE
        RAISE PRODUCTO_NO_EXISTE;
    END IF;
    EXCEPTION
        WHEN PRODUCTO_NO_EXISTE THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'EL PRODUCTO QUE INTENTA ELIMINAR NO EXISTE';
            ROLLBACK;
        WHEN OTHERS THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'ERROR EN PROCEDIMIENTO: '||SQLCODE;
            ROLLBACK;
END;


CREATE OR REPLACE FUNCTION VALIDACION( 
    NUMERICO IN VARCHAR2
)RETURN BOOLEAN 
IS 
    TRUERUT VARCHAR2(9); 
    DIGITO NUMBER := 0; 
    SUMA NUMBER := 0; 
    DIGITOF NUMBER := 0; 
    LARGO NUMBER := LENGTH(NUMERICO); 
BEGIN 
    IF(LARGO = 8) THEN 
        TRUERUT := LPAD(NUMERICO,9,'0'); 
    ELSE 
        TRUERUT := NUMERICO; 
    END IF; 
    IF(SUBSTR(TRUERUT,9,1) = 'K') THEN 
        DIGITO := 0; 
    ELSE 
        DIGITO := SUBSTR(TRUERUT,9,1); 
    END IF; 
    SUMA := SUBSTR(TRUERUT,1,1) * 3; 
    SUMA := (SUMA + SUBSTR(TRUERUT,2,1) * 2); 
    SUMA := (SUMA + SUBSTR(TRUERUT,3,1) * 7);
    SUMA := (SUMA + SUBSTR(TRUERUT,4,1) * 6);
    SUMA := (SUMA + SUBSTR(TRUERUT,5,1) * 5); 
    SUMA := (SUMA + SUBSTR(TRUERUT,6,1) * 4); 
    SUMA := (SUMA + SUBSTR(TRUERUT,7,1) * 3); 
    SUMA := (SUMA + SUBSTR(TRUERUT,8,1) * 2); 
    WHILE(SUMA > 11) LOOP 
        SUMA := SUMA - 11; 
    END LOOP; 
    DIGITOF := (11 - SUMA); 
    IF(DIGITOF = 10) THEN 
        DIGITOF := 0; 
    END IF; 
    IF(DIGITOF = DIGITO) THEN 
        RETURN TRUE; 
    ELSE 
        RETURN FALSE; 
    END IF; 
END; 

DECLARE 
    RESULTADO BOOLEAN; 
BEGIN 
    RESULTADO := VALIDACION('86931133'); 
    IF(RESULTADO = TRUE) THEN 
        DBMS_OUTPUT.PUT_LINE('EL RUT ES VALIDO'); 
    ELSE 
        DBMS_OUTPUT.PUT_LINE('EL RUT ES INVALIDO'); 
    END IF; 
END;




