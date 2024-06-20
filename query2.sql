use rgm;
CREATE TABLE EMPLOY(
emp_id int ,
name varchar(244),
gender varchar(244),
department varchar(244),
education varchar(244),
month varchar(244),
salary int
);

INSERT INTO EMPLOY(emp_id, name, gender, department, education, month, salary)
VALUES (1001, 'ajay', 'M', 'ENGIN', 'DOC', 'JAN', 25),
(1002, 'babloo', 'M', 'ENGIN', 'UG', 'FEB', 23),
(1003, 'chhavi', 'F', 'HR', 'PG', 'MAR', 15),
(1004, 'dheeraj', 'M', 'HR', 'UG', 'JAN', 12),
(1005, 'evina', 'F', 'MARKET', 'UG', 'MAR', 16),
(1006, 'fredy', 'M', 'SALES', 'UG', 'DEC', 10),
(1007, 'garima', 'F', 'SALES', 'PG', 'MAR', 10),
(1008, 'hans', 'M', 'ADMIN', 'PG', 'NOV', 8),
(1009, 'ivanka', 'F', 'ADMIN', 'INTER', 'APR', 7),
(1010, 'jai', 'M', 'PEON', 'HIGH SCH', 'DEC', 4);

select *
from EMPLOY;

SELECT department,sum(salary)
from EMPLOY
group by department
having sum(salary)>=20 and  not department = 'UG';

SELECT department,sum(salary)
from EMPLOY
group by department
having sum(salary)>=20 
order by sum(salary) DESC;

SELECT department,avg(salary)
from EMPLOY
group by department
having avg(salary)>35;

SELECT name as employee_name
from EMPLOY
where salary>14 and salary<24;

SELECT name,salary+5 as total_salary
from EMPLOY;


