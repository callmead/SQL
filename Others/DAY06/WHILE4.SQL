DECLARE
     v_MYTEXT VARCHAR2(20) := 'THIS IS A TEST';
BEGIN
     DBMS_OUTPUT.PUT_LINE('Total count is ' || dontcountsp(v_MYTEXT));
END;
