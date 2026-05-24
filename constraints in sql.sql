-- how to create database
-- constaraints-> are the rules which are applied to the table column to prevent from invalid entry(applied upon the column of table)
create database const_db;
select database();
-- DDL->(data defination language)
-- create command
create table if not exists test1(id int,age int);
-- DML-> (data manipulation lasnguage)
insert into test1 values(101,32),(102, null);
select * from test1;

-- if table is already exixts then we create of table is used as-> If not exixts.
create table if not exists test2(id int,age int not null);
insert into test2 values(101,null);
select * from test2;
insert into test2 values(102,null);
select * from test3;
insert into test3 values(102,32);
create table if not exists test5(id int default 100, age int);
insert into test5(age) values(20);
select * from test5;
-- PRIMARY KEY-> A primary keys are uniqe and contains null values.
create table if not exists test6(id int primary key, age int);
insert into test6 values(80,23);
insert into test6 values (null,27);
select * from test6;
create table if not exists test8(id int, age int, salary int,primary key(id,age));
insert into test8 values(1,50,500000), (2,40,20000),(1,51,600000), (3,50,100);
select * from test8;
desc test8;
create table if not exists test9 (id int,age int check (age>18) );
insert test9 values (1,50);
insert into test9 values(1,51);
select * from test9;
-- foriegn key- A Foreign Key is a constraint used to create a relationship between two tables.
-- It links a column in one table with the PRIMARY KEY of another table.
create table student (id int, name varchar (20), cname varchar(20) );
insert into student values(1,'naina', '10'), (2,'abhi',12);
create table class (cname varchar(20) primary key);
insert into class values(10),(8), (9);
select * from class;




 



