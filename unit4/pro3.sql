DECLARE
    v_name VARCHAR2(20);
BEGIN
    search_EMPLOYEE(101, v_name);

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
END;
/