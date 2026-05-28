use sakila;
-- Create Table
CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
INSERT INTO Students VALUES
(1, 'Aman', 20, 'Delhi'),
(2, 'Rohit', 21, 'Mumbai'),
(3, 'Priya', 19, 'Jaipur'),
(4, 'Neha', 22, 'Pune'),
(5, 'Karan', 20, 'Lucknow'),
(6, 'Simran', 23, 'Chandigarh'),
(7, 'Arjun', 21, 'Bhopal'),
(8, 'Anjali', 20, 'Kolkata'),
(9, 'Vikas', 24, 'Patna'),
(10, 'Pooja', 19, 'Indore'),
(11, 'Ravi', 22, 'Surat'),
(12, 'Sneha', 21, 'Nagpur'),
(13, 'Deepak', 23, 'Agra'),
(14, 'Nisha', 20, 'Kanpur'),
(15, 'Yash', 19, 'Noida'),
(16, 'Komal', 22, 'Gwalior'),
(17, 'Rahul', 21, 'Amritsar'),
(18, 'Meena', 24, 'Udaipur'),
(19, 'Aditi', 20, 'Ajmer'),
(20, 'Manish', 23, 'Varanasi'),
(21, 'Sakshi', 22, 'Ranchi'),
(22, 'Harsh', 19, 'Dehradun'),
(23, 'Tina', 21, 'Jodhpur'),
(24, 'Nitin', 20, 'Meerut'),
(25, 'Isha', 23, 'Raipur'),
(26, 'Mohit', 22, 'Shimla'),
(27, 'Riya', 19, 'Aligarh'),
(28, 'Tarun', 24, 'Bhagalpur'),
(29, 'Kriti', 21, 'Mysore'),
(30, 'Adarsh', 20, 'Hyderabad');

-- Display Table
SELECT * FROM Students;
-- 1.Display all students ordered by age.
select * from students order by age;
-- 2. Display students ordered by city in descending order.
select * from students order by city desc;
-- 3. . Count total students in each city.
select city, count(*) from students group by city;
-- 4. Find average age of students city-wise.
select city, avg(age) as avg_age from students group by city;
-- 5.Find maximum age in each city.
select city,max(age) as max_age from students group by city;
-- 6.find the minimum age of city.
select city,min(age) as min_age from students group by city;
-- 7.Show cities having more than 1 student.
select city,count(*) as total from students group by city having count(*)>1;
-- 8.Show ages having more than 3 students.
select age, count(*) as total from students group by age having count(*)>3;
-- 9.Display cities in alphabetical order.
select distinct city from students order by city;
-- 10. Display students ordered by name.
SELECT *
FROM Students
ORDER BY student_name;
-- 11.Count students according to age.
select age,count(*) as total_students from students group by age;
-- 12.Find total number of cities.
SELECT COUNT(DISTINCT city) AS total_cities FROM Students;
-- 13.Show cities where average age is greater than 21.
select city, avg(city) as avg_city  from students group by city having avg(age)>21;
-- 14. Show ages in descending order.
SELECT DISTINCT age FROM Students  ORDER BY age DESC;
-- 15. Find total students in each age group and sort by total.
SELECT age, COUNT(*) AS total FROM Students GROUP BY age ORDER BY total DESC;
-- 16.Display city-wise total students sorted alphabetically.
select city, count(*) total from students group by city order by city;
-- 17. Show city-wise maximum age greater than 22.
select city, max(age) as max_age from students group by city having avg(age)>22;
-- 18.isplay students ordered first by age then by name.
SELECT * FROM Students  ORDER BY age, student_name;
-- 19. Find cities where minimum age is less than 20.
select city,min(age) as min_age from students group by city having avg(age)<20;
-- 20. Count students and sort by count descending.
SELECT city, COUNT(*) AS total FROM Students GROUP BY city ORDER BY total DESC;
-- 21 Show average age of all age groups.
select age, avg(age) as avg_age from students group by age;
-- 22. Find cities having exactly one student.
SELECT city, COUNT(*) AS total
FROM Students
GROUP BY city
HAVING COUNT(*) = 1;
-- 23.  Display names and ages ordered by age descending.
SELECT student_name, age
FROM Students
ORDER BY age DESC;
-- 24 Show age groups where average age is greater than 20.
SELECT age, AVG(age) AS avg_age
FROM Students
GROUP BY age
HAVING AVG(age) > 20;
-- 25.Find total students city-wise and order by total students.
SELECT city, COUNT(*) AS total_students
FROM Students
GROUP BY city
ORDER BY total_students DESC;


 
 
 
  
 
 
 

