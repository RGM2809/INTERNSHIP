use rgm;
create table emp1(

empid int,
name varchar(255),
country varchar(255)
);

create table emp2(
empid int,
name varchar(255),
country varchar(255)
);
insert into emp1 (empid,name ,country)
VALUES(1	,"SHUBHAM"	,"INDIA"),
(2	,"AMAN"	,"AUSTRILIA"),
(3	,"NAVEEN"	,"SRI LANKA"),
(4	,"ADITYA"	,"AUSTRIA"),
(5	,"NISHANT"	,"SPAIN");
insert into emp2 (empid,name ,country)
VALUES(1	,"TOMMY"	,"ENGLAND"),
(2	,"ALLEN"	,"FRANCE"),
(3	,"NANCY"	,"INDIA"),
(4	,"ADI"	,"IRELAND"),
(5	,"SANDY"	,"SPAIN");

SELECT country
from emp1
union 
SELECT country
from emp2
order by country;
SELECT country
from emp1
union all
SELECT country
from emp2
order by country;

SELECT country
from emp1
intersect
SELECT country
from emp2
order by country;

SELECT country
from emp1
except
SELECT country
from emp2
order by country;

