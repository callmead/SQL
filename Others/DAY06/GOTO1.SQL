DECLARE
     v_Status NUMBER := 1;
BEGIN
     IF v_Status = 1 THEN
          GOTO mybranch;
     ELSE
          v_Status := 1;
     END IF;
<<mybranch>>
     NULL;
END;
