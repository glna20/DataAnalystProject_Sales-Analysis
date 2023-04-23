SELECT 
  p.ProductID, 
  p.Name AS [Product Name], 
  p.ProductNumber, 
  ps.Name AS [Product SubCategory], 
  pc.Name AS [Product Category], 
  p.Color AS [Product Color], 
  p.Size AS [Product Size], 
  p.ProductLine AS [Product Line], 
  pm.Name AS [Product Model Name] 
FROM 
  Production.Product p 
  LEFT JOIN Production.ProductSubCategory ps --using a left join because i want to return all the products.
  ON p.ProductSubcategoryID = ps.ProductSubcategoryID -- joined the subcategory name from Sub Category Table
  LEFT JOIN Production.ProductCategory pc 
  ON ps.ProductCategoryID = pc.ProductCategoryID --joined the category name from Category Table
  LEFT JOIN Production.ProductModel pm
  ON p.ProductModelID = pm.ProductModelID --joined the Model name from Model Table
ORDER BY 
  ProductID

  