DECLARE
     v_Convert_Date DATE;
BEGIN
     v_Convert_Date := TO_DATE('061167','MMDDYY');
     DBMS_OUTPUT.PUT_LINE('The converted date is: ' || v_Convert_Date);
END;
