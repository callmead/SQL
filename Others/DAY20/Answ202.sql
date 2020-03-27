DECLARE
   Is_Fire INTEGER := 0;
BEGIN
   LOOP
        IF Is_Fire = 1 THEN
            DBMS_ALERT.SIGNAL('a_fire','A Fire has Broken Out');
            EXIT;
        END IF;
        checkfire; -- procedure called to check for fire
   END LOOP;
END;
