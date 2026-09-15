DECLARE
	C NUMBER;
	F NUMBER;
BEGIN
	C:=&celcius;
	F:=(c*9/5)+32;

	dbms_output.put_line('celcuis:'||c);
	dbms_output.put_line('farenthit:'||f);
END;
/