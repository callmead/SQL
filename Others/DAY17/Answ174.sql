DECLARE
/* The purpose of this PL/SQL block is to delete a table
   called MyTable, which has two columns of type INTEGER and
   the second column of type VARCHAR2(50).  This utilizes the
   DBMS_SQL package to execute DDL statements */

     v_CursorID  NUMBER; -- Variable assigned to value from OPEN_CURSOR
     v_CreateTableString  VARCHAR2(500); -- SQL stored as string to drop table
     v_NUMRows  INTEGER; -- Number of rows processed - of no use

BEGIN
     v_CursorID := DBMS_SQL.OPEN_CURSOR; -- Get the Cursor ID
     v_CreateTableString := 'DROP TABLE MyTable'; -- Write SQL code to drop table
  
     DBMS_SQL.PARSE(v_CursorID,v_CreateTableString,DBMS_SQL.V7);
          /* Perform syntax error checking */
     v_NumRows := DBMS_SQL.EXECUTE(v_CursorID);
          /* Execute the SQL code  */

EXCEPTION
     WHEN OTHERS THEN
          RAISE; -- raise if some other unknown error
          
     DBMS_SQL.CLOSE_CURSOR(v_CursorID); -- Close the cursor
END; -- End PL/SQL block