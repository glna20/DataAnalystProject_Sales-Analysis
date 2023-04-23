SELECT 
  s.CustomerID, 
  p.FirstName, 
  p.LastName, 
  p.FirstName + ' ' + p.LastName AS CustomerName, 
  E.EmailAddress, 
  A.City, 
  sp.CountryRegionCode AS Country
FROM 
  Sales.Customer s 
  INNER JOIN Person.Person p 
  ON s.PersonID = p.BusinessEntityID 
  INNER JOIN Person.EmailAddress E 
  ON p.BusinessEntityID = E.BusinessEntityID 
  INNER JOIN Person.BusinessEntityAddress B
  ON p.BusinessEntityID = B.BusinessEntityID 
  INNER JOIN Person.Address A 
  ON B.AddressID = A.AddressID 
  INNER JOIN Sales.SalesTerritory sp 
  ON s.TerritoryID = sp.TerritoryID 
ORDER BY
  CustomerID