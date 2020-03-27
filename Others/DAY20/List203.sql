DECLARE
    message VARCHAR2(1800); -- Display Incoming Message from Alert
    status INTEGER; -- Holds Status 0 if success, 1 if timed out
BEGIN
     DBMS_ALERT.REGISTER('emp_change'); -- Registers for Alert emp_change
     DBMS_ALERT.WAITONE('emp_change',message,status,60); -- Wait for alert
     DBMS_OUTPUT.PUT_LINE(message); -- Display Message
     DBMS_ALERT.REMOVE('emp_change'); -- Remove Registration for Alert
END;
/
