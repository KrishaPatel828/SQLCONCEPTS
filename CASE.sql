-- CASE STATEMENTS --
SELECT name,gender, 
CASE
    WHEN age <=30 THEN 'Ýoung'
    WHEN age >30 THEN 'OLD'
    WHEN age >=50 THEN "on Death's door"
END AS age_criteria
FROM members;

-- PAY INCREASE AND BONUS
-- >50000
-- <50000
-- Finance=10% bonus
SELECT CONCAT(firstname,' ',lastname),salary,department,
CASE
    WHEN salary>50000 THEN salary+(salary * 0.05)
    WHEN salary<50000 THEN salary+(salary*0.07)
END AS NEW_SALARY,
CASE 
    WHEN department='Finance' THEN salary*0.10
END AS BONUS
FROM employee;

