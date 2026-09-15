CREATE TABLE manager(
	empno number(4),
	ename varchar2(20),
	sal number(8,2),
	deptno number(2)
);

insert into manager values(101,'ram',20000,10);
insert into manager values(102,'shyam',25000,20);
insert into manager values(103,'mohan',30000,10);
insert into manager values(104,'rahul',18000,30);

COMMIT;

SET SERVEROUTPUT ON;
 
DECLARE
	total_rows number(2):=0;
BEGIN
	
	UPDATE manager SET sal =sal+( sal*5/100) WHERE deptno=20;
	IF sql%notfound THEN
		dbms_output.put_line('no employee found in department 10');
	ELSIF sql%found THEN
		total_rows:=sql%rowcount;
		dbms_output.put_line(total_rows || 'employees(s) salary updated');
	END IF;
	COMMIT;
END;
/
