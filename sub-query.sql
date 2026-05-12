create database shadidb;
use shadidb;
create table biodata(id int, name varchar(20),age int);
insert  into biodata value(1,'rahul',28), (2,'anjali',28),(3,'aishwarya',40), (4,'naina',23);
select * from biodata;
select age from biodata where name='rahul'; -- age of rahul
select * from biodata where age=28;
select * from biodata where age=29;
select * from biodata where age =(select age from biodata where name='rahul');
select max(age) from biodata;
select * from biodata where age=(select max(age) from biodata);
select min(age) from biodata;
select * from biodata where age=(select min(age) from biodata);
select char_length(name) from biodata where name='rahul';
select name,char_length(name) from biodata where char_length(name) =5;
select name from biodata where
char_length(name)=(select char_length(name) from biodata where name='rahul');
-- one column subquery-> it is a subquery in which  the inner query returns only one row.








