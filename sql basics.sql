select current_user();

show databases;  -- will show the databases

use sakila;

show tables; -- table in the database
select * from customer; -- shows all tables
select customer_id , first_name from customer;
select * from payment;
select payment_id, amount from payment;
select customer_id+10,first_name from customer;
-- this changes will not affect the original table
select customer_id, customer_id*10 from customer;
select customer_id, Customer_id, Customer_id from customer;
select customer_id from Customer;

select * from customer;
select   customer_id,first_name , last_name from customer where customer_id=8;
select customer_id, first_name, last_name from customer where first_name= 'marion';
-- block of code =>that perform a task.
-- user defined functions, predefined.
-- pre defined functons.
-- string,date,number.
select first_name, lower(first_name) from customer;
-- length=>byte =>1 charcter 1 byte.
-- charlength=> no. of charcter.
select first_name,lower(first_name)
, length(first_name) ,char_length(first_name) from customer;
-- substr =>index start with 1
select first_name, substr(first_name,2,2) from customer;
select first_name,email,substr(first_name,4) from customer;
select first_name,email,substr(email,-5) from customer;
select email,substr(email,1, instr(email,'@')-1 ) from customer;
select email,substr(email,-1, instr(email,'@')-5) from customer;
select first_name, replace(first_name,'A','Z') from customer;
select char_length('raj ');
select trim(' raj');
select char_length(trim(' raj   ')   );
select first_name,lpad(first_name,6,'$') from customer;
select first_name,lpad(first_name,8,'$') from customer; 
-- ----
-- string functions
-- number,dates
use sakila;
-- yyyyy-mm-dd
select current_date() ;
select current_time() ;
select current_timestamp(),now() ;
select * from payment;
select payment_id, payment_date , now() from payment;
select payment_id, payment_date , adddate(payment_date,5) from payment;
select payment_id, payment_date , adddate(payment_date,interval 2 month) from payment where payment_id=2;
select payment_id, payment_date , adddate(payment_date,interval 2  hour) from payment;
select payment_id, payment_date , adddate(payment_date,interval -2  hour) from payment;
select * from payment;
select  payment_id ,datediff( now(),payment_date) from payment;
select  payment_id ,datediff( last_update,payment_date) from payment;
-- select payment_id, payment_date ,datediff( now(),adddate(payment_date,interval -2  hour) from payment;
SELECT payment_id, 
    payment_date,
    DATEDIFF(NOW(), ADDDATE(payment_date, 30  )) AS diff_days
FROM payment;
-- month function
select payment_id, payment_date, month( payment_date) from payment;
select payment_id, payment_date, month( payment_date) from payment where month(payment_date)=5;
select payment_id, payment_date, month( payment_date)
from payment where month( payment_date)=2;

select payment_id, payment_date, year( payment_date)
from payment where year( payment_date)=2006;		


select  payment_date ,extract(quarter from payment_date)
from payment;
use sakila;
-- functions--numeric functiions
select 43.76;
select 44.74, round(44.76);
# 1 decimal ko round off=>6
select 43.647, round(43.647), round(43.647, 2);
select 41.127, round(41.127), round(41.127,1);
select 3.647,round(3.647,-1);
select 3.647,round(6.647,-1);
select 16.667,round(24.647,-1);
# 234=>2*100 + 3*10+ 4*1
#3*10+ 4*1
# ones place=tenth mein=>hundred mein convert hogi.
# 463=>-3
select 34.647,round(34.647,-2);
select 34.647,round(2763.647,-3);
-- truncate=> values ko extract krta hain.
select round(345.6859), truncate(345.6859,2);
select mod(10,2);
select ceil(5.000000001), floor(5.999999);
select ceil(6.00000001), floor(5.999999);
select ceil(8.00000087), floor(7.065);
select ceil(5.000845),  floor(8.6672);

select first_name,department,salary from empolyee order by first_name,salary;
 select salary ,hire_date,year(hire_date) from employee order by year(hire_date) ,salary desc;
 
 select first_name,department,salary from empolyee order by first_name,salary;
 select salary ,hire_date,year(hire_date) from employee order by year(hire_date) ,salary desc;

select distinct department,salary from employee;
-- 

use sakila;
-- assigment 1;

select * from employee;
select emp_id , first_name , last_name , department , salary from employee where salary between 65000 and 85000;

select emp_id, first_name, last_name, department, job_title from employee where department = 'IT' OR DEPARTMENT = 'FINANCE';

select emp_id, upper(first_name), lower(last_name) as first_name_upper,lower(last_name) as last_name_lower,salary from employee where department='FINANCE';
select emp_id, first_name, length(first_name), department from employee where length(first_name);
select emp_id, concat(first_name,' ', last_name) as full_name, length(concat(first_name,' ',last_name)) as full_name_length, department
 from employee where department='Marketing';
 select emp_id, first_name,last_name,hire_date,year(hire_date),year(now())- year(hire_date) from employee where department='Finance';
 SELECT emp_id,first_name,last_name, salary,round(salary,-4) as round_salary, mod(salary,10000) as salary_remainder from employees where department='it';
 select emp_id,first_name,last_name,email from employee where email like  '%@outlook.com'; 
 select emp_id, first_name,last_name, email, substring_index(email,'@',1) as user_name from employee where department = 'hr';
SELECT *  FROM employee WHERE DATEDIFF('2026-04-28', hire_date) > 2000;
SELECT CONCAT(first_name, ' ', last_name) AS full_name, department, salary FROM employee WHERE department NOT IN ('IT', 'Finance') AND salary NOT BETWEEN 60000 AND 80000
ORDER BY salary DESC;
SELECT emp_id, first_name, last_name, email, UPPER(SUBSTRING_INDEX(email, '@', 1)) AS username_upper,LENGTH(SUBSTRING_INDEX(email, '@', 1)) AS username_length
FROM employee  WHERE LENGTH(SUBSTRING_INDEX(email, '@', 1)) > 6;
SELECT emp_id, CONCAT(first_name,' ',last_name) AS full_name FROM employee WHERE is_active = 'Y' AND TIMESTAMPDIFF(YEAR, birth_date, '2026-04-28') BETWEEN 30 AND 38
AND salary > 65000;



 
 
   
   

        
        
 





 
 







 






 














