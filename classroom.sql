create database college;
create database if not exists college;
drop database if exists company;

use college;

create table student(
 id int primary key,
 name varchar(50),
 age int not null
);

INSERT INTO student VALUE(1,"SHUBHAM",26);
INSERT INTO student VALUE(2,"SHUBHAM",21);
INSERT INTO student VALUE(3,"RADHA",20);
show databases;
select * from student; 
show tables;







