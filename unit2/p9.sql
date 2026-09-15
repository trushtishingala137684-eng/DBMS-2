declare
	cursor c1 is
		select eno,ename,salary
		from emp
		order by salary desc ;

begin
	
	dbms_output.put_line('employee records:');

	for r in c1 loop
		dbms_output.put_line(r.eno || '  '  || r.ename  || '  ' ||r.salary);
	end loop;
end;
/