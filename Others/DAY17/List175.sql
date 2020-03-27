DECLARE
/* This procedure calls an anonymouse block which performs a
   query to lookup the description for the row id value = 2.
   This demonstrates the use of an anonymous PL/SQL block 
   within PL/SQL  */

     v_CursorID  NUMBER; -- Variable assigned to value from OPEN_CURSOR
     v_MatchRecord  VARCHAR2(500); -- SQL stored as string to select one record
     v_NUMRows  INTEGER; -- Number of rows processed - of no use
     v_MyNum INTEGER;
     v_MyText VARCHAR2(50);

BEGIN
     v_CursorID := DBMS_SQL.OPEN_CURSOR; -- Get the Cursor ID
     v_MatchRecord := 'BEGIN -- Start of Anonymous PL/SQL Block
                          SELECT MyRow,MyDesc 
                             INTO :MyRow, :MyText FROM MyTable
                             WHERE Myrow = 4; -- Notice has ending semi-colon
                       END;'; -- End of Anonymous PL/SQL Block
          
     DBMS_SQL.PARSE(v_CursorID,v_MatchRecord,DBMS_SQL.V7);
          /* Perform syntax error checking */

     DBMS_SQL.BIND_VARIABLE(v_CursorID, ':MyRow',v_MyNum);
     DBMS_SQL.BIND_VARIABLE(v_CursorID, ':MyText',v_MyText,50); 

     v_NumRows := DBMS_SQL.EXECUTE(v_CursorID);
          /* Execute the SQL code  */


     DBMS_SQL.VARIABLE_VALUE(v_CursorId,':MyRow',v_MyNum);
     DBMS_SQL.VARIABLE_VALUE(v_CursorId,':MyText',v_MyText);
     /* Defines variables to hold output */
  
     DBMS_OUTPUT.PUT_LINE(v_MyNum || ' ' || v_MyText);


EXCEPTION
     WHEN OTHERS THEN
               RAISE; -- raise if some other unknown error  

     DBMS_SQL.CLOSE_CURSOR(v_CursorID); -- Close the cursor

END; -- End PL/SQL block


