DECLARE
    v_Radius NUMBER := 2;
BEGIN
    WHILE TRUE LOOP
         DBMS_OUTPUT.PUT_LINE('The Area is ' || mypi * v_Radius * v_Radius);
         IF v_Radius = 10 THEN
             EXIT;
         END IF;
         v_Radius := v_Radius + 2 ; -- Calculates Area for Even Radius
    END LOOP;
END;
