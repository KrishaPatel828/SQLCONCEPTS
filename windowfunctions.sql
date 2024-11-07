SELECT * FROM STAFF;
SELECT * FROM PROJECT;

SELECT staff.Name,Department,AVG(Salary) 
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
GROUP BY staff.Name,Department;

-- OVER() --
SELECT Department,AVG(Salary)  OVER() 
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;

-- PARTITION BY --
SELECT staff.name,Department,AVG(Salary)  OVER(PARTITION BY department) 
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;

-- ROLLING TOTAL--
-- Kind of like a columnof cumulative frequency --
SELECT staff.name,Department,salary,SUM(Salary) OVER(PARTITION BY department ORDER BY staff.staffID) AS Rolling_Total
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;

-- ROW_NUMBER --
SELECT staff.staffID,staff.name,department,salary,
ROW_NUMBER() OVER()
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;

SELECT staff.staffID,staff.name,department,salary,
ROW_NUMBER() OVER(PARTITION BY Department ORDER BY salary)
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;

-- RANK() --
SELECT staff.staffID,staff.name,department,salary,
ROW_NUMBER() OVER(PARTITION BY Department ORDER BY salary DESC) AS ROW_NUM
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;


-- DENSE_RANK() --
SELECT staff.staffID,staff.name,department,salary,
DENSE_RANK() OVER(PARTITION BY Department ORDER BY salary DESC ) AS Dense_r
FROM staff
JOIN project 
ON staff.StaffID=project.StaffID
;
