Select a.OrderDate, a.OrderNumber, a.TotalAmount,b.FirstName ,b.City,b.Phone from Order1 a, Customer b where a.CustomerId = b.Id and b.Phone ='030-0074321'

Select a.CategoryName,b.ProductId, b.ShipDate,b.ShipTo, c.ProductName from Category a ,Product_bill b, Product c Where a.Id =b.CatId and b.ProductId = c.Id and a.CategoryName = 'Seafood'

Select a.FirstName,a.City,b.OrderDate,b.TotalAmount from Customer a, Order1 b ,OrderItem c Where a.Id = b.CustomerId and b.Id = c.OrderId and Not Country = 'London'

Select a.ProductName,a.Package,b.Quantity,b.OrderId,c.OrderDate,c.OrderNumber from Product a , OrderItem b , Order1 c Where a.Id =b.ProductId and c.Id =b.OrderId and a.Package = 'Chai'

Select EmpName,DeptName,Rating from Employee