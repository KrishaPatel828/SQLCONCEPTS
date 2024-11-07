-- INNER JOIN --
SELECT * 
FROM orders
INNER JOIN customers
ON customers.customer_id=orders.customer_id;

-- OUTER JOIN --
-- RIGHT JOIN --
SELECT * 
FROM orders
RIGHT JOIN customers
ON customers.customer_id=orders.customer_id;

-- LEFT JOIN --
SELECT * 
FROM orders
LEFT JOIN customers
ON customers.customer_id=orders.customer_id;

-- SELF JOIN--
-- SECRET SANTA --
SELECT c1.customer_id AS santa_id ,
c1.customer_name AS santa,
c2.customer_id,
c2.customer_name
FROM customers as c1
JOIN customers as c2
on c1.customer_id + 1=c2.customer_id;

-- MULTIPLE JOINS --
SELECT customers.customer_id,customers.customer_name, orders.order_amount, payments.payment_date
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN payments ON orders.order_id = payments.order_id;
