DECLARE
	n number;
	i number;
BEGIN
	n:=&n;
	
	FOR i IN 1..n LOOP
	dbms_output.put_line(i);
	END LOOP;

END;
/