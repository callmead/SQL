DECLARE
/* This appends the contents of Row 1 to the contents of Row 5.
   In addition, it writes text at the end of the values in
   Row 6.  */

    Source_Lob   CLOB;
    Dest_Lob   CLOB;
    Write_Amount INTEGER := 10;
    Writing_Position INTEGER ;
    Buffer VARCHAR2(10) := 'Added Text';
BEGIN
-- Append from Row 1 to Row 5
    SELECT CLOB_LOCATOR into Dest_LOB
         FROM LOBS
         WHERE LOB_INDEX = 5 FOR UPDATE; -- Locks Row for Update
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 1;
    DBMS_LOB.APPEND(Dest_LOB, Source_LOB);
    COMMIT;
-- Write to a LOB
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 6 FOR UPDATE;  -- Locks Row for Update

    Writing_Position := DBMS_LOB.GETLENGTH(Source_Lob) + 1;
    DBMS_LOB.WRITE(Source_LOB,Write_Amount,Writing_Position,Buffer);
    COMMIT;
END;
