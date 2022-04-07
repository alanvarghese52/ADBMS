create table student(
rollno int primary key auto_increment,
sname char(20),
mark1 int not null,
mark2 int not null,
mark3 int not null,
mark4 int not null,
CHECK (mark1<=100 and mark2<=100 and mark3<=100 and mark4<=100 ));
desc student;






insert into student (sname,mark1,mark2,mark3,mark4)values
('alan',40,40,40,40),
('binu',90,60,50,80),
('albin',50,40,70,80),
('abhi',70,60,90,50),
('ram',20,12,25,30);
select * from student;


select sname from  student where mark1+mark2+mark3+mark4 >=200;

select *,mark1+mark2+mark3+mark4 as total from student;

select *,mark1+mark2+mark3+mark4 as total from student order by total desc;

select sname from student where mark1 not in (20,30); 

select *,mark1+mark2+mark3+mark4 as total,(mark1+mark2+mark3+mark4)/4 as average from student;

select *,mark1+mark2+mark3+mark4 as total,(mark1+mark2+mark3+mark4)/4 as average from student where (mark1+mark2+mark3+mark4)/4>=80;

select distinct sname from student;

select distinct * from student where sname like 'a%';

select count(*) from student; 

select sum(mark1+mark2+mark3+mark4) from student;

select avg(mark1+mark2+mark3+mark4/4) from student;

select max(mark1+mark2+mark3+mark4) as maximum_mark from student;



drop table student;