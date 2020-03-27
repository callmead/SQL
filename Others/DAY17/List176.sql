DECLARE
/* The purpose of this PL/SQL block is to demonstrate the use
   executing queries within PL/SQL through the use of the
   DBMS_SQL package.  We will simply display the output to
   screen with the DBMS_OUTPUT package.  We also demonstrate
   the use of tracking the progress of fetching rows*/

     v_CursorID  NUMBER; -- Variable assigned to value from OPEN_CURSOR
     v_SelectRecords  VARCHAR2(500); -- SQL stored as string to select records
     v_NUMRows  INTEGER; -- Number of rows processed - of no use
     v_MyNum INTEGER;
     v_MyText VARCHAR2(50);
     v_MyROWID ROWID;
     v_TotRow INTEGER;

BEGIN
     v_CursorID := DBMS_SQL.OPEN_CURSOR; -- Get the Cursor ID
     v_SelectRecords := 'SELECT * from MyTable'; -- SQL to view records

 
     DBMS_SQL.PARSE(v_CursorID,v_SelectRecords,DBMS_SQL.V7);
          /* Perform syntax error checking */


     DBMS_SQL.DEFINE_COLUMN(v_CursorID,1,v_MyNum);
     DBMS_SQL.DEFINE_COLUMN(v_CursorID,2,v_MyText,50);

     v_NumRows := DBMS_SQL.EXECUTE(v_CursorID);
          /* Execute the SQL code  */
LOOP
     IF DBMS_SQL.FETCH_ROWS(v_CursorID) = 0 THEN
          EXIT;
     END IF;

/*  The next four rows are used for seeing the progress for
    fetching rows  */

     v_TOTROW := DBMS_SQL.LAST_ROW_COUNT;
     v_MyROWID := DBMS_SQL.LAST_ROW_ID;
     DBMS_OUTPUT.PUT_LINE('The last row count is: ' ||
          v_TOTROW || ' The last ROWID is: ' || v_MyROWID);

     DBMS_SQL.COLUMN_VALUE(v_CursorId,1,v_MyNum);
     DBMS_SQL.COLUMN_VALUE(v_CursorId,2,v_MyText);
  
     DBMS_OUTPUT.PUT_LINE(v_MyNum || ' ' || v_MyText);

END LOOP;

EXCEPTION
     WHEN OTHERS THEN
               RAISE; -- raise if some other unknown error

     DBMS_SQL.CLOSE_CURSOR(v_CursorID); -- Close the cursor

END; -- End PL/SQL block
