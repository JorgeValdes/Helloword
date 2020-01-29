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
    tipo_usuario varchar2(10) not null check(tipo_usuario = 'CLIENTE' or tipo_usuario = 'EMPLEADO'),
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
alter table producto drop constraint fk_producto_categoria;
alter table producto add constraint fk_producto_categoria foreign key(codigo_categoria) references categoria(codigo_categoria) on delete cascade;
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

INSERT INTO CATEGORIA VALUES(1,'PORTABLES');
INSERT INTO CATEGORIA VALUES(2,'TECNOLOGIA');
INSERT INTO CATEGORIA VALUES(3,'AUDIO');
INSERT INTO CATEGORIA VALUES(4,'MONITORES');
INSERT INTO CATEGORIA VALUES(5,'ACCESORIOS');
INSERT INTO CATEGORIA VALUES(6,'TABLETS');

INSERT INTO PRODUCTO VALUES (1,'notebook lenovo',380000,1,20);
INSERT INTO PRODUCTO VALUES (2,'celular motorola',110000,2,15);
INSERT INTO PRODUCTO VALUES (3,'audifonos macrotel',3500,3,12);
INSERT INTO PRODUCTO VALUES (4,'notebook samsung',500000,1,3);
INSERT INTO PRODUCTO VALUES (5,'monitor 17" aoc',67990,4,80);
INSERT INTO PRODUCTO VALUES (6,'monitor 21" dell',81990,4,20);
INSERT INTO PRODUCTO VALUES (7,'notebook hp',280990,1,1);
INSERT INTO PRODUCTO VALUES (8,'celular iphone 6s',560000,2,6);
INSERT INTO PRODUCTO VALUES (9,'celular lg',450000,2,7);
INSERT INTO PRODUCTO VALUES (10,'mouse bluetooth',28990,5,9);
INSERT INTO PRODUCTO VALUES (11,'monitor 17" samsung',150000,4,7);
INSERT INTO PRODUCTO VALUES (12,'monitor 17" lenovo',250000,4,7);
INSERT INTO PRODUCTO VALUES (13,'monitor 17" lg',125000,4,4);
INSERT INTO PRODUCTO VALUES (14,'monitor 15" lenovo',200000,4,3);
INSERT INTO PRODUCTO VALUES (15,'moto g 2013',130000,2,45);
INSERT INTO PRODUCTO VALUES (16,'moto g 2015',180000,2,32);
INSERT INTO PRODUCTO VALUES (17,'moto x play',370000,2,12);
INSERT INTO PRODUCTO VALUES (18,'ipad mini 2',200000,6,4);
INSERT INTO PRODUCTO VALUES (19,'ipad air',260000,6,2);
INSERT INTO PRODUCTO VALUES (20,'notebook msi',850000,1,4);
INSERT INTO PRODUCTO VALUES (21,'mouse microsoft',8500,5,5);

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE CREAR_PERSONA
IS
    TABLA_PRUEBA VARCHAR2(1000) := 'CREATE TABLE PERSONA(
                                        RUT NUMBER,
                                        NOMBRE VARCHAR2(30)
                                    )';
BEGIN
    EXECUTE IMMEDIATE TABLA_PRUEBA;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('TABLA CREADA CON ÉXITO');
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE = -955 THEN
                DBMS_OUTPUT.PUT_LINE('LA TABLA PERSONA YA ESTÁ CREADA');
                ROLLBACK;
            ELSE
                DBMS_OUTPUT.PUT_LINE('ERROR: '||SQLERRM);
            END IF;
END;

CALL CREAR_PERSONA();

---------------------------------------------

CREATE OR REPLACE PROCEDURE ALTERAR_TABLA(
    NOMBRE_TABLA IN VARCHAR2,
    ACCION IN VARCHAR2,
    TIPO_DATO IN VARCHAR2,
    NOMBRE_COLUMNA IN VARCHAR2
)
IS
    ALTER_TEXTO VARCHAR2(100);
    OPCION_INVALIDA EXCEPTION;
