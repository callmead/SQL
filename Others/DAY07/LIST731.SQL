select TO_CHAR(ROUND(TO_DATE('060297 01:00:35 AM',
          'MMDDYY HH:MI:SS AM'),
          'MI'), 'DD-MON-YY HH:MI:SS AM') "Rounded to nearest Minute"
     from DUAL
