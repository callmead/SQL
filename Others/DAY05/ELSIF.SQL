DECLARE
v_Score Number := 85; --Percentage
v_LetterGrade Char(1);

BEGIN
IF v_Score >= 90 THEN
     v_LetterGrade := 'A';
ELSIF v_Score >= 80 THEN
     v_LetterGrade := 'B';
ELSIF v_Score >= 70 THEN
     v_LetterGrade := 'C';
ELSIF v_Score >= 60 THEN
     v_LetterGrade := 'D';
ELSE
     v_LetterGrade := 'E';
END IF;
     DBMS_OUTPUT.PUT_LINE('Your Letter Grade is: ' || v_LetterGrade);
END;