BEGIN
    CASE ACCION
        WHEN 'A' THEN
            ALTER_TEXTO := 'ALTER TABLE '||NOMBRE_TABLA||' ADD '||NOMBRE_COLUMNA||' '||TIPO_DATO;
        WHEN 'M' THEN
            ALTER_TEXTO := 'ALTER TABLE '||NOMBRE_TABLA||' MODIFY '||NOMBRE_COLUMNA||' '||TIPO_DATO;
        WHEN 'E' THEN
            ALTER_TEXTO := 'ALTER TABLE '||NOMBRE_TABLA||' DROP COLUMN '||NOMBRE_COLUMNA;
        ELSE
            RAISE OPCION_INVALIDA;
    END CASE;
    EXECUTE IMMEDIATE ALTER_TEXTO;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('LA TABLA '||NOMBRE_TABLA||' SE MODIFICÓ');
    EXCEPTION
        WHEN OPCION_INVALIDA THEN
            DBMS_OUTPUT.PUT_LINE('LA OPCION INGRESADA NO ES VÁLIDA: SOLO A-M-E PERMITIDO');
            ROLLBACK;
        WHEN OTHERS THEN
            CASE SQLCODE
                WHEN -942 THEN
                    DBMS_OUTPUT.PUT_LINE('LA TABLA QUE INTENTA MODIFICAR NO EXISTE');
                WHEN -904 THEN
                    DBMS_OUTPUT.PUT_LINE('LA COLUMNA QUE INTENTA MODIFICAR NO EXISTE');
                WHEN -902 THEN
                    DBMS_OUTPUT.PUT_LINE('EL TIPO DE DATO INGRESADO NO ES VALIDO');
                ELSE
                    DBMS_OUTPUT.PUT_LINE('ERROR: '||SQLERRM);
            END CASE;
            ROLLBACK;
END;

CALL ALTERAR_TABLA('PERSONA','A','NUMBER','TELEFONO');
CALL ALTERAR_TABLA('PERSONA','E','','TELEFONO');

---------------------------------------------

SELECT * FROM PRODUCTO;

SELECT CODIGO_PRODUCTO, STOCK
FROM PRODUCTO
WHERE STOCK < 5;

CREATE TABLE ENCARGO(
    CODIGO_PRODUCTO NUMBER,
    FECHA DATE,
    CANTIDAD NUMBER,
    ESTADO VARCHAR2(30) DEFAULT 'ACTIVO'
);
	
ALTER TABLE ENCARGO ADD CONSTRAINT PK_ENCARGO PRIMARY KEY(CODIGO_PRODUCTO, FECHA);
ALTER TABLE ENCARGO ADD CONSTRAINT FK_ENCARGO_PRODUCTO FOREIGN KEY(CODIGO_PRODUCTO) REFERENCES PRODUCTO(CODIGO_PRODUCTO);


--CURSOR 1
CREATE OR REPLACE PROCEDURE VERIFICAR_STOCK(
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    CURSOR PRODUCTOS IS SELECT CODIGO_PRODUCTO, STOCK FROM PRODUCTO;
    CODIGO_AUX NUMBER;
    STOCK_AUX NUMBER;
BEGIN
    OPEN PRODUCTOS;		
    FETCH PRODUCTOS INTO CODIGO_AUX, STOCK_AUX;
    DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' - STOCK: '||STOCK_AUX);
    CLOSE PRODUCTOS;
    
END;

--COMPILAR CURSOR 1
DECLARE
    RESULTADO VARCHAR2(100);
    MENSAJE VARCHAR2(100);
BEGIN
    VERIFICAR_STOCK(RESULTADO,MENSAJE);
    DBMS_OUTPUT.PUT_LINE('RESULTADO: '||RESULTADO||' - MENSAJE: '||MENSAJE);
END;

--CURSOR 2
CREATE OR REPLACE PROCEDURE VERIFICAR_STOCK(
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    CURSOR PRODUCTOS IS SELECT CODIGO_PRODUCTO, STOCK FROM PRODUCTO;
    CODIGO_AUX NUMBER;
    STOCK_AUX NUMBER;
BEGIN
    OPEN PRODUCTOS;
    LOOP
        EXIT WHEN PRODUCTOS%NOTFOUND;
        FETCH PRODUCTOS INTO CODIGO_AUX, STOCK_AUX;
        DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' - STOCK: '||STOCK_AUX);
    END LOOP;
    CLOSE PRODUCTOS;
END;

--COMPILAR CURSOR 2
DECLARE
    RESULTADO VARCHAR2(100);
    MENSAJE VARCHAR2(100);
BEGIN
    VERIFICAR_STOCK(RESULTADO,MENSAJE);
    DBMS_OUTPUT.PUT_LINE('RESULTADO: '||RESULTADO||' - MENSAJE: '||MENSAJE);
END;

