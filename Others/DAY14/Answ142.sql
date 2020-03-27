DECLARE
    v_MyNumber NUMBER := 0;
BEGIN
    LOOP
        IF v_MyNumber = 7 THEN
             EXIT;
        END IF;
    v_MyNumber := v_MyNumber + 2;
        DBMS_OUTPUT.PUT_LINE('The valye of v_MyNumber is: ' || v_MyNumber);
    END LOOP;
END;
