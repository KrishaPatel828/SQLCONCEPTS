SELECT * FROM employee;
-- Temporary Tables --
CREATE TEMPORARY TABLE Department_Sal
SELECT firstname,lastname,salary,department
FROM employee
WHERE JoinDate>='2022-01-01';
SELECT * FROM Department_Sal;