CREATE or REPLACE PACKAGE BODY Debug AS
     PROCEDURE Out(p_Comments IN VARCHAR2,p_Variable IN VARCHAR2) IS
          v_MyFHOUT UTL_FILE.FILE_TYPE; -- Declare File Handle
BEGIN
/* Use A to append all output being sent to the file */

     v_MyFHOUT := UTL_FILE.FOPEN('c:\','debug.txt','a');

/* This outputs the System Time and Date formated in MM-DD-YY HH:MM:SS
   followed by any comments you want to output and the contents of the
   variables.  Notice each element is surrounded by quotation marks and
   separated by a comma to create a comma separated value file */ 

     UTL_FILE.PUT_LINE(v_MyFHOUT,'"'||TO_CHAR(SYSDATE,'mm-dd-yy HH:MM:SS AM')
           || '","Comment: ' || p_Comments || '","Variable Contents: ' || p_Variable || '"');

/* Close the file handle which points to debug.txt */
     UTL_FILE.FCLOSE(v_MyFHOUT);

EXCEPTION
/* Create Exception to simply display error code and message */
     WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE
		('ERROR ' || to_char(SQLCODE) || SQLERRM);
          NULL; -- Do Nothing
     END Out; -- End Execution of Procedure Out


     PROCEDURE Erase IS
          v_MyFH UTL_FILE.FILE_TYPE; -- Create File Handle
     BEGIN
/* Open file to overwrite current file contents.  Doing this
   erases the contents of the original file completely */

     v_MyFH := UTL_FILE.FOPEN('c:\','debug.txt','w');

-- Close the file handle which points to debug.txt
     UTL_FILE.FCLOSE(v_MyFH);

     EXCEPTION
-- Create Exception to simply display error code and message
          WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE
		     ('ERROR ' || to_char(SQLCODE) || SQLERRM);
               NULL;
     END Erase; -- End Procedure Erase

BEGIN
    Erase; -- Erase contents of the file

END Debug; -- End procedure DEBUG

