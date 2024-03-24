create database college;
use college;

create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(rollno,name,marks,grade,city)
values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select * from student;
select name , marks from student;

select distinct city from student;
select * from student where marks > 80;
select * from student where city = "Mumbai";
select * from student 
where city = "Mumbai" and marks > 80;

select * from student 
where marks+10 > 100;

select * from student 
where marks > 90 and city = "Mumbai";

select * from student 
where marks > 90 or city = "Mumbai";

select * from student 
where marks between 80 and 90;

select * from student 
where city in ("Delhi","Mumbai");

select * from student 
where city not in ("Delhi","Mumbai");

select * from student limit 3;

select * 
from student 
where marks > 80
limit 3;

select * 
from student 
order by city asc;

select * 
from student 
order by marks asc;

select * 
from student 
order by marks desc
limit 3;

select marks 
from student;

select max(marks) 
from student;

select min(marks) 
from student;

select avg(marks) 
from student;

select count(rollno) 
from student;

select city,count(rollno)
from student
group by city;

select city,avg(marks)
from student
group by city
order by city;

select grade ,count(rollno)
from student
group by grade
order by grade;

select city ,count(rollno)
from student
group by city
having max(marks) > 90;

select city
from student
where grade = "A"
group by city
having max(marks) >= 93
order by city desc;

set sql_safe_updates = 0;

update student
set grade = "O"
where grade = "A";

update student
set marks = 82
where rollno = 105 ;

select * from student;

update student
set marks = 99
where rollno = 101 ;

select * from student;

update student
set grade = "B"
where marks between 80 and 90;

update student
set grade = "A"
where marks between 90 and 100;

select * from student;

update student
set marks = marks + 1;

select * from student;

update student
set marks = 12
where rollno = 105;

delete from student
where marks < 33;

create table dept(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
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

drop database college;








