SELECT sd.ProductID
    ,sh.OrderDate
      ,sh.DueDate
      ,sh.ShipDate
      ,sh.SalesOrderNumber
      ,sh.CustomerID
      ,sd.OrderQty AS [Order Quantity]
      ,sd.LineTotal AS [Sales Amount]
FROM Sales.SalesOrderHeader sh
INNER JOIN Sales.SalesOrderDetail sd
ON sh.SalesOrderID = sd.SalesOrderID