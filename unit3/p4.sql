DECLARE 
    v_SALARY EMPLO.SALARY%TYPE; 
BEGIN 
    
    SELECT SALARY 
    INTO v_SALARY 
    FROM EMPLOYEE 
    WHERE AGE = 25; 
    
    DBMS_OUTPUT.PUT_LINE('salary:' || v_SALARY); 

EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.'); 
END; 
/