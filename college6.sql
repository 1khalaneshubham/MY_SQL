create database college;
use college;

create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into dept
values
(101,"English"),
(102,"IT");

select * from dept;

insert into teacher
values
(101,"Adam",101),
(102,"Eve",102);

select * from teacher;

create table dept(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

create table dept(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

create table teacher (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
