BEGIN
     DBMS_JOB.ISUBMIT(110,'hello;',sysdate,'sysdate + (1/(24*60*60))');
END;
