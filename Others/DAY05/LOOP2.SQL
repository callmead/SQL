
BEGIN
     FOR v_outerloopcounter IN 1..2 LOOP
          FOR v_innerloopcounter IN 1..4 LOOP
               DBMS_OUTPUT.PUT_LINE('Outer Loop counter is ' || v_outerloopcounter || 
                    ' Inner Loop counter is ' || v_innerloopcounter);
          END LOOP;
     END LOOP;
END;
