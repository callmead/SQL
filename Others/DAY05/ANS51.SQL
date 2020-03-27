CREATE OR REPLACE FUNCTION mygrade(p_score NUMBER)
     RETURN CHAR IS
BEGIN
IF p_Score >= 90 THEN
     RETURN 'A';
ELSIF p_Score >= 80 THEN
     RETURN 'B';
ELSIF p_Score >= 70 THEN
     RETURN 'C';
ELSIF p_Score >= 60 THEN
     RETURN 'D';
ELSE
     RETURN 'E';
END IF;
END;

