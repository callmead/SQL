CREATE or REPLACE PACKAGE Debug AS
     PROCEDURE Out(p_Comments IN VARCHAR2, p_Variable IN VARCHAR2);
/* Procedure Out is used to output a comment of your
   choice, along with the contents of the variable.  The 
   Procedure Out statement defines the format of the function */
     PROCEDURE Erase;
/* Procedure Erase is used to erase the contents of the file.
   Used to start a new debugging process.  Good idea to call 
   this function first.  */
END Debug; -- End Definition of package Debug