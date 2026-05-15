  -- Create Table
CREATE TABLE Employee1 (
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
MANAGER_ID INT



);
-- Insert Data
INSERT INTO Employee1 (EMP_ID, NAME, DEPARTMENT, SALARY, MANAGER_ID) VALUES
(101, 'Alice', 'HR', 50000, NULL),
(102, 'Bob', 'IT', 80000, 101),
(103, 'Charlie', 'IT', 75000, 101),
(104, 'Diana', 'Finance', 90000, NULL),
(105, 'Eve', 'HR', 48000, 101),
(106, 'Frank', 'Finance', 95000, 104),
(107, 'Grace', 'IT', 82000, 101);
select * from employee1;
select name,emp_id,avg(salary) over() from employee1;
select emp_id, name, salary,count(*)  over(), max(salary) over(),min(salary) over() from employee1;
select emp_id,name,salary,sum(salary) over(order by salary) from employee1;
select emp_id,name,department, salary,sum(salary) over(order by emp_id desc) from employee1;
select emp_id,name,department, salary,sum(salary) over(order by department desc) from employee1;



