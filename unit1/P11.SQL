DECLARE
	n number;
	i number;
BEGIN
	n:=&n;
	i:=1;
	
	WHILE i <= n LOOP
	dbms_output.put_line(i);
	i:=i+1;
	END LOOP;

END;
/