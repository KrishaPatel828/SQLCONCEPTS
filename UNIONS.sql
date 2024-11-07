SELECT * FROM members;
SELECT * FROM subscriptions;
SELECT name,ID FROM members
UNION ALL
SELECT member_id,plan_type FROM subscriptions;
SELECT name,ID FROM members
UNION 
SELECT member_id,plan_type FROM subscriptions;

SELECT name,ID,gender FROM members
where gender='M'
UNION ALL
SELECT member_id,plan_type,subscription_id FROM subscriptions
where plan_type='premium';