-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select c.categoryname as category, productname
from [product] as p
join [category] as c
on p.categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, companyname, o.OrderDate
from [order] as o
join [shipper] as s
on o.ShipVia = s.Id
where o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity
FROM Product
JOIN OrderDetail
ON Product.Id = OrderDetail.ProductId
WHERE OrderDetail.OrderId = '10251'
order by productname

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

Select o.id as id, CompanyName as name, Lastname as last
from [order] as o
join [employee] as e
on e.id = o.EmployeeId
join [customer] as c
on c.id = o.CustomerId