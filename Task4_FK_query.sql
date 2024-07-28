create table projects(
	proj_id serial primary key,
	proj_name varchar(150),
	Team_leader varchar(150),
	department varchar(150)
)

select * from projects

insert into projects(proj_name,Team_leader,department) values ('proj1','TL1','dept1'),('proj2','TL2','dept2'),('proj3','TL3','dept3'),
('proj4','TL4','dept4'),('proj5','TL5','dept5'),('proj6','TL6','dept6'),('proj7','TL7','dept7'),('proj8','TL8','dept8'),('proj9','TL9','dept9'),
('proj10','TL10','dept10'),('proj11','TL11','dept11'),('proj12','TL12','dept12'),('proj13','TL13','dept13'),('proj14','TL14','dept14'),('proj15','TL15','dept15'),
('proj16','TL16','dept16'),('proj17','TL17','dept17'),('proj18','TL18','dept18'),('proj19','TL19','dept19'),('proj20','TL20','dept20')

select * from projects

create table employee(
	Id serial primary key,
	Name varchar(150),
	Age int,
	Gender varchar(20),
	Department varchar(150),
	Position varchar(150),
	Salary double PRECISION,
	proj_id int,
	FOREIGN key (proj_id) REFERENCES projects (proj_id)
)

select * from employee

copy employee from 'D:\Data-Analyst9\SQL\Practice\emp_info.csv' DELIMITER ',' csv header

select * from employee

