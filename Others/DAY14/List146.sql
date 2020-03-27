DECLARE
     v_paylevel INTEGER := 5; -- level for raise
     v_payrate NUMBER := 55.25; -- hourly pay rate
     v_newrate NUMBER ; -- new pay rate adjusted for raise
BEGIN
     DBMS_OUTPUT.PUT_LINE('Values before raise function: Payrate: ' ||
     v_payrate || ' Raise Level: ' || v_paylevel || ' New Rate: ' ||
     v_newrate);
/* Calculate the new pay rate by calling the raise function */
     v_newrate := raise(v_paylevel,v_payrate);
     DBMS_OUTPUT.PUT_LINE('Values after raise function: Payrate: ' ||
     v_payrate || ' Raise Level: ' || v_paylevel || ' New Rate: ' ||
     v_newrate);
END;
