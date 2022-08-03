create database BhavnaCorp
use BhavnaCorp
create table Personal_detail(id int,Emp_Name nvarchar(200),Emp_Email nvarchar(300),Emp_add nvarchar(200)) 
create table Official_detail(id int,Emp_Salary numeric(8,0),Emp_Dept nvarchar(200),Reporting_to nvarchar(200))
create table salary_detail(id int,Emp_Salary numeric(8,0),HRA numeric(8,0),DA numeric(8,0),TA numeric(8,0))

insert into Personal_detail values(915,'Akshay Kumar','Akshay.kumar@bhavnacorp.com','Greater Noida')
insert into Personal_detail values(893,'Mohit','mohit@bhavnacorp.com','Greater Noida')
select * from Personal_detail

----------drop table Personal_detail

insert into Official_detail values(893,42046,'.net','Akhilesh')
insert into Official_detail values(915,42046,'Java','Akhilesh')

insert into salary_detail values(893, 42046 , 9516, 19031, 2000)
insert into salary_detail values(915, 42046 , 9516, 19031, 2000)

select * 
select * from salary_detail
select * from Official_detail

select sum(Emp_Salary) from Official_detail
select avg(Emp_Salary) from salary_detail
select sum(Emp_Salary) as 'Average' from Official_detail
select avg(Emp_Salary) as 'Sum' from salary_detail
select max(Emp_Salary) as 'Max' from salary_detail

insert into Official_detail values(916,42046,'Java','Akhilesh')
select * from Official_detail

delete from Official_detail where id=916
select * from Official_detail

update Official_detail set Reporting_to='Akhilesh Tiwari' where id=915
select * from Official_detail 

select top(1) * from Official_detail

alter table Personal_detail add phone nvarchar(11) NULL
select * from Personal_detail

alter table Personal_detail drop column phone
select * from Personal_detail
