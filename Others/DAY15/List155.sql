DECLARE

/* The purpose of this anonymous PL/SQl block is to compare
   the contents of three files completely.  The size of the 
   files is determined by the GETLENGTH function */

     v_FILE1 BFILE;
     v_FILE2 BFILE;
     v_FILE3 BFILE;
     v_GETLENGTH1 INTEGER; -- Hold length of the file
     v_GETLENGTH2 INTEGER; -- Hold length of the file
     v_GETLENGTH3 INTEGER; -- Hold length of the file
     v_COMPARELENGTH INTEGER; -- Holds smallest of two values
     v_COMPARERESULT INTEGER; -- Hold result of comparing files

BEGIN

-- Create three locators for each of the files to compare

     v_FILE1 := BFILENAME('BOOKS_DIR','BOOK1.GIF');
     v_FILE2 := BFILENAME('BOOKS_DIR','BOOK2.GIF');
     v_FILE3 := BFILENAME('BOOKS_DIR','BOOK5.GIF');

-- Open the files for access

     DBMS_LOB.FILEOPEN(v_FILE1);
     DBMS_LOB.FILEOPEN(v_FILE2);
     DBMS_LOB.FILEOPEN(v_FILE3);

     v_GETLENGTH1 := DBMS_LOB.GETLENGTH(v_FILE1);
     v_GETLENGTH2 := DBMS_LOB.GETLENGTH(v_FILE2);
     v_GETLENGTH3 := DBMS_LOB.GETLENGTH(v_FILE3);

-- Compare 1st and 2nd File
     IF v_GETLENGTH1 < v_GETLENGTH2 THEN
          v_COMPARELENGTH := v_GETLENGTH1;
     ELSE
          v_COMPARELENGTH := v_GETLENGTH2;
     END IF;

     v_COMPARERESULT := DBMS_LOB.COMPARE(v_FILE1,v_FILE2,
          v_COMPARELENGTH,1,1);

     IF v_COMPARERESULT = 0 THEN
          DBMS_OUTPUT.PUT_LINE('Both Files Are Identical');
     ELSE
          DBMS_OUTPUT.PUT_LINE('Both Files Are Different');
     END IF;

-- Compare 1st and 3rd file     
     IF v_GETLENGTH1 < v_GETLENGTH3 THEN
          v_COMPARELENGTH := v_GETLENGTH1;
     ELSE
          v_COMPARELENGTH := v_GETLENGTH3;
     END IF;

     v_COMPARERESULT := DBMS_LOB.COMPARE(v_FILE1,v_FILE3,
          v_COMPARELENGTH,1,1);
          
     IF v_COMPARERESULT = 0 THEN
          DBMS_OUTPUT.PUT_LINE('Both Files Are Identical');
     ELSE
          DBMS_OUTPUT.PUT_LINE('Both Files Are Different');
     END IF;

     DBMS_LOB.FILECLOSEALL;

END;
