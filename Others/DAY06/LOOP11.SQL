DECLARE
     v_Radius NUMBER := 2;
BEGIN
     LOOP
          DBMS_OUTPUT.PUT_LINE('The AREA of the circle is ' || v_RADIUS*v_RADIUS * mypi);
	  v_Radius := v_Radius + 2;
          EXIT WHEN v_Radius > 10;
     END LOOP;
END;
