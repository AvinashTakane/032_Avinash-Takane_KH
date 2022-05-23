/*2.Create a stored function by the name of FUNC1 to take three parameters, the sides of a triangle.
 The function should return a Boolean value:- TRUE if the triangle is valid, FALSE otherwise. 
 A triangle is valid if the length of each side is less than the sum of the lengths of the other two sides. 
 Check if the dimensions entered can form a valid triangle. Calling program for the stored function need not be written.*/
 
 delimiter //
 CREATE FUNCTION FUNC1(A INT,B INT,C INT)
 RETURN BOOLEAN AS INVALID EXCEPTION;
BEGIN
 IF NOT (A+B >C
	AND B+C >A
	AND C+A >B)
	THEN RAISE INVALID;
ELSE RETURN FALSE;
END IF;
EXCEPTION WHEN INVALID THEN RETURN FALSE;
WHEN OTHER THEN RETURN TRUE;
END; //
 delimiter ;
 
DROP FUNCTION FUNC1;
CALL FUNC1(10,20,30);

 
 
 
 
 
 
 