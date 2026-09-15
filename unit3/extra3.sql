DECLARE
	a number:=&a;
	b number:=&b;
	c number;
	myexp1 EXCEPTION;
	PRAGMA EXCEPTION_INIT(myexp1,-20000);
BEGIN
	IF b=0 THEN
		RAISE myexp1;
	ELSE
		c:=a/b;
		dbms_output.put_line('ans='||c);
	END IF;
EXCEPTION
	WHEN myexp1 THEN
		dbms_output.put_line('cant divide no with 0');
END;
/