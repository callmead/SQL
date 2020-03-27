DECLARE
     v_JobNum  BINARY_INTEGER;
BEGIN
     DBMS_JOB.SUBMIT(v_JobNum,'hello;',sysdate,'sysdate + (1/(24*60*60))');
END;
