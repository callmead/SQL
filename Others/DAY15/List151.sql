CREATE or REPLACE FUNCTION Factorial(p_MyNum INTEGER)

/* Creates a recursive function which simply calculates
   the factorial of a number.  The function starts with
   the number and then calls the funciton with n-1,
   until n = 1 which returns a value of 1.  Without this
   statement, the function would never end.         */

     RETURN NUMBER AS
BEGIN -- Start of Factorial Function
     IF p_MyNum = 1 THEN -- Checking for last value to process of n-1
          RETURN 1;
     ELSE
          RETURN(p_MyNum * Factorial(p_MyNum-1)); -- Recursive
     END IF;
END; -- End of Factorial Function
