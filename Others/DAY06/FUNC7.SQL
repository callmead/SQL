CREATE OR REPLACE function exitfunc(p_pass_string VARCHAR2)
     RETURN NUMBER IS
          v_MYCOUNTER INTEGER := 1;
          v_COUNTNOSP NUMBER := 0;
BEGIN
     WHILE v_MYCOUNTER <= LENGTH(p_PASS_STRING) LOOP
          IF SUBSTR(p_PASS_STRING,v_MYCOUNTER,1) != ' ' THEN
               v_COUNTNOSP := v_COUNTNOSP + 1;
          ELSE
               NULL;
          END IF;
          v_MYCOUNTER := v_MYCOUNTER + 1;
          EXIT WHEN SUBSTR(p_PASS_STRING,v_MYCOUNTER,1) = ' ';
     END LOOP;
     RETURN v_COUNTNOSP ;
END exitfunc;
