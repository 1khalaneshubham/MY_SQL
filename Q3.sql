create database Bank;
use Bank;

create table student (
costomerID int primary key,
costomer varchar(50),
mode varchar(50),
city varchar(50)
);

insert into payment
(costomerID,costomer,mode,city)
values
(101,"Oiivia Barrett","Netbanking","Portiand"),
(102,"bhumika","Credit Card","Miami"),
(103,"chetan","Credit Card","Seattle"),
(104,"dhruv","Netbanking","Denver"),
(105,"emanuel","Credit Card","New Orieans"),
(106,"emanue2","Debit Card","Minneapolis"),
(107,"emanue3","Debit Card","Phoenix"),
(108,"emanue4","Netbanking","Boston"),
(109,"emanue5","Netbanking","Nashville"),
(110,"emanue6","Credit Card","Boston");

select mode,count(costomer)
from payment
group by mode;
drop database bank;