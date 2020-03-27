DECLARE
-- Variables to write out to text file called presexp.csv
     v_SSNO       pres.ssno%TYPE;
     v_FirstName  CHAR(20);
     v_LastName   CHAR(30);
--Declare filehandle
     v_MYFileHandle UTL_FILE.FILE_TYPE;
-- Cursor declaration to fetch data from table, row by row
CURSOR c_PRES IS
     SELECT * from PRES;
BEGIN
-- Open File for writing
     v_MYFileHandle := UTL_FILE.FOPEN('c:\','presfix.csv','w');
-- Open the cursor
     OPEN c_PRES;
     LOOP
-- Get each row, one at a time
          FETCH c_PRES INTO v_SSNO,v_FirstName,v_LastName;
-- Output as FIXED BLOCK file
          EXIT WHEN c_PRES%NOTFOUND;
          UTL_FILE.PUT_LINE(v_MYFileHandle, SUBSTR(v_SSNO,1,3) || '-' 
               || SUBSTR(v_SSNO,4,2) || '-' || SUBSTR(v_SSNO,6,4)
               || v_FirstName || v_LastName);
          DBMS_OUTPUT.PUT_LINE(v_SSNO || v_FirstName || v_LastName);

     END LOOP;
-- Close Cursor
     CLOSE c_PRES;
-- Close CSV file
     UTL_FILE.FCLOSE(v_MYFileHandle);
END;
/