DECLARE
BEGIN
     DBMS_JOB.ISUBMIT(200,'easy;',sysdate,'SYSDATE + 1');
END;
