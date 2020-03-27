DECLARE
      v_Calc NUMBER := 0;
BEGIN
     WHILE v_calc <= 10 LOOP
          v_Calc := v_Calc + 1;
          DBMS_OUTPUT.PUT_LINE('The value of v_Calc is ' || v_Calc);
     END LOOP;
END;

     