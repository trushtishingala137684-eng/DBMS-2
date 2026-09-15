DECLARE
	n number;
	i number;
BEGIN
	n:=&n;
	i:=1;

	LOOP
	EXIT WHEN i>n;
	dbms_output.put_line(i);
	i:=i+1;
	END LOOP;
END;
/