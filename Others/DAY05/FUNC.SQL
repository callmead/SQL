CREATE OR REPLACE FUNCTION emptype (paytype CHAR)
     RETURN VARCHAR2 IS
BEGIN
     IF paytype = 'H' THEN
          RETURN 'Hourly';
     ELSIF paytype = 'S' THEN
          RETURN 'Salaried';
     ELSIF paytype = 'E' THEN
          RETURN 'Executive';
     ELSE
          RETURN 'Invalid Type';
     END IF;
EXCEPTION
     WHEN OTHERS THEN
          RETURN 'ERROR ENCOUNTERED';
END emptype;
