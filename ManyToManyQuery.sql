SELECT ProductName, CategoryName
FROM Products p
FULL OUTER JOIN ProductCategoreys pc ON pc.ProductId = p.Id
FULL OUTER JOIN Categoyes c ON c.Id = pc.CategoryesId
