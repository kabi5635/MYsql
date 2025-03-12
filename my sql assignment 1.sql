  create database employee;
  use employee;
  create table Department(
  department_id int primary key,
  depatment_name varchar(100)
  );
  
  create table location(
  Location_id int primary key,
location varchar(30)
  );
  
  create table employees(
  employee_id int primary key,
  employee_name varchar(50),
  gender enum('M','F'),
  age int,
  hire_date date,
  designation varchar(100),
  department_id int,
  Location_id int,
  salary decimal(10,2)
  );
  alter table employees
  add column email varchar(50);
  
  alter table employees
  drop column age;
  
  alter table employees
  modify column designation varchar(200);
  
  alter table employees
  rename column hire_date to date_of_joining;
  
alter table department
rename to department_info;

alter table location
rename to locations;

truncate table employees;
drop table employees;
drop database employee;


--c
