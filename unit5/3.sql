create table newemp as select * from emp where 1=0 ;

create or replace trigger trg_emp_to_newemp

after insert on emp
for each row
begin
	insert into newemp (EMPNO,ENAME,DEPTNO,DEPTNAME,GENDER,AGE,SALARY)
	VALUES(:NEW.EMPNO,:NEW.ENAME,:NEW.DEPTNO,:NEW.DEPTNAME,:NEW.GENDER,:NEW.AGE,:NEW.SALARY);
	
end;
/