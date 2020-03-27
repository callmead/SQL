DECLARE
     v_Hold_Month Number;
BEGIN
     v_Hold_Month := TO_NUMBER(TO_CHAR(TO_DATE('11-JUN-67'),'MM'));
     DBMS_OUTPUT.PUT_LINE(v_Hold_Month);
     DBMS_OUTPUT.PUT_LINE('Converted to Roman Numeral ' || LTRIM(TO_CHAR(v_Hold_Month,'RM'),' '));
END;
