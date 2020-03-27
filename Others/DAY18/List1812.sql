DECLARE
     v_Counter NUMBER;
     v_HoldBuffer VARCHAR2(255);
     v_HoldStatus INTEGER;
BEGIN
     DBMS_OUTPUT.ENABLE;
     FOR v_Counter IN 1..5 LOOP
          DBMS_OUTPUT.PUT(v_Counter);
          DBMS_OUTPUT.PUT_LINE(v_Counter);
     END LOOP;
     DBMS_OUTPUT.PUT_LINE('We will now test with a newline character');
     FOR v_Counter IN 1..5 LOOP
          DBMS_OUTPUT.PUT(v_Counter);
          DBMS_OUTPUT.NEW_LINE;
     END LOOP;
     DBMS_OUTPUT.GET_LINE(v_HoldBuffer,v_HoldStatus);
     DBMS_OUTPUT.PUT_LINE(v_HoldBuffer);
END;