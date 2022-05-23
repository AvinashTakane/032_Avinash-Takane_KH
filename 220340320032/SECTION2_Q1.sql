/*
1.Write a stored procedure by the name of PROC1 that accepts two varchar strings as parameters. 
Your procedure should then determine if the first varchar string exists inside the varchar string. 
For example, if string1 = ‘DAC’ and string2 = ‘CDAC, then string1 exists inside string2.
The stored procedure should insert the appropriate message into a suitable TEMPP output table.
Calling program for the stored procedure need not be written.*/

CREATE TABLE TEMP(RESULT VARCHAR(20));

DROP PROCEDURE PROC1;
DELIMITER #
CREATE PROCEDURE PROC1(firString VARCHAR(20),secString VARCHAR(20))
BEGIN
DECLARE instring INT DEFAULT 0;	
SET instring = INSTR(secString,firString);
CREATE TABLE TEMPP (
Message VARCHAR(50)); 
IF(instring = 0) THEN
INSERT INTO TEMPP
VALUES ('String 1 does not exists in String 2');
ELSE
INSERT INTO TEMPP
VALUES ('String 1 exists in String 2');
END IF;
SELECT * FROM TEMPP;
DROP TABLE TEMPP;
END#
call PROC1('DAC','CDAC')








