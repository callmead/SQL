DECLARE
    v_MyNumber NUMBER := 0;
BEGIN
    LOOP
        IF v_MyNumber = 7 THEN
             EXIT;
        END IF;
    v_MyNumber := v_MyNumber + 2;
        DEBUG.OUT('v_MyNumber',v_MyNumber);
    END LOOP;
END;
