DECLARE
     v_factorial NUMBER := 1;
BEGIN
     FOR v_loopcounter IN REVERSE 1..4 LOOP
	  v_factorial := v_factorial * v_loopcounter;
          DBMS_OUTPUT.PUT_LINE('Your factorial value is now ' || v_factorial);
     END LOOP;
END;
