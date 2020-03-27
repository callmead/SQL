DECLARE
     v_Start Integer := 1;
BEGIN
     FOR v_loopcounter IN REVERSE v_Start..5 LOOP
          DBMS_OUTPUT.PUT_LINE('Loop counter is ' || v_loopcounter);
     END LOOP;
END;
