create database rajdb;
use rajdb;
create table raj45(id int);
insert into raj45 values(10);
select * from raj45;
-- tcl
start transaction;
insert into raj45 values(100),(99);
select * from raj45;
commit;

start transaction;
SET SQL_SAFE_UPDATES = 0;
update raj45 set id=500;
select * from raj45;
rollback;

start transaction;
insert into raj45 values (10), (11),(55),(56);
delete from raj45 where id=10;
select * from raj45;
commit;
rollback;

start transaction;
insert into raj45 values (600),(500),(400);
select * from raj45;
savepoint raj45_savepoint_ins;
rollback to raj45_savepoint_ins;

 








