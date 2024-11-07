-- GROUP BY --
select* from sales;
select category,productname,COUNT(quantitysold) from sales
group by category,productname;
select category,productname,sum(Saleamount),min(saleamount),max(saleamount),avg(saleamount),count(quantitysold)from sales
group by category,productname;
-- ORDER BY --
select* from sales 
order by saleamount desc;
select productname,category,saledate,saleamount from sales
order by saledate desc,saleamount ;

-- HAVING --
SELECT category, sum(saleamount) 
FROM sales
GROUP BY category
HAVING sum(saleamount) < 1000 ;
select* from sales;
select productname,count(quantitysold),max(saleamount) from sales
where productname like "%phone%"
group by productname
having max(saleamount) >= 100 and count(quantitysold)<=3;
