-- WHERE CLAUSE --
-- COMPARISON OPERATORS --
select * from employee ;
select* from employee where firstname='Emma';
select * from employee where lastname!='Jackson';
select * from employee where joindate> '2020-01-15';
select * from employee where salary < 50000;
select * from employee where salary<= 40000;
select * from employee where age between 40 and 50;
select * from employee where department is null;
select * from employee where age in (29,45);
select* from employee where joindate >= '2020-01-20';

-- LOGICAL OPERATORS --
-- AND OR NOT --
select * from employee where age>30 and salary<50000;
select * from employee where not department='IT';
select * from employee where department ='HR' or salary < 40000 ;

-- LIKE STATEMENT --
select * from employee where firstname like 'E__%'; 
select * from employee where lastname like 'J%';
select * from employee where department like '__na%' ;
select * from employee where firstname like '%a%';
select * from employee where lastname like'__e__';