DECLARE

/* This Anonymous PL/SQL block will demonstrate how to 
   open a BFILE, close the BFILE, and do some error checking
   with FILEEXISTS, FILEISOPEN, and retrieve the Directory
   Object and Path with GETFILENAME  */

     v_BOOKFILE BFILE; -- BFILE to access
     v_DIRNAME VARCHAR2(30); -- Holds Directory Object for FILEGETNAME
     v_LOCATION VARCHAR2(2000); -- Holds filename for FILEGETNAME
     v_FILEISOPEN INTEGER; -- Holds status to check if the file is open
     v_FILEEXISTS INTEGER; -- Holds status if the file actually exists

BEGIN
     v_BOOKFILE := BFILENAME('BOOKS_DIR','BOOK1.GIF'); -- Create Locator
     v_FILEISOPEN := DBMS_LOB.FILEISOPEN(v_BOOKFILE); -- Check if file open

     v_FILEEXISTS := DBMS_LOB.FILEEXISTS(v_BOOKFILE); -- Check to see if file exists

     IF v_FILEEXISTS = 1 THEN
           DBMS_OUTPUT.PUT_LINE('The file exists');
     ELSE
           DBMS_OUTPUT.PUT_LINE('The file cannot be found');
     END IF;

     IF v_FILEISOPEN = 1 THEN  --Determine actions if file is opened or not
           DBMS_OUTPUT.PUT_LINE('The file is open');
     ELSE
           DBMS_OUTPUT.PUT_LINE('Opening the file');
           DBMS_LOB.FILEOPEN(v_BOOKFILE);
     END IF;


     DBMS_LOB.FILEGETNAME(v_BOOKFILE,v_DIRNAME,v_LOCATION); -- Get BFILE information
     DBMS_OUTPUT.PUT_LINE('The Directory Object is: ' || v_DIRNAME ||
          ' The File Name is: ' || v_LOCATION);

     DBMS_LOB.FILECLOSE(v_BOOKFILE); -- Close the BFILE

END;
