CREATE OR REPLACE FUNCTION square_number (
	p_num IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_num * p_num;
END;
/
