BEGIN
     <<outerloop>>
     FOR v_outerloopcounter IN 1..2 LOOP
          <<innerloop>>
          FOR v_innerloopcounter IN 1..4 LOOP
               DBMS_OUTPUT.PUT_LINE('Outer Loop counter is ' || v_outerloopcounter || 
                    ' Inner Loop counter is ' || v_innerloopcounter);
                    EXIT outerloop WHEN v_innerloopcounter = 3;
          END LOOP innerloop;
     END LOOP outerloop;
END;
