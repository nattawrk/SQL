create table salary(
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

select * from roles; 


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
		
create table salary2(
id serial primary key,
monthly_salary int not null
);		
		
select * from salary2;
select * from employees;