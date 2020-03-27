DECLARE
     v_test NUMBER := 10;
     v_Counter INTEGER ; -- Counter for For Loop
BEGIN
     FOR v_Counter IN 1..v_test LOOP
          DBMS_OUTPUT.PUT_LINE('The factorial of ' ||
               v_Counter || ' is ' || factorial(v_Counter));
     END LOOP;
END;
/