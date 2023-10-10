------------------------------------------Module-5 Assignment

--Problem Statement:
--You have successfully cleared your 4th semester. In the 5th semester you will work with group by, having by clauses and set operators
--Tasks to be done:

--1.	Arrange the ‘Orders’ dataset in decreasing order of amount
--2.	Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which comprises of same columns as first table.
--3.	Apply the union operator on these two tables
--4.	Apply the intersect operator on these two tables
--5.	Apply the except operator on these two tables
========================================================================================================================

--1.	Arrange the ‘Orders’ dataset in decreasing order of amount
select * from orders order by amount desc
select * from orders order by amount asc
select * from orders order by order_id desc

--2.	Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which comprises of same columns as first table.
create table Employee_details1(Emp_id int primary key,Emp_name varchar(30),Emp_salary int);

insert into Employee_details1 values(1,'ABC',1000)

insert into Employee_details1 values(2,'BBC',3000)

insert into Employee_details1 values(3,'CBC',1500)

insert into Employee_details1 values(4,'DBC',2000)

insert into Employee_details1 values(5,'EBC',2500)

create table Employee_details2(Emp_id int primary key,Emp_name varchar(30),Emp_salary int);

INSERT into Employee_details2 values(1,'ABC',1000)
INSERT into Employee_details2 values(2,'BBC',3000)
INSERT into Employee_details2 values(3,'CBC',1500)
INSERT into Employee_details2 values(4,'DBC',10000)
INSERT into Employee_details2 values(5,'YBC',6000)

SELECT * from Employee_details1
SELECT * from Employee_details2
--3.	Apply the union operator on these two tables

select * from Employee_details1
union
select * from Employee_details2

select * from Employee_details1
union all
select * from Employee_details2

--4.	Apply the intersect operator on these two tables

select * from Employee_details1
intersect
select * from Employee_details2


--5.	Apply the except operator on these two tables

select * from Employee_details1
except
select * from Employee_details2