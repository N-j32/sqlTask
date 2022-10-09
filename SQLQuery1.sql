create database student_details;
use student_details;
create table Children(
roll_no int primary key,
name varchar(20),
age int not null,
place varchar(20),
)
create table teachers(
Troll_no int primary key,
Tname varchar(20),
Tage int not null,
Tplace varchar(20))
insert into Children values(1, 'Nithya',23,'Mangalore');
insert into Children values(2, 'Prathush',20,'Bedra');
insert into Children values(3, 'Nidhi',25,'Mangalore');
insert into Children values(4, 'Shreesha',26,'Mumbai');
insert into Children values(5, 'Vinuth',23,'Bangalore');
insert into teachers values(1, 'Rajesh',53,'Mangalore');
insert into teachers values(2, 'Jayashree',40,'Bedra');
insert into teachers values(3, 'Vikshith',35,'Mangalore');
insert into teachers values(4, 'Shrenayak',96,'Mumbai');
insert into teachers values(5, 'Viraj',33,'Bangalore');
select * from Children;
select * from teachers;
delete from Children where age=26;
--inner join
select roll_no,name,Troll_no,Tname from Children inner join teachers on roll_no=Troll_no;
select Troll_no,name from teachers inner join Children on Troll_no=roll_no;
--alias name
select Children.roll_no,Children.name,Children.age,Children.place,teachers.Troll_no,teachers.Tage,teachers.Tname,teachers.Tplace
from Children inner join teachers on roll_no=Troll_no;
--shory alias
select c.roll_no, c.name,c.age,c.place from Children as c inner join 