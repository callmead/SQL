DECLARE
  v_HoursWorked Number := 50 ; --Number of hours worked by hourly employee
  v_OverTime Number := 0 ; --Storage of Overtime Hours
BEGIN
  IF v_HoursWorked > 40 THEN
    v_OverTime := v_HoursWorked - 40;
       DBMS_OUTPUT.PUT_LINE('Hours overtime worked = ' || v_OverTime);
  END IF;
END;
