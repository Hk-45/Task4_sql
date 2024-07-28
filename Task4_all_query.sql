create table employee_info(
	Id serial primary key,
	Name varchar(150),
	Age int,
	Gender varchar(20),
	Department varchar(150),
	Position varchar(150),
	Salary double PRECISION
	check  (Age <=78)
)

select * from employee_info
  --copy query
copy employee_info from 'D:\Data-Analyst9\SQL\Practice\emp_info.csv' DELIMITER ',' csv header

select * from employee_info
  --insert query
insert into employee_info values (1001,'Hitesh',24,'Male','IT','Engineer',45500.15)

select * from employee_info

select distinct gender from employee_info

	--distinct query
select distinct gender, department, name from employee_info

select * from employee_info where age >= 45

   --AND query
select * from employee_info where age = 45 AND department = 'Marketing' 

	--OR query
select * from employee_info where age = 45 OR gender = 'Male'
	
    --Not query
select * from employee_info where not gender = 'Male' 

	--update query
update employee_info set age = 34 where id = 2

select * from employee_info

begin 
rollback

	--delete query
delete from employee_info where department = 'HR'

select * from employee_info

	--add query
alter table employee_info add column company varchar(150)

	--drop query
alter table employee_info drop column company
	
select * from employee_info

alter table employee_info add column emp_email varchar(150) not null default 'no email'

	--rename query
alter table employee_info rename column emp_email to email

	--IN query
select * from employee_info where id in(1,2,5)
	
   --between query
select * from employee_info where age between 45 AND 50

select * from employee_info

alter table employee_info 
add constraint name_not_allow check(name NOT IN ('a1', 'b1', 'check'))

insert into employee_info values (1002,'check',48,'Male','IT','Engineer',42000,'no email')











