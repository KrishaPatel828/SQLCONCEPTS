-- LENGTH --
SELECT firstname,LENGTH(firstname) FROM employee
ORDER BY 1;
-- UPPER AND LOWER --
-- used for standardisation --
SELECT firstname,UPPER(firstname),lastname,LOWER(lastname)
FROM employee;

-- TRIM --
-- remove whitespaces --
SELECT TRIM('     KRISHA     ');
-- LEFT TRIM --
SELECT LTRIM('     KRISHA     ');
-- RIGHT TRIM --
SELECT RTRIM('     KRISHA     ');

-- SUBSTRING --
-- SUBSTRING(column_name,num1,num2):num1 gives which character to start from,num2 gives number of characters from the record to be shown in the table--
SELECT firstname,Joindate,SUBSTRING(Joindate,6,2) AS month_joined FROM employee;
SELECT firstname,Joindate,SUBSTRING(Joindate,1,7) FROM employee;
-- LEFT --
-- LEFT(column_name,number) the digit gives the number of characters needed --
-- RIGHT --
SELECT firstname ,LEFT(firstname,2) AS temp_firstname,lastname, RIGHT(lastname,3) AS temp_lastname FROM employee;

-- REPLACE --
-- REPLACE(column_name,p1,p2):p1 gives value to be replaced,p2 is the value to be replaced with --
SELECT Department,
REPLACE(Department,'a','@') 
FROM employee;

-- LOCATE --
-- LOCATE('char',column_name)locates given set of characters in given column--
SELECT firstname,LOCATE('ja',firstname) FROM employee;

-- CONCATENATE --
-- CONCAT(column1,coulmn2)used for combinig columns --
SELECT firstname,
lastname,
CONCAT(firstname,' ',lastname) AS full_name
FROM employee; 
