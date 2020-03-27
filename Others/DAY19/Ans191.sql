DECLARE
     v_JobNum  BINARY_INTEGER;
BEGIN
     DBMS_JOB.SUBMIT(v_JobNum,'payday(''FRIDAY'',''BI_Monthly,6);',sysdate,
          'NEXT_DAY(TRUNC(SYSDATE),''SATURDAY'') + 4/24');
END;
