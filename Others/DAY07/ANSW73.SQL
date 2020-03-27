DECLARE
     v_String1 VARCHAR2(60) := CONCAT('Connect String1 to',' String2');
     v_String2 VARCHAR2(60) := 'Connect String1 to' || ' String2';
BEGIN
     DBMS_OUTPUT.PUT_LINE(v_String1);
     DBMS_OUTPUT.PUT_LINE(v_String2);
END;
