DECLARE
     v_Convert_Number VARCHAR2(20) := '$119,252.75';
     v_Hold_Number NUMBER ;
BEGIN
     v_Hold_Number := TO_Number(v_Convert_Number,'$99,999.99');
     DBMS_OUTPUT.PUT_LINE('The converted number is: ' || v_Hold_Number);
     DBMS_OUTPUT.PUT_LINE('Your commission at 6% is: ' || (v_Hold_Number*.06));
END;
