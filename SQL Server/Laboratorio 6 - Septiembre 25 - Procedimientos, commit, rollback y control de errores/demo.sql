DROP TABLE PRODUCTO_AUX;

CREATE TABLE PRODUCTO_AUX(
    CODIGO_PRODUCTO NUMBER,
    NOMBRE VARCHAR2(30),
    PRECIO NUMBER,
    STOCK NUMBER
);

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE COMPRAR(
    CODIGOP IN PRODUCTO_AUX.CODIGO_PRODUCTO%TYPE,
    CANTIDAD IN NUMBER
)
IS
BEGIN
    LOCK TABLE PRODUCTO_AUX IN ROW EXCLUSIVE MODE;
    UPDATE PRODUCTO_AUX
    SET STOCK = (STOCK - CANTIDAD)
    WHERE CODIGO_PRODUCTO = CODIGOP;
    DBMS_OUTPUT.PUT_LINE('PRODUCTOS COMPRADOS');
END;

INSERT INTO PRODUCTO_AUX VALUES (1,'NOTEBOOK HP',280990,1);
INSERT INTO PRODUCTO_AUX VALUES (2,'CELULAR IPHONE 6S',560000,6);
INSERT INTO PRODUCTO_AUX VALUES (3,'CELULAR LG',450000,7);
INSERT INTO PRODUCTO_AUX VALUES (4,'MOUSE BLUETOOTH',28990,9);

CALL COMPRAR(2,2);
SELECT * FROM PRODUCTO_AUX;

COMMIT;