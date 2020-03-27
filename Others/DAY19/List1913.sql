CREATE OR REPLACE PROCEDURE HELLOFLE IS

--DECLARE
-- Create a file handle of type UTL_FILE.FILE_TYPE
     v_MyFileHandle UTL_FILE.FILE_TYPE;
BEGIN
-- Open the file to write.
     v_MyFileHandle := UTL_FILE.FOPEN('c:\','hello.txt','a');
     UTL_FILE.PUT_LINE(v_MyFileHandle,
          'Hello World! ' || TO_CHAR(sysdate,'MM-DD-YY HH:MI:SS AM'));

-- Close the file handle which points to myout.txt
     UTL_FILE.FCLOSE(v_MyFileHandle);
EXCEPTION
-- Create Exception to simply display error code and message
     WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE
               ('ERROR ' || to_char(SQLCODE) || SQLERRM);
          NULL;
END;
