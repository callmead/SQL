DECLARE
/* This PL/SQL block finds patterns in a CLOB.  It also
   extracts part of the data from a CLOB with SUBSTR */

    Source_Lob   CLOB;
    v_Pattern VARCHAR2(6) := 'Oracle';
    v_Starting_Location INTEGER := 1;
    v_Nth_Occurrence INTEGER := 1;
    v_Position INTEGER ;
    v_Extract_Amount INTEGER;
    v_Buffer VARCHAR2(100) ;
BEGIN
-- Search for 1st Occurrence of Oracle in Row 5
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 5; 
    v_Position := DBMS_LOB.INSTR(Source_LOB,v_Pattern,v_Starting_Location,v_Nth_Occurrence);
    DBMS_OUTPUT.PUT_LINE('The first occurrence starts at position: ' || v_Position);

-- Search for 2nd Occurrence of Oracle in Row 5

    v_Nth_Occurrence := 2;

    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 5; 
    v_Position := DBMS_LOB.INSTR(Source_LOB,v_Pattern,v_Starting_Location,v_Nth_Occurrence);
    DBMS_OUTPUT.PUT_LINE('The second occurrence starts at position: ' || v_Position);


-- Extract part of the data from a CLOB
   SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 6;
   v_Buffer := DBMS_LOB.SUBSTR(Source_LOB,11,v_Starting_Location);
   DBMS_OUTPUT.PUT_LINE('The substring extracted is: '  || v_Buffer);


END;
