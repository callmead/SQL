CREATE OR REPLACE PROCEDURE HELLO AS
BEGIN
     DBMS_OUTPUT.PUT_LINE('Hello World! ' || TO_CHAR(sysdate,'MM-DD-YY HH:MI:SS AM'));
END;