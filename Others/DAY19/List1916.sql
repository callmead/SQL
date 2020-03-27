BEGIN
--Make sure you enter the job numbers assigned for the first two jobs
     DBMS_JOB.RUN(24);
     DBMS_JOB.RUN(25);
     DBMS_JOB.RUN(109);
END;
