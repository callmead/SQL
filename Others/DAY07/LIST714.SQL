DECLARE
     v_Convert_Number VARCHAR2(20) := '33.33';
     v_Hold_Number NUMBER ;
BEGIN
     v_Hold_Number := TO_Number(v_Convert_Number,'999.999999');
     DBMS_OUTPUT.PUT_LINE('The converted number is: ' || v_Hold_Number);
     DBMS_OUTPUT.PUT_LINE('Your decimal equivalent is: ' || (v_Hold_Number/100));
END;
