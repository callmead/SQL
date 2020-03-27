select TO_CHAR(NEW_TIME(TO_DATE('060297 01:00:00 AM',
          'MMDDYY HH:MI:SS AM'),
          'CDT','PDT'), 'DD-MON-YY HH:MI:SS AM') "Central to Pacific"
     from DUAL
