DECLARE
     v_Convert_Date DATE := TO_DATE('06112067BC','MMDDYYYYBC');
     v_Hold_Date VARCHAR2(100);
BEGIN
     v_Hold_Date := TO_CHAR(v_Convert_Date,'MMDDSYYYY');
     DBMS_OUTPUT.PUT_LINE('The converted date is: ' || v_Hold_Date);
END;
