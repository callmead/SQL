DECLARE
-- Create a file handle of type UTL_FILE.FILE_TYPE
     v_MyFileHandle UTL_FILE.FILE_TYPE;
-- User defined variables to output
     v_FirstName VARCHAR2(15) := 'Thomas';
     v_LastName VARCHAR2(20) := 'Jefferson';
     v_Occupation VARCHAR2(15) := 'President';
BEGIN
-- Open the file to write.
     v_MyFileHandle := UTL_FILE.FOPEN('c:\','myout.txt','w');
-- Example of Using PUT 
     UTL_FILE.PUT(v_MyFileHandle,'First Name: ' || v_FirstName 
          || ' Last Name: ' || v_LastName 
          || ' Occupation: ' || v_Occupation);
     UTL_FILE.NEW_LINE(v_MyFileHandle,1);
-- Repeat but with PUT_LINE
     UTL_FILE.PUT_LINE(v_MyFileHandle,'First Name: ' || v_FirstName 
          || ' Last Name: ' || v_LastName 
          || ' Occupation: ' || v_Occupation);
-- Repeat with PUTF
     UTL_FILE.PUTF(v_MyFileHandle,'%s' || v_FirstName ||
               ' %s' || v_LastName || ' %s' || v_Occupation || '\n',
          'First Name: ',
          'Last Name: ',
          'Occupation: ');
-- Close the file handle which points to myout.txt
     UTL_FILE.FCLOSE(v_MyFileHandle);
EXCEPTION
-- Create Exception to simply display error code and message
     WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE
		('ERROR ' || to_char(SQLCODE) || SQLERRM);
          NULL;
END;
