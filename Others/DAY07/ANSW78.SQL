select TO_CHAR(NEW_TIME(TO_DATE('02-22-97 05:00:00 AM',
          'MM-DD-YY HH:MI:SS AM'),
          'CST','NST'), 'DD-MON-YY HH:MI:SS AM') "Central to Newfoundland"
     from DUAL
