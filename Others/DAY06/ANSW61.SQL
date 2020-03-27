DECLARE
     v_GOTOVARIABLE NUMBER := 0;
BEGIN
     v_GOTOVARIABLE := 10;
     IF v_GOTOVARIABLE = 10 THEN
         GOTO nullstatement;
     ELSE
          NULL;
     END IF;
<<nullstatement>>
     NULL;
END;
