SELECT * FROM members
WHERE ID 
IN (SELECT member_id FROM subscriptions WHERE plan_type='Premium') ; 

SELECT customer_id,customer_name,
(SELECT AVG(order_amount) FROM orders )
FROM customers;

SELECT Department,AVG(max_age),total
FROM (SELECT department,MAX(age) AS max_age,COUNT(age) AS total,MIN(age) AS min_age,AVG(age) AS avg_age FROM employee group by Department) AS age_criteria
group by Department;