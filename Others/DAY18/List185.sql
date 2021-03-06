DECLARE
-- Create a file handle of type UTL_FILE.FILE_TYPE to read in a file
     v_INFileHandle UTL_FILE.FILE_TYPE;
-- User defined variable for buffer
     v_MyBuffer VARCHAR2(1022);
-- Begin variables to hold fields you are importing
     v_SSNO VARCHAR2(9);
     v_FirstName VARCHAR2(15);
     v_LastName VARCHAR2(20);
BEGIN
-- Open the files to read and import.
     v_INFileHandle := UTL_FILE.FOPEN('c:\','pres.txt','r');
LOOP
     BEGIN
-- Read in One Line
     UTL_FILE.GET_LINE(v_INFileHandle,v_MyBuffer);
-- Parse Data and assign to variables
-- Use RTRIM to remove any blank spaces
     v_SSNO := RTRIM(SUBSTR(v_MyBuffer,1,9));
     v_FirstName := RTRIM(SUBSTR(v_MyBuffer,10,15));
     v_LastName := RTRIM(SUBSTR(v_MyBuffer,25,20));
-- Insert Data into the Table
INSERT INTO PRES(SSNO,FNAME,LNAME)
     VALUES(v_SSNO,v_FirstName,v_LastName);
-- Check for end of file
     EXCEPTION
          WHEN NO_DATA_FOUND THEN
               EXIT;
     END;
END LOOP;

-- Close the file handle which points to pres.txt
     UTL_FILE.FCLOSE(v_INFileHandle);
     COMMIT;
EXCEPTION
-- Create Exception to simply display error code and message
     WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE
		('ERROR ' || to_char(SQLCODE) || SQLERRM);
          NULL;
END;
/
