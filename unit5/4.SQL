create table newemp as select * from emp where 1=0 ;

create or replace trigger trg_emp_to_new
before update on emp
for each row
begin
	insert into newemp (EMPNO,ENAME,DEPTNO,DEPTNAME,GENDER,AGE,SALARY)
	VALUES(:OLD.EMPNO,:OLD.ENAME,:OLD.DEPTNO,:OLD.DEPTNAME,:OLD.GENDER,:OLD.AGE,:OLD.SALARY);
	
end;
/