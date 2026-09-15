DECLARE
	res NUMBER(3);
	n NUMBER(3);
BEGIN
	n:=&n;
	IF n=0 THEN
		RAISE_APPLICATION_ERROR(-20230, 'you can not divide any number with zero');
	ELSE
		SELECT 100/n INTO res FROM DUAL;
		DBMS_OUTPUT.PUT_LINE(res);
	END IF;
END;
/
