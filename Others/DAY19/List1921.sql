DECLARE
     v_statpipe1 integer; -- Status for private pipe
     v_statpipe2 integer; -- Status for public pipe created on the fly
     v_pubchar VARCHAR2(100) := 'This is a text string';
     v_pubdate DATE := sysdate;
     v_pubnum NUMBER := 109;
BEGIN
-- Creates Private Pipe
     v_statpipe1 := DBMS_PIPE.CREATE_PIPE('myprivatepipe');
-- If the pipe was sucessfully created
     IF (v_statpipe1 = 0) THEN 
          dbms_pipe.pack_message('privateline1');
          dbms_pipe.pack_message('privateline2');
-- Send Message Buffer to Private Pipe
          v_statpipe1 := dbms_pipe.send_message('myprivatepipe');
     END IF;

     DBMS_PIPE.PACK_MESSAGE(v_pubchar); -- sends datatype VARCHAR2
     DBMS_PIPE.PACK_MESSAGE(v_pubdate); -- sends datatype DATE
     DBMS_PIPE.PACK_MESSAGE(v_pubnum);  -- sends datatype NUMBER
-- Creates public pipe and sends message buffer to the pipe
     v_statpipe2 := dbms_pipe.send_message('mypublicpipe');
-- Check status of both pipes to make sure they are 0 (created properly)
     DBMS_OUTPUT.PUT_LINE('The Status of your Private Pipe is: ' ||
          v_statpipe1 );
     DBMS_OUTPUT.PUT_LINE('The Status of your Public Pipe is: ' ||
          v_statpipe2 );

END;

