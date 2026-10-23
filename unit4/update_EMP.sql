CREATE OR REPLACE PROCEDURE update_EMP
IS
BEGIN
    UPDATE EMPLOYEE
    SET SAL = 30000
    WHERE EMPLOYEENO = 101;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee salary updated successfully.');
END;
/