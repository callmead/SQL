DECLARE
     v_Counter NUMBER;
BEGIN
     FOR v_Counter IN 1..5 LOOP
          DBMS_OUTPUT.PUT(v_Counter);
          DBMS_OUTPUT.PUT_LINE(v_Counter);
     END LOOP;
     DBMS_OUTPUT.PUT_LINE('We will now test with a newline character');
     FOR v_Counter IN 1..5 LOOP
          DBMS_OUTPUT.PUT(v_Counter);
          DBMS_OUTPUT.NEW_LINE;
     END LOOP;
END;