--CURSOR 3
CREATE OR REPLACE PROCEDURE VERIFICAR_STOCK(
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    CURSOR PRODUCTOS IS SELECT CODIGO_PRODUCTO, STOCK FROM PRODUCTO;
    CODIGO_AUX NUMBER;
    STOCK_AUX NUMBER;
BEGIN
    OPEN PRODUCTOS;
    LOOP
        EXIT WHEN PRODUCTOS%NOTFOUND;
        FETCH PRODUCTOS INTO CODIGO_AUX, STOCK_AUX;
        DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' - STOCK: '||STOCK_AUX);
        IF STOCK_AUX < 5 THEN
            INSERT INTO ENCARGO(CODIGO_PRODUCTO,FECHA,CANTIDAD)
            VALUES (CODIGO_AUX,SYSDATE,20);
            DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' INGRESADO');
        ELSE
            DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' DESCARTADO');
        END IF;
    END LOOP;
END;

--COMPILAR CURSOR 3
DECLARE
    RESULTADO VARCHAR2(100);
    MENSAJE VARCHAR2(100);
BEGIN
    VERIFICAR_STOCK(RESULTADO,MENSAJE);
    DBMS_OUTPUT.PUT_LINE('RESULTADO: '||RESULTADO||' - MENSAJE: '||MENSAJE);
END;

SELECT * FROM ENCARGO;
DELETE FROM ENCARGO;
COMMIT;

--CURSOR 4
CREATE OR REPLACE PROCEDURE VERIFICAR_STOCK(
    RESULTADO OUT VARCHAR2,
    MENSAJE OUT VARCHAR2
)
IS
    CURSOR PRODUCTOS IS SELECT CODIGO_PRODUCTO, STOCK FROM PRODUCTO;
    CODIGO_AUX NUMBER;
    STOCK_AUX NUMBER;
    CONTADOR NUMBER := 0;
BEGIN
    OPEN PRODUCTOS;
    LOOP
        EXIT WHEN PRODUCTOS%NOTFOUND;
        FETCH PRODUCTOS INTO CODIGO_AUX, STOCK_AUX;
        DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' - STOCK: '||STOCK_AUX);
        IF STOCK_AUX < 5 THEN
            LOCK TABLE ENCARGO IN ROW EXCLUSIVE MODE;
            INSERT INTO ENCARGO(CODIGO_PRODUCTO,FECHA,CANTIDAD)
            VALUES (CODIGO_AUX,SYSDATE,20);
            COMMIT;
            RESULTADO := 'TRUE';
            CONTADOR := CONTADOR + 1;
            MENSAJE := CONTADOR||' PRODUCTOS INGRESADOS';            
            DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' INGRESADO <----');
        ELSE
            DBMS_OUTPUT.PUT_LINE('PRODUCTO: '||CODIGO_AUX||' DESCARTADO');
        END IF;
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            RESULTADO := 'FALSE';
            MENSAJE := 'SE ALCANZARON INGRESAR '||CONTADOR|| 'PRODUCTOS Y SE PRODUJO UN ERROR - ERROR:'||SQLCODE;
            ROLLBACK;
END;

--COMPILAR CURSOR 4
DECLARE
    RESULTADO VARCHAR2(100);
    MENSAJE VARCHAR2(100);
BEGIN
    VERIFICAR_STOCK(RESULTADO,MENSAJE);
    DBMS_OUTPUT.PUT_LINE('RESULTADO: '||RESULTADO||' - MENSAJE: '||MENSAJE);
END;

SELECT * FROM ENCARGO;


--EJEMPLO TRIGGER 1
CREATE OR REPLACE TRIGGER MAYUSCULA_PRODUCTOS
BEFORE INSERT ON PRODUCTO
FOR EACH ROW
DECLARE
    --DECLARACION VARIABLES
BEGIN
    :NEW.NOMBRE := UPPER(:NEW.NOMBRE);
END;

SELECT * FROM PRODUCTO;

--REALIZANDO PRUEBA DEL TRIGGER
INSERT INTO PRODUCTO VALUES (22,'insercion de prueba minusculas',8500,5,5);

--VERIFICANDO SI EL TRIGGER HIZO LA CONVERSIÓN A MAYÚSCULAS
SELECT * FROM PRODUCTO WHERE CODIGO_PRODUCTO = 22;

--COMPILAR ESTA FUNCION POR FAVOR
CREATE OR REPLACE FUNCTION VERIFICAR_CLIENTE(
    RUTC NUMBER
)
RETURN BOOLEAN
IS
    CONTADOR NUMBER;
BEGIN
    SELECT COUNT(*) INTO CONTADOR FROM CLIENTE WHERE RUT = RUTC;
    IF CONTADOR > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;


