CREATE OR REPLACE PROCEDURE search_EMPLOYEE
(
    p_eid IN NUMBER,
    p_ename OUT VARCHAR2
)
IS
BEGIN
    SELECT ENAME
    INTO p_ename
    FROM EMPLOYEE
    WHERE EMPLOYEENO = p_eid;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_ename := NULL;
        DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || p_eid || ' not found.');

    WHEN TOO_MANY_ROWS THEN
        p_ename := NULL;
        DBMS_OUTPUT.PUT_LINE('Error: More than one employee found.');
END;
/