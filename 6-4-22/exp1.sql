create database popos;
use popos;
create table TAB1(
rollno int primary key,
m1 int,
m2 int);

insert into TAB1 values (1,1,1),(2,2,2),(3,3,3);
select * from TAB1;

create table tab2(rollno int auto_increment primary key,m1 int not null,m2 int not null);
desc tab2;
insert into tab2(m1,m2)values(10,20);
insert into tab2(m1,m2)values(15,16);
insert into tab2(m1,m2)values(17,10);
select * from tab2;

select *,m1+m2 as total from tab2;
select *,m1+m2 as total from tab2 where m1+m2>30;
select * from tab2 order by m1 desc;

select rollno,m1,m2,m1+m2 as total,(m1+m2)/2 as average from tab2;

select *,m1+m2 as total,(m1+m2)/2 as average from tab2 order by average desc;

select * from tab2 where m1 in (10,15); 

select * from tab2 where m1 not in (10,15); 

create table s1 (sname varchar(20));
insert into s1 value("luttapi");
select * from s1;
select distinct * from s1;
select distinct * from s1 where sname like 'p%';
select * from s1 where sname like '___o';

select sum(m1) from tab2;