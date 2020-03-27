BEGIN
     FOR v_loopcounter IN 1..20 LOOP
          IF MOD(v_loopcounter,2) = 0 THEN
               DBMS_OUTPUT.PUT_LINE('The AREA of the circle is ' || v_loopcounter*v_loopcounter * mypi);
          END IF; -- End execution of statements for even counter
	  IF v_loopcounter = 10 THEN
               EXIT;
          END IF;
     END LOOP;
END;
