DECLARE
v_Score Number := 85; --Percentage
v_LetterGrade Char(1);
BEGIN
IF v_Score between 90 and 100 THEN
     v_LetterGrade := 'A';
ELSIF v_Score between 80 and 89 THEN
     v_LetterGrade := 'B';
ELSIF v_Score between 70 and 79 THEN
     v_LetterGrade := 'C';
ELSIF v_Score between 60 and 69 THEN
     v_LetterGrade := 'D';
ELSE
     v_LetterGrade := 'E';
END IF;
     DBMS_OUTPUT.PUT_LINE('Your Letter Grade is: ' || v_LetterGrade);
END;
/
