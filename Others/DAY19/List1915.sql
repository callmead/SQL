DECLARE
     v_jobnum BINARY_INTEGER;
BEGIN
     DBMS_JOB.SUBMIT(v_JobNum,'hello;',sysdate,'sysdate + (1/(24*60*60))');
     DBMS_OUTPUT.ENABLE;
     DBMS_OUTPUT.PUT_LINE('Your Job Numer assigned to hello is: '||v_jobnum);
     DBMS_JOB.SUBMIT(v_JobNum,'hellofle;',sysdate,'sysdate + (1/(24*60*60))');
     DBMS_OUTPUT.PUT_LINE('Your Job Numer assigned to hellofle is: '||v_jobnum);
     DBMS_JOB.ISUBMIT(109,'sharefle;',sysdate,'sysdate + (1/(24*60*60))');
     DBMS_OUTPUT.PUT_LINE('Your Job Numer assigned to sharefle is: 109');
END;
