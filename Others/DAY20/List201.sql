CREATE TABLE security(
/*This database hold the original and new data archived from
  the payroll database to look for any violations of pay rate,
  name changes, etc., by internal employees or external hackers */

/*  Store the original values */
     Old_Emp_Id INTEGER,
     Old_Emp_Name VARCHAR2(32),
     Old_Supervised_By INTEGER,
     Old_Pay_Rate NUMBER(9,2),
     Old_Pay_Type CHAR,
     Old_Emp_Dept_Id INTEGER,
/* Store the changed values */
     New_Emp_Id INTEGER,
     New_Emp_Name VARCHAR2(32),
     New_Supervised_By INTEGER,
     New_Pay_Rate NUMBER(9,2),
     New_Pay_Type CHAR,
     New_Emp_Dept_Id INTEGER,
/* Flag to retain status if security has verified the change (Y/N)*/
     Verified CHAR(1),
/* Store Date and who made the changes */
     Changed_By VARCHAR2(8),
     Time_Changed DATE);
