DECLARE
    message VARCHAR2(1800); -- Display Incoming Message from Alert
    alert_name VARCHAR2(30); -- Hold name of alert which was received
    status INTEGER; -- Holds Status 0 if success, 1 if timed out
BEGIN
     DBMS_ALERT.REGISTER('emp_change'); -- Registers for Alert emp_change
     DBMS_ALERT.REGISTER('my_test'); -- Registers for Alert my_test
     DBMS_ALERT.REGISTER('extra_alert'); -- Registers for Alert extra_alert
     DBMS_ALERT.WAITANY(alert_name,message,status,600); -- Wait for any alert
     DBMS_OUTPUT.PUT_LINE(message); -- Display Message
     DBMS_ALERT.REMOVEALL; -- Remove Registration for Alert
END;
/
