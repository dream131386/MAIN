--1.Создать таблицу employees
/*
 - id. serial,  primary key,
- employee_name. Varchar(50), not null
*/
create table employees (
	id serial primary key ,
	employee_name varchar (50) not null
);
 select * from employees ;

--Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values  ('name_1'),
		('name_2'),
		('name_3'),
		('name_4'),
		('name_5'),
		('name_6'),
		('name_7'),
		('name_8'),
		('name_9'),
		('name_10'),
		('name_11'),
		('name_12'),
		('name_13'),
		('name_14'),
		('name_15'),
		('name_16'),
		('name_17'),
		('name_18'),
		('name_19'),
		('name_20'),
		('name_21'),
		('name_22'),
		('name_23'),
		('name_24'),
		('name_25'),
		('name_26'),
		('name_27'),
		('name_28'),
		('name_29'),
		('name_30'),
		('name_31'),
		('name_32'),
		('name_33'),
		('name_34'),
		('name_35'),
		('name_36'),
		('name_37'),
		('name_38'),
		('name_39'),
		('name_40'),
		('name_41'),
		('name_42'),
		('name_43'),
		('name_44'),
		('name_45'),
		('name_46'),
		('name_47'),
		('name_48'),
		('name_49'),
		('name_50'),
		('name_51'),
		('name_52'),
		('name_53'),
		('name_54'),
		('name_55'),
		('name_56'),
		('name_57'),
		('name_58'),
		('name_59'),
		('name_60'),
		('name_61'),
		('name_62'),
		('name_63'),
		('name_64'),
		('name_65'),
		('name_66'),
		('name_67'),
		('name_68'),
		('name_69'),
		('name_69')
;
 

select * from employees ;
--меняем значение name_69  под id 70 на name_70
update employees 
set employee_name = 'name_70'
where id=70 ;

select * from employees ;

/*
2.Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
*/

create table salary (
	id serial primary key ,
	monthly_salary int not null
	
) ;

select * from salary ;

--Наполнить таблицу salary 16 строками:
insert into salary (monthly_salary)
values  (1000),
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
		(2500) ;

select * from salary ;

/*
 3. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/

create table employee_salary (
	id serial primary key,
	id_employee int unique not null,
	id_salary int not null
	
)
;
 select * from employee_salary;

/*Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */

insert into employee_salary (id_employee, id_salary)
values  (1,1),
		(2,3),
		(3,16),
		(4,5),
		(5,13),
		(6,2),
		(7,4),
		(8,9),
		(9,10),
		(10,6),
		(11,8),
		(12,1),
		(13,5),
		(14,2),
		(15,10),
		(16,16),
		(17,7),
		(18,3),
		(19,10),
		(20,11),
		(21,12),
		(22,13),
		(23,14),
		(24,1),
		(25,4),
		(26,3),
		(27,6),
		(28,3),
		(29,10),
		(30,16),
		(71,7),
		(72,1),
		(73,5),
		(74,15),
		(75,9),
		(76,14),
		(77,2),
		(78,3),
		(79,4),
		(80,5);

select *from employee_salary ;

/*4.Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique */


create table roles (
 id serial primary key,
 role_name int unique not null 
 
)
;

select * from roles ;

--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name  type varchar (30) using role_name :: varchar (30);

select * from roles ;

--Наполнить таблицу roles 20 строками
insert into roles ( role_name)
values 
('Junior Python developer' ),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer')
;

select * from roles;

/*5.Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/

create table roles_employee(
id serial primary key ,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
)
;

select * from roles_employee ;
 
--Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values 
(1,10),
(2,2),
(3,15),
(4,20),
(5,8),
(6,3),
(7,1),
(8,17),
(9,12),
(10,13),
(11,4),
(12,5),
(13,7),
(14,6),
(15,11),
(16,9),
(17,19),
(18,14),
(19,16),
(20,18)
;


select * from roles_employee;





