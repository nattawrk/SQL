/*create table salary(
id serial primary key,
monthly_salary int not null
);

create table roles(
id serial primary key,
role_title varchar(50) unique not null
);

create table roles_salary(
id serial primary key,
id_role int not null,
id_salary int not null,
foreign key (id_role)
references roles(id),
foreign key (id_salary)
references salary(id)
);

insert into roles(role_title)
values ('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');

insert into salary (monthly_salary)
values (500),
		(700),
		(900),
		(1000),
		(1200),
		(1400),
		(1500),
		(1700),
		(2000);
	
insert into roles_salary(id_role, id_salary)
values (1, 1),
		(2, 3),
		(2, 7),
		(4, 1),
		(5, 5),
		(6, 8);


select role_title, monthly_salary  from roles_salary 
join salary on id_salary = salary.id
join roles on id_role = roles.id;


alter table roles 
add column parking int;

alter table roles 
rename column parking to taxi;

alter table roles 
drop column taxi;

update salary
set monthly_salary =1600
where id = 7;


select * from roles_salary;
select * from salary
order by (id);

select * from roles; */ 




/* Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками*/

create table employees(
id serial primary key,
employee_name varchar(50) unique not null
);

insert into employees (employee_name)
values ('Ivanov'),
		('Petrov'),
		('Laptev'),
		('Kuznezov'),
		('Obramov'),
		('Sviyazov'),
		('Turin'),
		('Bakulin'),
		('Pakuleva'),
		('Grishina'),
		('Petrenko'),
		('Zhilina'),
		('Kuklina'),
		('Ahmetova'),
		('Nalivkin'),
		('Shipilova'),
		('Karasaev'),
		('Utkin'),
		('Bruchkin'),
		('Yacenko'),
		('Mishkina'),
		('Rodicheva'),
		('Metelkin'),
		('Yanchenko'),
		('Naparinov'),
		('Abramchenko'),
		('Pugachev'),
		('Tkacheva'),
		('Filimonova'),
		('Nosenko'),
		('Grishanova'),
		('Alekseeva'),
		('Zavarzin'),
		('Kuzmenko'),
		('Panteleev'),
		('Golicina'),
		('Ugarnova'),
		('Bitisheva'),
		('Kyrtkin'),
		('Sapozhnikov'),
		('Verhozin'),
		('Sharova'),
		('Durnilova'),
		('Evdokimova'),
		('Kameneva'),
		('Vetrov'),
		('Poushkin'),
		('Kolbasnin'),
		('Zadumchenko'),
		('Zaslavin'),
		('Dunkin'),
		('Okolotmikov'),
		('Pevcov'),
		('Kulkina'),
		('Domovenok'),
		('Ritushkin'),
		('Kotenkin'),
		('Sobakevich'),
		('Telegrafov'),
		('Novodvorec'),
		('kuzmin'),
		('Afanaseva'),
		('Koltushina'),
		('Gusev'),
		('Pavlenko'),
		('Nevzlina'),
		('Kroshkina'),
		('Samoilin'),
		('Pitaeva'),
		('Ptichkina'),
		('Rusakova'),
		('Moskaleva'),
		('Volkova'),
		('Knutikov'),
		('Sherbakov'),
		('Petrenev'),
		('Verhoturov'),
		('Mazina'),
		('Kuklin'),
		('Kristenko'),
		('Makarov'),
		('Fedchenkov'),
		('Zhukov'),
		('Trusov'),
		('Rozhkova'),
		('Medvedeva'),
		('Skripnina'),
		('Sushkina'),
		('Katigorov'),
		('Rusov'),
		('Risakov'),
		('Gidenko'),
		('Kromkin'),
		('Vtulkina'),
		('Smolenko'),
		('Shipicina'),
		('Romanova'),
		('Lutnev'),
		('Kopteva'),
		('Moiseeva'),
		('Ponomareva'),
		('Nakatova'),
		('Malkina'),
		('Ostafyeva'),
		('Klueva'),
		('Katuskin'),
		('Bryankina'),
		('Razumova'),
		('Shishmarev');

	
	/*Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:*/

create table salary2(
id serial primary key,
monthly_salary int not null
);	
insert into salary2 (monthly_salary)
values (1100),
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
	
/*employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 6 строк из 40 вставить несуществующие employee_id*/	
	
create table employees_salary2 (
id serial primary key,
imployees_id int not null,
salary_id int not null
);
	
insert into employees_salary2(imployees_id, salary_id)
values (3, 7),
	   (1, 4),
	   (40,13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (14, 4),
	   (17, 7),
	   (12, 5),
	   (45,15),
	   (42, 14),
	   (41, 12),
	   (46,1),
	   (56, 12),
	   (67, 15),
	   (58,3),
	   (52, 6),
	   (34, 5),
	   (33, 12),
	   (38,14),
	   (25, 4),
	   (43, 15),
	   (24, 6),
	   (66, 3),
	   (15, 9),
	   (70, 12),
	   (55, 4),
	   (51, 2),
	   (100, 11),
	   (99, 10),
	   (98, 2),
	   (500, 7),
	   (400, 14),
	   (200, 15),
	   (201, 5),
	   (300, 3),
	   (212, 12);


/*Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:*/

create table roles2 (
id serial primary key,
role_name int unique not null
);

alter table roles2 
alter column role_name type varchar(30); 

insert into roles2 (role_name)
values ('Junior_Python_developer'),
       ('Middle_Python_developer'),
       ('Senior_Python_developer'),
       ('Junior_Java_developer'),
       ('Middle_Java_developer'),
       ('Senior_Java_developer'),
       ('Junior_JavaScript_developer'),
       ('Middle_JavaScript_developer'),
       ('Senior_JavaScript_developer'),
       ('Junior_Manual_QA_engineer'),
       ('Middle_Manual_QA_engineer'),
       ('Senior_Manual_QA_engineer'),
       ('Project_Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales_manager'),
       ('Junior_Automation_QA_engineer'),
       ('Middle_Automation_QA_engineer'),
      ('Senior_Automation_QA_engineer');

/*Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/

create table roles_emloyees (
id serial primary key,
employees_id int unique not null,
role_id int not null,
foreign key (employees_id)
references employees(id),
foreign key (role_id)
references roles2(id)
);

insert into roles_emloyees(employees_id, role_id)
values (1, 20),
		(2, 19),
		(3, 18),
		(4, 17),
		(5, 16),
		(6, 15),
		(7, 14),
		(8, 13),
		(9, 12),
		(10, 11),
		(11, 10),
		(12, 9),
		(13, 8),
		(14, 7),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(31, 10),
		(32, 9),
		(33, 8),
		(34, 7),
		(35, 6),
		(36, 5),
		(37, 4),
		(38, 3),
		(39, 2),
		(40, 1); 


select * from roles_emloyees;
select * from roles2;	  
select * from employees_salary2;
select * from salary2;
select * from employees;








/*drop table roles_emloyees cascade;
/*drop table employees_salary2 cascade;


create table employees_salary2 (
id serial primary key,
imployees_id int not null,
salary_id int not null,
foreign key (imployees_id)
references employees(id),
foreign key (salary_id)
references salary2(id)
);
	