DECLARE
    Source_Lob   CLOB;
    Dest_Lob   CLOB;
    Copy_Amount INTEGER;
BEGIN
    SELECT CLOB_LOCATOR into Dest_LOB
         FROM LOBS
         WHERE LOB_INDEX = 5 FOR UPDATE;
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 1;
    Copy_Amount := DBMS_LOB.GETLENGTH(Source_Lob);
    DBMS_LOB.COPY(Dest_LOB, Source_LOB,Copy_Amount);
    COMMIT;
-- Start second copy process
    SELECT CLOB_LOCATOR into Dest_LOB
         FROM LOBS
         WHERE LOB_INDEX = 6 FOR UPDATE;
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 2;
    Copy_Amount := DBMS_LOB.GETLENGTH(Source_Lob);
    DBMS_LOB.COPY(Dest_LOB, Source_LOB,Copy_Amount);
    COMMIT;
END;