--EJEMPLO TRIGGER 2
CREATE OR REPLACE TRIGGER INSERT_USUARIO
AFTER INSERT ON USUARIO
FOR EACH ROW
DECLARE
    --DECLARACION VARIABLES
BEGIN
    IF VERIFICAR_CLIENTE(:NEW.RUT) = FALSE THEN
        INSERT INTO CLIENTE(RUT) VALUES (:NEW.RUT);
    END IF;
END;

--VERIFICAMOS QUE LA TABLA USUARIO Y CLIENTE ESTÉN VACÍAS
SELECT * FROM USUARIO;
SELECT * FROM CLIENTE;

--REALIZANDO PRUEBA DE TRIGGER
INSERT INTO USUARIO VALUES (18575620,'1234','CLIENTE','FeLIpE','TAPIA GOMEZ','FTAPIA46@GMAIL.COM',25);
COMMIT;

--VERIFICANDO SI LA INSERCIÓN EN LA TABLA USUARIO FUE CORRECTA
SELECT * FROM USUARIO;

--VERIFICANDO SI LA INSERCIÓN QUE EL TRIGGER DEBIÓ HACER EN LA TABLA CLIENTE FUE CORRECTA
SELECT * FROM CLIENTE;

--MEJORANDO EL TRIGGER DE INSERTAR USUARIO
DELETE FROM CLIENTE;
DELETE FROM USUARIO;
COMMIT;
SELECT * FROM USUARIO;
SELECT * FROM CLIENTE;

CREATE OR REPLACE FUNCTION VERIFICAR_EMPLEADO(
    RUTC NUMBER
)
RETURN BOOLEAN
IS
    CONTADOR NUMBER;
BEGIN
    SELECT COUNT(*) INTO CONTADOR FROM EMPLEADO WHERE RUT = RUTC;
    IF CONTADOR > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;

CREATE OR REPLACE TRIGGER INSERT_USUARIO
AFTER INSERT ON USUARIO
FOR EACH ROW
DECLARE
    USUARIO_NO_VALIDO EXCEPTION;
    CLIENTE_YA_EXISTE EXCEPTION;
    EMPLEADO_YA_EXISTE EXCEPTION;
BEGIN
    IF :NEW.TIPO_USUARIO = 'CLIENTE' THEN
        IF VERIFICAR_CLIENTE(:NEW.RUT) = FALSE THEN
            INSERT INTO CLIENTE(RUT) VALUES (:NEW.RUT);
        ELSE
            RAISE CLIENTE_YA_EXISTE;
        END IF;
    ELSIF :NEW.TIPO_USUARIO = 'EMPLEADO' THEN
        IF VERIFICAR_EMPLEADO(:NEW.RUT) = FALSE THEN
            INSERT INTO EMPLEADO(RUT) VALUES (:NEW.RUT);
        ELSE
            RAISE EMPLEADO_YA_EXISTE;
        END IF;
    ELSE
        RAISE USUARIO_NO_VALIDO;
    END IF;
    EXCEPTION
        WHEN USUARIO_NO_VALIDO THEN
            RAISE_APPLICATION_ERROR(-20001,'EL ROL DEL USUARIO INGRESADO NO ES VÁLIDO');
        WHEN CLIENTE_YA_EXISTE THEN
            RAISE_APPLICATION_ERROR(-20001,'EL CLIENTE QUE INTENTA INGRESAR YA EXISTE');
        WHEN EMPLEADO_YA_EXISTE THEN
            RAISE_APPLICATION_ERROR(-20001,'EL EMPLEADO QUE INTENTA INGRESAR YA EXISTE');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20001,'ERROR EN TRIGGER: '||SQLERRM);
END;

--VERIFICAMOS NUEVAMENTE EL TRIGGER REALIZANDO EL MISMO INSERT ANTERIOR
INSERT INTO USUARIO VALUES (18575620,'1234','CLIENTE','FeLIpE','TAPIA GOMEZ','FTAPIA46@GMAIL.COM',25);
INSERT INTO USUARIO VALUES (98765432,'1234','EMPLEADO','FeLIpE','TAPIA GOMEZ','FTAPIA46@GMAIL.COM',25);
COMMIT; 

--VERIFICAMOS CON LOS SELECT SI SE INSERTÓ EN LAS TABLAS USUARIO, CLIENTE Y EMPLEADO
SELECT * FROM USUARIO;
SELECT * FROM CLIENTE;
SELECT * FROM EMPLEADO;