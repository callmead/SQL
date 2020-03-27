DECLARE
    v_Radius NUMBER := 2;
BEGIN
    WHILE TRUE LOOP
         DBMS_OUTPUT.PUT_LINE('The Area is ' || mypi * v_Radius * v_Radius);
         EXIT WHEN v_RADIUS = 10;
         v_Radius := v_Radius + 2 ; -- Calculates Area for Even Radius
    END LOOP;
END;
