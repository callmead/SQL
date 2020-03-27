DECLARE
     v_jobnum BINARY_INTEGER;
BEGIN
     DBMS_JOB.SUBMIT(v_jobnum,'hello;',sysdate,'sysdate + (1/(24*60*60))');
     DBMS_OUTPUT.ENABLE;
     DBMS_OUTPUT.PUT_LINE('Your Job Numer assigned is: ' || v_jobnum);
END;
