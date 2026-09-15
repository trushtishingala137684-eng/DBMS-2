DECLARE
	marks number:=78;
BEGIN
	IF marks>=90 then
		dbms_output.put_line('grade A');
	ELSIF marks>=75 then
		dbms_output.put_line('grade B');
	ELSIF marks>=60 then
		dbms_output.put_line('grade C');
	ELSE
		dbms_output.put_line('failed');
	END IF;
END;
/