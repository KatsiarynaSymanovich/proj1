-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null

create table employees(
 id serial primary key,
 employee_name varchar(50) not null
);

--Наполнить таблицу employees 70 строками.
insert into employees(employee_name)
values ('Volkov Ivan'),
		('Semenov Egor'),
		('Semenov Ivan'),
		('Semenova Olga'),
		('Semenova Irina'),
		('Ivanov Ivan'),
		('Ivanova Olga'),
		('Ivanov Egor'),
		('Ivanova Ekaterina'),
		('Ivanov Aleksandr'),
		('Ivanov Zahar'),
		('Belov Ivan'),
		('Belova ludmila'),
		('Dark Bill'),
		('Demidov Oleg'),
		('Demidov Petr'),
		('Demidova Polina'),
		('Zverev Ivan'),
		('Zverev Evgenij'),
		('Zvereva Nina'),
		('Grey Savana'),
		('Grey Zein'),
		('Grey Kevin'),
		('Red Van'),
		('Red Greiv'),
		('Red Samanta'),
		('Red Artem'),
		('West Ouven'),
		('West Kolin'),
		('Matters Marshal'),
		('Matters Chloe'),
		('Matters Jain'),
		('Matters Nataly'),
		('Matters David'),
		('Matters Pit'),
		('Golubev Artem'),
		('Golubev Ilya'),
		('Golubev Oleg'),
		('Golubeva Svetlana'),
		('Golubev Vladimir'),
		('Golubev Viktor'),
		('Senset Violet'),
		('Romanov Yan'),
		('Romanova Olga'),
		('Romanova Alesya'),
		('Romanova Irina'),
		('Romanova Ekaterina');

insert into employees(employee_name)
values ('Volkova Ivanna'),
		('Semenova Elena'),
		('Semenov Illya'),
		('Semenova Oksana'),
		('Semenova Inna'),
		('Ivanova Inna'),
		('Ivanova Oksana'),
		('Ivanova Elena'),
		('Ivanova Emma'),
		('Ivanov Andrey'),
		('Ivanov Zaur'),
		('Belov Imanuil'),
		('Belova Elena'),
		('Dark Olga'),
		('Demidova Oksana'),
		('Demidov Pavel'),
		('Demidova Fedora'),
		('Zverev Fedor'),
		('Zverev Zahar'),
		('Zvereva Oksana'),
		('Grey Svetlana');
		
insert into employees(employee_name)
values ('Medvedev Egor');

--Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null

create table salary(
 id serial primary key,
 mounthly_salary int not null
);
--Наполнить таблицу salary 16 строками:
insert into salary(mounthly_salary)
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

-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
-- Наполнить таблицу employee_salary 40 строками
insert into employee_salary(employee_id, salary_id)
values (1, 16),
 (2, 15),
 (3, 14),
 (4, 13),
 (5, 12),
 (6, 11),
 (7, 10),
 (8, 9),
 (9, 8),
 (10, 7),
 (11, 6),
 (12, 5),
 (13, 4),
 (14, 3),
 (15, 2),
 (16, 1),
 (17, 1),
 (18, 2),
 (19, 3),
 (20, 4),
 (21, 5),
 (22, 6),
 (23, 7),
 (24, 8),
 (25, 9),
 (26, 10),
 (27, 11),
 (28, 12),
 (29, 13),
 (30, 14),
 (31, 15),
 (32, 16),
 (33, 5),
 (34, 6),
 (35, 7),
 (36, 8),
 (37, 9),
 (38, 10),
 (39, 11),
 (40, 12);

 -- в 10 строк вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (73, 1),
(74, 2),
(75, 3),
(76, 4),
(77, 9),
(88, 10),
(89, 2),
(90, 5),
(91, 6),
(94, 7);

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int unique not null
);

-- Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles ALTER column role_name TYPE varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
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
('Senior Automation QA engineer');

-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key(role_id)
 references roles(id),
foreign key (employee_id)
 references employees(id)
);

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (1, 6),
(2, 2),
(3, 20),
(4, 19),
(5,8),
(6, 4),
(7, 9),
(8, 18),
(9, 17),
(10, 3),
(11, 7),
(12, 5),
(13, 10),
(14, 1),
(15, 11),
(16, 16),
(17, 14),
(18, 13),
(19, 12),
(20, 11),
(21, 2),
(22, 8),
(23, 12),
(24, 15),
(25, 20),
(26, 13),
(27, 4),
(28, 9),
(29, 16),
(30, 4),
(31, 3),
(32, 8),
(33, 7),
(34, 11),
(35, 6),
(36, 4),
(37, 9),
(38, 2),
(39, 1),
(40, 7);


