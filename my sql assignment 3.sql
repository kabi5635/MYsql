select  distinct employee_id,employee_name,salary from employee;
select age as Employee_Age,salary as Employee_Salary from employee;
select*, salary*1.10 as net_salary from employee;
select * from employee
where salary>50000 and hire_date<'2016-01-01';
select *from employee
where designation="Data Analyst"or designation="Data Scientist";
SET SQL_SAFE_UPDATES = 0;
UPDATE employee  
SET designation = 'Data Scientist'  
WHERE designation IS NULL;

select*from employee
where department_id in(1,3,4,9,12);

SELECT employee_id,employee_name,salary
FROM employee  
WHERE salary not BETWEEN 50000 AND 80000;

SELECT * 
FROM employee  
WHERE employee_name REGEXP '^[AEIOUaeiou]';

SELECT * 
FROM employee  
WHERE employee_name LIKE '_sh%';

select * from employee
where hire_date>"2019-01-01"
order by hire_date;

SELECT
department_id,salary from employee
ORDER BY department_id ASC, salary DESC;


select employee_id,employee_name,salary from employee
order by salary desc
limit 10;

select employee_id,employee_name,hire_date from employee
where hire_date>'2018-01-01'
order by hire_date asc
limit 5; 

select sum(salary) as total_salary from employee
where department_id=7;

select min(age) as min_age from employee;

select max(salary) as max_salary,Location_id from employee
group by location_id;

SELECT designation, AVG(salary) AS average_salary
FROM employee
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

select department_id, count(employee_id) as employee_count from employee
group by department_id
having employee_count<3;

select location_id,gender,avg(age) as average_age from employee
group by location_id,gender
having gender='F' and average_age<30;

