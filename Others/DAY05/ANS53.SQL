BEGIN
     FOR v_loopcounter IN 1..9 LOOP
          IF MOD(v_loopcounter,3) = 0 THEN
               DBMS_OUTPUT.PUT_LINE('The counter * pi is ' || v_loopcounter * mypi );
          END IF; -- End execution of statements for even counter
     END LOOP;
END;
