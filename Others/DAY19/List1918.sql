BEGIN
-- Enter your job number assigned!
    DBMS_JOB.INTERVAL(24,'SYSDATE + 7');
END;
