SELECT 
  SalesOrderID, 
  OrderDate, 
  DATENAME(WEEKDAY, OrderDate) AS Day, 
  DATENAME(WEEK, OrderDate) AS WeekN0, 
  DATENAME(MONTH, OrderDate) AS Month, 
  LEFT(DATENAME(MONTH, OrderDate),3) AS MonthShort,
  DATENAME(YEAR, OrderDate) AS Year 
FROM 
  Sales.SalesOrderHeader