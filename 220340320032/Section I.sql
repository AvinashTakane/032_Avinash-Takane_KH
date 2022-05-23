CREATE DATABASE EXAM;
USE EXAM;
create table DEPT (DEPTNO int(2),
DNAME varchar(15),
LOC	varchar(10));

INSERT INTO DEPT VALUES(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');
SELECT * FROM DEPT;

CREATE TABLE EMP (EMPNO	int(4),
ENAME varchar(10),
JOB	varchar(9),
HIREDATE date,
SAL	float(7,2),
COMM float(7,2),
DEPTNO int(2));

INSERT INTO EMP VALUES
(7839,'KING','MANAGER','1991-11-17',5000,NULL,10),
(7698,'BLAKE','CLERK','1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER','1981-06-09',2450,NULL,10),
(7566,'JONES','CLERK','1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN','1981-09-28',1250,1400,30),
(7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30)
;
SELECT * FROM EMP;

-- 3.Display all the employees where SAL between 2500 and 5000 (inclusive of both).
SELECT * FROM EMP WHERE SAL BETWEEN 2500 AND 5000;

-- 4.Display all the ENAMEs in descending order of ENAME.
SELECT ENAME FROM EMP ORDER BY ENAME DESC;

-- 5.Display all the JOBs in lowercase.
SELECT DISTINCT LOWER(JOB) FROM EMP;

-- 6.Display the ENAMEs and the lengths of the ENAMEs.
SELECT ENAME,LENGTH(ENAME) FROM EMP;

-- 7.Display the DEPTNO and the count of employees who belong to that DEPTNO .
SELECT DEPTNO,COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO ORDER BY 1;

-- 8.Display the DNAMEs and the ENAMEs who belong to that DNAME.
SELECT DNAME,ENAME FROM EMP,DEPT WHERE DEPT.DEPTNO=EMP.DEPTNO;

-- 9.Display the position at which the string ‘AR’ occurs in the ename.
SELECT POSITION('AR' IN ENAME) FROM EMP;

 -- 10.Display the HRA for each employee given that HRA is 20% of SAL.
SELECT SAL/100*20 AS HRA FROM EMP;
















