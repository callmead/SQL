DECLARE
     v_stat NUMBER ;
BEGIN
     v_stat := dbms_pipe.remove_pipe('myprivatepipe');
     DBMS_OUTPUT.PUT_LINE('The status for removing the private pipe is: '
          || v_stat);
     v_stat := dbms_pipe.remove_pipe('mypublicpipe');
     DBMS_OUTPUT.PUT_LINE('The status for removing the public pipe is: '
          || v_stat);
END;
