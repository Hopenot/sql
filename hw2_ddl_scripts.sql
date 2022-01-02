create table  employees(
id serial primary key,
employee_name varchar(50) not null);

insert into employees (employee_name)
values 	('Vadim'),('Dasha'),('Petr'),('Natasha'),('Ivan'),('Sergei'),('Janessa'),('Colin'),
('Antonio'),
Nathan
Austin
Christopher
Jayden
Steven
Hill
Ian
Alex
Gavin
Ward
Wood
Richard
Robert
Jackson
John
Kevin
Daniel
Sean
Tyler
Lee
Murphy
Davis
Coper
Wright
Wilson
Jones
Adam
Zoe
Lily
Griffin
Stewart
Irea
Ava
Melissa
Jordan
Kaitlyn
Abigail
Ava
Lillian
Faith
Leah
Melissa
Molly
Gabriellas
Alyssa
Makayla
Richardson
Kaitlyn
('Grace Autumn Murphy'),('Amber Mia Rodriguez'),('Amelia Madeline Miller'),
('Jessica Melissa Watson'),('Madeline Rebecca Gonzales'),('Sarah Mary Taylor'),
('Victoria Rachel Perry'),('Amber Lauren Powell'),('Molly Sierra Harris'),
('Jennifer Paige Nelson'),('Natalie Sierra Johnson'),('Avery Molly Morris'),
('Jessica Kayla Coleman');
		
select  * from employees;
	

create table salary(
id serial primary key,
monthly_salary int not null);

insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		


select * from salary;


create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

insert into employee_salary(employee_id,salary_id)
values (1,1),
		(2,3),
		(71,2),
		(77,4),
		(198,5),
		(117,6),
		(300,7),
		(123,8),
		(200,9),
		(321,10),
		(400,11),
		(100,12),
		(3,13),
		(4,14),
		(5,15),
		(6,16),
		(7,15),
		(8,14),
		(9,15),
		(10,16),
		(11,15),
		(7,14),
		(8,13),
		(9,12),
		(5,11),
		(44,10),
		(43,9),
		(16,8),
		(69,7),
		(70,1),
		(52,2),
		(56,9),
		(37,2),
		(38,2),
		(18,7),
		(32,8),
		(60,1),
		(58,12),
		(65,3),
		(17,9)
;

select * from employee_salary;

create table roles (
id serial primary key,
role_name int not null unique
);

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values 	('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),
('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'),('Middle Manual QA engineer'),('Senior Manual QA engineer'),
('Designer'),('HR'),('CEO'),('Sales manager'),('Junior Automation QA engineer'),('Middle Automation QA engineer'),
('Senior Automation QA engineer')
;

select * from roles;

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null, 
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id));

select * from roles_employee;
drop table roles_employee;

insert into roles_employee(employee_id,role_id)
	values	(7,2),
			(20,4),
			(3,9),
			(5,13),
			(23,4),
			(11,2),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(6,7),
			(12,19),
			(13,18),
			(14,12),
			(15,10),
			(16,12),
			(17,10),
			(18,3),
			(19,12),
			(31,10),
			(44,11),
			(45,7),
			(52,2),
			(32,14),
			(57,18),
			(25,7),
			(26,8),
			(27,9),
			(28,12),
			(29,12),
			(30,1),
			(37,8),
			(42,12),
			(47,18),
			(48,9),
			(51,9),
			(63,7),
			(64,14),
			(43,2),
			(54,15);
