CREATE TABLE CUSTOMER (
    CUST_ID NUMBER,
    CUST_NAME VARCHAR2(30),
    CITY VARCHAR2(20)
);

INSERT INTO CUSTOMER VALUES (101, 'Rahul', 'Rajkot');
INSERT INTO CUSTOMER VALUES (102, 'Priya', 'Ahmedabad');
INSERT INTO CUSTOMER VALUES (103, 'Amit', 'Surat');
INSERT INTO CUSTOMER VALUES (104, 'Neha', 'Vadodara');
INSERT INTO CUSTOMER VALUES (105, 'Karan', 'Jamnagar');

COMMIT;

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT * FROM CUSTOMER;

    v_id CUSTOMER.CUST_ID%TYPE;
    v_name CUSTOMER.CUST_NAME%TYPE;
    v_city CUSTOMER.CITY%TYPE;

BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO v_id, v_name, v_city;
        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' Name: ' || v_name ||
            ' City: ' || v_city
        );
    END LOOP;

    CLOSE c1;
END;
/