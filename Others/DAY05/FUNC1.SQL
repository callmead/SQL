CREATE OR REPLACE function squareme(thenum number)
RETURN NUMBER IS
BEGIN
RETURN thenum * thenum;
end squareme;
