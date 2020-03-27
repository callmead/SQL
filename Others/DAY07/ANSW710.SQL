select LAST_DAY(SYSDATE) "Last_Day",
          TO_DATE('25-DEC-97') - LAST_DAY(SYSDATE) "Shopping Days"
     from DUAL
