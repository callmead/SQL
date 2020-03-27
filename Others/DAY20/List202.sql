CREATE or REPLACE TRIGGER security

/* This trigger package will send an alert called emp_change when
   a row has been INSERTED, DELETED, or UPDATED.  It will also send
   a message with the old Employee ID, the New Employee ID, the old
   Pay Rate and the new Pay Rate  */

BEFORE INSERT OR UPDATE OR DELETE ON employee
FOR EACH ROW
BEGIN

/* Send the Alert emp_change with the old and new values from the
   row being updated, changed, or deleted.  Notice the use of :old
   for the contents of the original data and :new for the contents
   of the new data  */

     DBMS_ALERT.SIGNAL('emp_change','NOTICE:  Old ID: ' || :old.emp_id
          || ' New ID: ' || :new.emp_id || ' Old Pay Rate: '
          || :old.pay_rate || ' New Pay Rate:  ' || :new.pay_rate);

/* Insert all of the values into the security table */
     INSERT INTO security
          (old_emp_id,old_emp_name,old_supervised_by,
           old_pay_rate,old_pay_type,old_emp_dept_id,
           new_emp_id,new_emp_name,new_supervised_by,
           new_pay_rate,new_pay_type,new_emp_dept_id,
           verified,changed_by,time_changed)
     VALUES
          (:old.emp_id,:old.emp_name,:old.supervised_by,
           :old.pay_rate,:old.pay_type,:old.emp_dept_id,
           :new.emp_id,:new.emp_name,:new.supervised_by,
           :new.pay_rate,:new.pay_type,:new.emp_dept_id,
           'N',USER,SYSDATE);

END security; -- End of the Trigger Security
/
