
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

--------------------------------------
--VALIDACION DE MEDIDAS DE POWER BI
---------------------------------------

--VALIDAR CALCULO DE TOTAL ORDERS
SELECT 
	COUNT(DISTINCT SalesOrderID)
FROM Analytics.VW_FactSales
WHERE YEAR(OrderDate) = 2011
AND MONTH(OrderDate) = 5

--VALIDAR CALCULO DE TOTAL SALES
SELECT 
	SUM(LineTotal)
FROM Analytics.VW_FactSales
WHERE YEAR(OrderDate) = 2013
AND MONTH(OrderDate) = 5

--VALIDAR CALCULO DE AVG SALES VALUE
SELECT 
	SUM(LineTotal) / COUNT(DISTINCT SalesOrderID)
FROM Analytics.VW_FactSales
WHERE YEAR(OrderDate) = 2011
AND MONTH(OrderDate) = 5

--VENTAS ANUALES
SELECT
    YEAR(OrderDate) AS Year,
    SUM(LineTotal) AS TotalSales
FROM Analytics.VW_FactSales
GROUP BY YEAR(OrderDate)
ORDER BY Year;

--VENTAS ANUALES POR CATEGORIA DETERMINADA
SELECT
    YEAR(OrderDate) AS Year,
    SUM(LineTotal) AS TotalSales
FROM Analytics.VW_FactSales AS S
LEFT JOIN Analytics.VW_DimProduct AS P
ON S.ProductID = P.ProductID
WHERE P.CategoryName = 'Bikes'
GROUP BY YEAR(OrderDate)
ORDER BY Year;

--VENTAS ANUALES POR PAIS DETERMINADO
SELECT
    YEAR(OrderDate) AS Year,
    SUM(LineTotal) AS TotalSales
FROM Analytics.VW_FactSales AS S
LEFT JOIN Analytics.VW_DimTerritory AS T
ON S.TerritoryID = T.TerritoryID
WHERE T.CountryName = 'Canada'
GROUP BY YEAR(OrderDate)
ORDER BY Year;






