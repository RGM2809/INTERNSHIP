use rgm;
CREATE table employee(
emp_id int,
emp_name varchar(100),
emp_salary int,
emp_city varchar(255),
emp_dbj date
);

insert into employee(emp_id,emp_name,emp_salary,emp_city,emp_dbj)
values(1,"abc",4500,"delhi",'2003-10-10');

insert into employee(emp_id,emp_name,emp_salary,emp_city,emp_dbj)
values(2,"bcd",5300,"delhi",'2004-12-11');

insert into employee(emp_id,emp_name,emp_salary,emp_city,emp_dbj)
values(3,"def",4300,"mumbai",'2003-01-10');

insert into employee(emp_id,emp_name,emp_salary,emp_city,emp_dbj)
values(4,"fgh",6000,"mumbai",'2003-09-28');

insert into employee(emp_id,emp_name,emp_salary,emp_city,emp_dbj)
values(5,"HIJ",7000,"mumbai",'2003-09-28');

SET SQL_SAFE_UPDATE=0;
update employee
set emp_salary=5000
WHERE emp_id=3;


select *
from employee;

select *
from employee
where emp_city="mumbai";

select *
from employee
where emp_city like '%ai';

SELECT*
FROM employee
WHERE not emp_city ="mumbai";

SELECT *
FROM employee
ORDER BY emp_salary desc;

SELECT *
FROM employee
ORDER BY emp_salary;

SELECT emp_city,count(emp_id) as total
FROM employee
GROUP BY emp_city;

SELECT emp_city,sum(emp_salary) as total
FROM employee
group by emp_city
having sum(emp_salary)>10000;

SELECT emp_city,count(emp_id) as total
FROM employee
GROUP BY emp_city
HAVING count(emp_id)>2;

