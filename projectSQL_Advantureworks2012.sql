--a. Get all the details from the person table including email ID, phonenumber and phone number type
--b. Get the details of the sales header order made in May 2011
--c. Get the details of the sales details order made in the month of May2011
--d. Get the total sales made in May 2011
--e. Get the total sales made in the year 2011 by month order byincreasing sales
--f. Get the total sales made to the customer with FirstName='Gustavo'and LastName ='Achong'
--------------------------------------------------------------------------------------------

--a. Get all the details from the person table including email ID, phonenumber and phone number type
SELECT * FROM [Person].[Person]
SELECT*FROM [Person].[PersonPhone]
SELECT*FROM [Person].[EmailAddress]
SELECT*FROM[Person].[PhoneNumberType]

select P.FirstName,P.Lastname,E.emailaddress,PH.phonenumber,PHT.name from person.Person P inner join person.EmailAddress E 
on P.BusinessEntityID=E.BusinessEntityID inner join person.PersonPhone PH on PH.BusinessEntityID=E.BusinessEntityID
inner join person.PhoneNumberType PHT on PHT.PhoneNumberTypeID=PH.PhoneNumberTypeID

--b. Get the details of the sales header order made in May 2011
select * from [Sales].[SalesOrderHeader] where orderdate between ('2011-05-01') and ('2011-05-31')

--c. Get the details of the sales details order made in the month of May2011
select * from [Sales].[SalesOrderDetail]

--d. Get the total sales made in May 2011

select * from sales.SalesOrderDetail SD

inner join sales.SalesOrderHeader SH on SD.SalesOrderID=SH.SalesOrderID
where SH.OrderDate between ('2011-05-01') and ('2011-05-31')

--e. Get the total sales made in the year 2011 by month order byincreasing sales

select sum(sd.LineTotal) as TotalSales,month(orderDate) as Salemonth from
sales.SalesOrderDetail sd
inner join sales.SalesOrderHeader sh on SD.SalesOrderID=SH.SalesOrderID
group by month(OrderDate)
order by TotalSales asc

--f. Get the total sales made to the customer with FirstName='Gustavo'and LastName ='Achong'

select * from [Person].[Person] where FirstName='Gustavo' AND LastName='Achong'------291

select * from [Sales].[SalesPerson]
select * from [Sales].[Customer]

select *,p.FirstName from sales.SalesPerson as sp
inner join Person.Person as p on sp.BusinessEntityID=p.BusinessEntityID
where FirstName like 'G%'