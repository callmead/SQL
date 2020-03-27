DECLARE
/* This erases the data in Row 6, and trims the data in 
   row 5 to one occurrence of the book title. */

    Source_Lob   CLOB;
    Erase_Amount INTEGER;
    Trim_Amount INTEGER;
    
BEGIN
-- Erase the data completely in Row 6

    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 6 FOR UPDATE; -- Locks Row for Update
    Erase_Amount :=DBMS_LOB.GETLENGTH(Source_LOB);
    DBMS_LOB.ERASE(Source_LOB,Erase_Amount,1);

--Reduce Data in Row 5 to one instance of Book Title
    SELECT CLOB_LOCATOR into Source_LOB
         FROM LOBS
         WHERE LOB_INDEX = 5 FOR UPDATE;
    
    TRIM_AMOUNT := DBMS_LOB.GETLENGTH(Source_LOB) / 2;
    DBMS_LOB.TRIM(Source_LOB, TRIM_AMOUNT);
    COMMIT;

END;
