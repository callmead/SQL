DECLARE
     v_JobNum  BINARY_INTEGER;
BEGIN
     DBMS_JOB.SUBMIT(v_JobNum,'weekly(''maintenance'',1000,''Friday'');',sysdate,
          'NEXT_DAY(TRUNC(SYSDATE),''FRIDAY'') + 22/24');
END;
