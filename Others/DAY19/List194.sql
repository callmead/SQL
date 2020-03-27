DECLARE
     v_jobnum BINARY_INTEGER := 109;
BEGIN
     DBMS_JOB.ISUBMIT(v_jobnum,'hello;',sysdate,'sysdate + (1/(24*60*60))');
END;
