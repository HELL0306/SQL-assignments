Select EmpName,DeptName ,Joining_Date from Employee where Joining_Date between '2021-01-01' and '2022-01-01'

Select EmpName,DeptName ,Joining_Date from Employee where Joining_Date between '2022-01-01' and '2022-12-31'

Select ProductName, UnitPrice from Product Where UnitPrice in (select MAX(UnitPrice)from Product) or  UnitPrice in (select MIN(UnitPrice)from Product)

Select ProductName ,IsDiscontinued from Product Where IsDiscontinued = 'True'

Select a.Package,a.ProductName,a.IsDiscontinued,a.UnitPrice,b.Quantity from Product a, OrderItem b where a.Id = b.ProductId and a.UnitPrice > b.Quantity

Select a.CategoryName,b.Supplier_name from Category a, Supplier b Where a.Id = b.Catid

Select c.Id, c.FirstName,c.Phone,b.OrderDate,b.OrderNumber from OrderItem a,Order1 b, Customer c Where b.Id = OrderId and c.Id = b.CustomerId

Select b.FirstName,a.OrderDate,c.OrderId,c.Quantity from Order1 a,Customer b , OrderItem c where a.CustomerId = b.Id and c.OrderId = a.Id and c.Quantity in (select MAX(Quantity)from OrderItem)

Select a.Id,a.FirstName, SUBSTRING(FirstName,1,1) from Customer a Where FirstName like '%RA%' Order by a.Id