CREATE TABLE EMP_BACKUP
(
    EMPNO NUMBER(4),
    ENAME VARCHAR2(10),
    DEPTNO NUMBER(9),
    DEPTNAME VARCHAR(10),
    GENDER CHAR(2),
    AGE NUMBER(7,2),
    BASICSAL NUMBER(7,2)
    
);

INSERT INTO EMP_BACKUP VALUES
(101, 'RAHUL', 10,'SALES','M',23,50000);


COMMIT;                                                       

DECLARE
    v_deptno EMP.DEPTNO%TYPE := &DEPTNO;
    
    v_count NUMBER := 0;

   
    NO_DEPT_FOUND EXCEPTION;

    
    CURSOR emp_cur IS
        SELECT *
        FROM empl
        WHERE DEPTNO = v_deptno;
         emp_rec empl%ROWTYPE;

BEGIN

	SELECT*
	FROM empl
	WHERE DEPTNO =v_deptno;
 
    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

  	 OPEN emp_cur;
	LOOP
	FETCH emp_cur INTO emp_rec; 
	EXIT WHEN emp_cur&NOTFOUND; 
	INSERT INTO EMP_BACKUP 
	VALUES ( 
	emp_rec.EID, 
	emp_rec. ENAME,
	 emp_rec. DEPTNO, 
	emp_rec. DEPTNAME, 
	emp_re. GENDER, 
	emp rec.AGb, 
	emp_rec. BASICSAL 
	);
	END LOOP;
	CLOSE emp_cur;
	commit;



    DBMS_OUTPUT.PUT_LINE(v_count || ' Record(s) copied successfully.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found in this department.');
END;
/