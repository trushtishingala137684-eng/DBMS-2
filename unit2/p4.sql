Create table empl(
	empno number(4),
	ename varchar2(10),
	salary number(8,2),
	deptno number(2)
);
insert into empl values(101,'rahul',85000,10);
insert into empl values(102,'riya',92000,20);
insert into empl values(103,'amit',91000,30);
insert into empl values(104,'neha',70000,20);
insert into empl values(105,'naman',90000,10);
commit;

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT ename, salary
        FROM (
            SELECT ename, salary
            FROM empl
            ORDER BY salary DESC
        )
        WHERE ROWNUM <= 3;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Top 3 Highest Paid Employees');
    DBMS_OUTPUT.PUT_LINE('------------------------------');

    FOR item IN c1 LOOP
        DBMS_OUTPUT.PUT_LINE('Name : ' || item.ename ||
                             '   Salary : ' || item.salary);
    END LOOP;
END;
/