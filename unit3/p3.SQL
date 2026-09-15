SET SERVEROUTPUT ON;

DECLARE
    v_ename emp.ENAME%TYPE;
    v_salary emp.salary%TYPE;
BEGIN
        v_ename := '&Enter_Employee_Name';


    SELECT salary
    INTO v_salary
    FROM emp
    WHERE UPPER(ENAME) = UPPER(v_ename);

   
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_ename);
    DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found with the same name.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/