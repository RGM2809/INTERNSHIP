use rgm;
CREATE TABLE CUST(
custmerid int primary key,
fname varchar(255),
lname varchar(255),
addid int);
CREATE TABLE PAY(
amt int,
mode varchar(255),
Date date,
custmerid int,
foreign key (custmerid) references 
CUST(custmerid));
INSERT INTO CUST(custmerid,fname,lname,addid)
VALUES (1	,"Mary"	,"JONAS",	5),
(3	,"LINDA"	,"SWITH",	7),
(4	,"MADAN"	,"MOHAN",	8),
(2	,"BARY"	,"WILLIAM",	6);

INSERT INTO PAY (amt, mode, Date, custmerid)
VALUES 
(60, 'CASH', '2024-04-03', 1);
INSERT INTO PAY (amt, mode, Date, custmerid)
VALUES(30, 'CREDIT CARD', '2024-04-05', 2);

INSERT INTO PAY (amt, mode, Date, custmerid)
VALUES(110, 'CASH', '2024-04-15', 8);

INSERT INTO PAY (amt, mode, Date, custmerid)
VALUES
(70, 'MOBILE PAYMENT', '2024-04-20', 10);
INSERT INTO PAY (amt, mode, Date, custmerid)
VALUES
(80, 'CASH', '2024-04-29', 11);

select *
from CUST;
select *
from PAY;

SELECT *
FROM CUST AS c
INNER JOIN PAY AS p
ON c.custmerid = p.custmerid;

