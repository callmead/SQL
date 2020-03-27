DECLARE
     v_MyNum NUMBER := 6;
     v_Factorial NUMBER := 1;
BEGIN
     LOOP
          IF v_MyNum = 0 THEN
               EXIT;
          ELSE
               v_Factorial := v_Factorial * v_MyNum;
          END IF;
          v_MyNum := v_MyNum - 1;
     END LOOP;
     DBMS_OUTPUT.PUT_LINE('The factorial is:  ' || v_Factorial);
END;
