DECLARE
    v_num NUMBER := &num;
    v_square NUMBER;
BEGIN
    v_square := square_number(v_num);
    DBMS_OUTPUT.PUT_LINE('Square = ' ||v_square);
END;
/
