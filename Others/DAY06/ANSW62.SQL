DECLARE
     v_factorial NUMBER := 1;
     v_factorial_counter NUMBER := 4;
BEGIN
     WHILE v_factorial_counter != 1 LOOP
     	  v_factorial := v_factorial * v_factorial_counter;
          DBMS_OUTPUT.PUT_LINE('Your factorial value is now ' || v_factorial);
          v_factorial_counter := v_factorial_counter - 1;
     END LOOP;
END;
