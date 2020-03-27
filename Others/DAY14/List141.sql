DECALRE
    v_MyChar VARCHAR2 := 'test';
    v_NUMBER NUMBER;
    Date DATE = SYSDATE;
    v_counter INTEGER;
NEGIN
    DBMS_OUTPUT.PUT_LINE('This is a Test')
    DBMS_OUTPUT.PUT_LINE("Of Syntax Error Debugging");
    For v_COUNTER IN 1..5 LOOP
        DBMS_OUTPUT.PUTLINE('You are in loop: || v_counter);
    END-LOOP;
END
