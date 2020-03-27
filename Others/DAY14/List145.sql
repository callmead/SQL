CREATE or REPLACE FUNCTION raise(
          p_paylevel INTEGER, -- parameter for input of raise level
          p_payrate NUMBER)   -- parameter for input of pay rate
/* The purpose of this function is to calculate ANNUAL raises
   for all of the hourly employees, based upon their raise leve
   values 1-4 and all others.  */

     RETURN NUMBER IS
     v_newrate NUMBER; -- New Hourly Rate After Raise
BEGIN
     IF p_paylevel = 1 THEN
          v_newrate := p_payrate * 1.10; -- Promotion Raise
     ELSIF p_paylevel = 2 THEN
          v_newrate := p_payrate * 1.05; -- Exceeds Rate
     ELSIF p_paylevel = 3 THEN
          v_newrate := p_payrate * 1.04; -- Hi Meets Rate
     ELSIF p_paylevel = 4 THEN
          v_newrate := p_payrate * 1.03; -- Meets Rate
     ELSE
          v_newrate := p_payrate * 1.02; -- All Others
     END IF;
     RETURN v_newrate; -- Returns new paylevel rate to procedure
END raise;

