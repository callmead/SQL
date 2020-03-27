DECLARE
     v_Convert_Number VARCHAR2(20) := '1997';
     v_Hold_Number NUMBER ;
BEGIN
     v_Hold_Number := TO_Number(v_Convert_Number,'9999');
     DBMS_OUTPUT.PUT_LINE('The converted number is: ' || v_Hold_Number);
     DBMS_OUTPUT.PUT_LINE('The converted number plus 10 is: ' || (v_Hold_Number+10));
END;

