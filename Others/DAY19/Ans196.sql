DECLARE
     v_statpipe1 integer; -- status of private pipe
     v_statpipe2 integer; -- status of private pipe
     v_holdtype INTEGER; -- holds status of next item type
     v_holdchar VARCHAR2(100);
     v_holddate DATE;
     v_holdnum NUMBER;
     v_holdraw RAW(4000);
     v_holdrowid ROWID;
BEGIN
-- start procedure of getting message from private pipe
     v_statpipe1 := DBMS_PIPE.RECEIVE_MESSAGE('myprivatepipe',15);
     DBMS_PIPE.UNPACK_MESSAGE(v_holdchar);
     DBMS_OUTPUT.PUT_LINE(v_holdchar); -- display first datatype from message
     DBMS_PIPE.UNPACK_MESSAGE(v_holdchar);
     DBMS_OUTPUT.PUT_LINE(v_holdchar); -- display second datatype from message

-- start procedure of getting message from public pipe
     v_statpipe2 := DBMS_PIPE.RECEIVE_MESSAGE('mypublicpipe',10);
     LOOP
          v_holdtype := DBMS_PIPE.NEXT_ITEM_TYPE;
          IF v_holdtype = 0 THEN EXIT;
          ELSIF v_holdtype = 6 THEN
               DBMS_PIPE.UNPACK_MESSAGE(v_holdnum);
          ELSIF v_holdtype = 9 THEN
               DBMS_PIPE.UNPACK_MESSAGE(v_holdchar);
          ELSIF v_holdtype = 12 THEN
               DBMS_PIPE.UNPACK_MESSAGE(v_holddate);
          ELSIF v_holdtype = 11 THEN
               DBMS_PIPE.UNPACK_MESSAGE_ROWID(v_holdrowid);
          ELSIF v_holdtype = 23 THEN
               DBMS_PIPE.UNPACK_MESSAGE_RAW(v_holdraw);
          END IF;
     END LOOP;
-- display all three types of data
     DBMS_OUTPUT.PUT_LINE(v_holdchar || ' ' || v_holddate || ' ' || v_holdnum);
END;
