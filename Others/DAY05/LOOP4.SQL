BEGIN
     FOR v_loopcounter IN 1..6 LOOP
          IF MOD(v_loopcounter,2) = 0 THEN
               DBMS_OUTPUT.PUT_LINE('Loop counter is ' || v_loopcounter);
          END IF; -- End execution of statements for even counter
     END LOOP;
END;
