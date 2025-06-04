USE learn_sql;

DROP TABLE users;

CREATE TABLE employees(
id int primary key auto_increment,
fName varchar(50) not null,
lNAme varchar(50) not null,
hourly_pay int default 0
);

insert into employees (fName,lName,hourly_pay) values ('kamal','raj',5000),('james','kumar',3000), ('stephen','raj',6900), ('harish','Kalyan',8000), ('Kumar','M',7600);

select * from employees;

select count(*) from employees;

select sum(hourly_pay) from employees;

select avg(hourly_pay) from employees;

select min(hourly_pay) from employees;


select max(hourly_pay) from employees;

select group_concat(fName) from employees;

select hourly_pay, count(hourly_pay), group_concat(lName) from employees group by hourly_pay;



select id, fName, lName, hourly_pay, (select avg(hourly_pay) from employees) as average_pay from employees;

select *, (select avg(hourly_pay) from employees) as average from employees where hourly_pay > (select avg(hourly_pay) from employees);