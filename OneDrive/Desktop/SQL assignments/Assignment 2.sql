Select * from Customer Where Country = 'Germany'
Select EmpName From Employee
Select FaxNumber From Customer Where FaxNumber Is Not Null

Select * from Customer Where FirstName Like '_u%'

Select * from OrderItem Where Quantity > 10 And Quantity < 20

Select EmpName From Employee Where MngrName IS NOT Null
 
 Select ProductId, AVG(Quantity) as QUANTITY From OrderItem Group By ProductId
 
 Select a.id,b.ProductName,c.CategoryNAme,a.DiscountAmt,d.UnitPrice from Product_bill a, Product b, Category c, OrderItem d 
 Where a.ProductId = b.Id and a.CatId = c.Id and a.ProductId = d.ProductId
 
 Select a.Id,c.ProductName From OrderItem a, Product_bill b , Product c Where a.ProductId = b.ProductId and a.ProductId = c.Id and c.Package ='Exotic Liquids'
 
 Select a.ShipName, b.FirstName from Cust_ship a, Customer b where a.Custid = b.Id
 
 Select a.id,c.ProductName,((a.Quantity*a.UnitPrice)-b.DiscountAmt) as Price from OrderItem a, Product_bill b ,Product c 
 where a.ProductId = b.ProductId and a.ProductId = c.Id and c.Package ='Exotic Liquids' and a.UnitPrice > 50

 Select c.id, c.OrderDate,d.ShipName From OrderItem a, Product_bill b , Order1 c, Cust_ship d 
 where a.ProductId = b.ProductId and a.OrderId =c.Id and c.CustomerId = d.Custid and d.ShipName = 'La corne d abondance' and c.OrderDate between '2022-10-07' and '2022-10-12' 