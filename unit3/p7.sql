DECLARE
    v_MARKS NUMBER;
BEGIN
    v_MARKS := 'ABC';

    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_MARKS);

EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Invalid number found in marks.');
END;
/