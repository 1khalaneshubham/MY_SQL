create database college2;
use college2;
create table student(
rollNo int primary key,
name varchar(50)
);
select * from student;

create table temp1 (
id int unique
);

insert into temp1 values (101);
insert into temp1 values (101);
select * from temp1;

create table temp3 (
id int,
name varchar(50),
age int,
city varchar(20),
primary key(id)
);
select * from temp3;

create table temp4 (
id int,
name varchar(50),
age int,
city varchar(20),
primary key(id,name)
);
select * from temp4;

create table emp(
id int,
salary int default 25000);

insert into emp(id) values (101);
select * from emp;

create table city (
id int primary key,
city varchar(50),
age int,
constraint age_check check (age >= 18 and city = "pune")
);

create table newtab(age int check (age >= 18));

select * from city;