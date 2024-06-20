use rgm;
CREATE TABLE customers(
customerid int primary key,
custmer_name varchar(255)
);

create table orders(
orderid int primary key,
orderno int not null,
customerid int,
foreign key (customerid) references 
customers(customerid));

insert into customers (customerid,custmer_name)
VALUES(1	,"JOHN"),(2	,"JANE"),(3	,"BOB");

insert into orders(orderid,orderno,customerid)
VALUES (1	,101	,1),(2	,102	,2),(3	,103	,3);

select*
from customers c,orders o
where c.customerid=o.customerid;

delete from customers
where customerid ="3";

