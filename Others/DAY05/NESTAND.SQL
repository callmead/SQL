DECLARE
  v_HoursWorked Number := 80 ; --Number of hours worked by hourly employee
  v_OverTime Number := 0 ; --Storage of Overtime Hours
  v_PayType char(1) := 'E'; --Classification of employee, E,S, or H

BEGIN
IF v_HoursWorked > 40 and
      v_PayType = 'H' THEN
          v_OverTime := v_HoursWorked - 40;
          DBMS_OUTPUT.PUT_LINE('Hours overtime worked = ' || v_OverTime);
     ELSE
          IF v_PayType = 'S' THEN
	       DBMS_OUTPUT.PUT_LINE('Employee is Salaried');
	  ELSE
	       DBMS_OUTPUT.PUT_LINE('Employee is Executive Management');
	  END IF;
     
END IF;
END;

