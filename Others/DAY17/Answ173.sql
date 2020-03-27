DECLARE
/* The purpose of this PL/SQL block is to demonstrate the use
   of DML statements by deleting two records where MyRow
   has a value of 4 */

     v_CursorID  NUMBER; -- Variable assigned to value from OPEN_CURSOR
     v_DeleteRecords  VARCHAR2(500); -- SQL stored as string to insert records
     v_NUMRows  INTEGER; -- Number of rows processed - of no use

BEGIN
     v_CursorID := DBMS_SQL.OPEN_CURSOR; -- Get the Cursor ID
     v_DeleteRecords := 'DELETE FROM MyTable 
               where MyRow = :mynum';

/*  Update the record */
 
     DBMS_SQL.PARSE(v_CursorID,v_DeleteRecords,DBMS_SQL.V7);
          /* Perform syntax error checking */
     DBMS_SQL.BIND_VARIABLE(v_CursorID, ':mynum',4);
      v_NumRows := DBMS_SQL.EXECUTE(v_CursorID);
          /* Execute the SQL code  */
     DBMS_OUTPUT.PUT_LINE('The number of records just processed is: '
          || v_NUMRows);


EXCEPTION
     WHEN OTHERS THEN
               RAISE; -- raise if some other unknown error

     DBMS_SQL.CLOSE_CURSOR(v_CursorID); -- Close the cursor
     COMMIT;
END; -- End PL/SQL block
