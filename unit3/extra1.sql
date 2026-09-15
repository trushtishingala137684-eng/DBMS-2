DECLARE
    l_code NUMBER;
    r_customer customer%ROWTYPE;
BEGIN
    SELECT *
    INTO r_customer
    FROM customer;

EXCEPTION
    WHEN OTHERS THEN
        l_code := SQLCODE;
        DBMS_OUTPUT.PUT_LINE('ERROR code: ' || l_code);
 END;
/
