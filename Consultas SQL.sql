
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

-----------------------------------------------------------
--CONSULTAS ANALITICAS VISTAS
-----------------------------------------------------------

--CREAR ESQUEMA PARA ORGANIZAR LO QUE SE USARA PARA LAS ESTADISTICAS (PROPIETARIO DBO)
--CREATE SCHEMA Analytics AUTHORIZATION dbo

--VISTA DE VENTAS REALIZADAS
--CREATE VIEW Analytics.VW_FactSales AS 
--SELECT
--	SALES.SalesOrderID,
--	SALES.OrderDate,
--	SALES.CustomerID,
--	SALES.TerritoryID,
--	DETAIL_SALES.ProductID,
--	DETAIL_SALES.OrderQty,
--	DETAIL_SALES.LineTotal
--FROM [Sales].[SalesOrderHeader] AS SALES
--JOIN [Sales].[SalesOrderDetail] AS DETAIL_SALES
--ON SALES.SalesOrderID = DETAIL_SALES.SalesOrderID


--VISTA DE VENTAS MENSUALES 
--ALTER VIEW Analytics.VW_MonthSales AS
--SELECT 
--	YEAR(OrderDate) as YearOrder,
--	MONTH(OrderDate) AS MonthOrder,
--	COUNT(DISTINCT SalesOrderID) AS SalesQty,
--	SUM(LineTotal) AS SalesTotal,
--	AVG(LineTotal) as AvgSalesTotal
--FROM [Analytics].[VW_FactSales]
--GROUP BY YEAR(OrderDate), MONTH(OrderDate)

--SELECT * FROM Analytics.VW_VentasMensuales
--ORDER BY YearOrder, MonthOrder


--TOTALES DE VENTA COMPARATICA MENSUAL
--LAG() TOMA FILA ANTERIOR, OVER() CONSIDERANDO QUE SEA MES ANTERIOR, POR MEDIO DE ORDEN POR MES 
--CREATE VIEW Analytics.VW_MonthSalesComparative AS
--SELECT 
--	YEAR(OrderDate) AS YearOrder,
--	MONTH(OrderDate) AS MonthOrder,
--	SUM(LineTotal) AS TotalSalesActualMonth,
--	LAG(SUM(LineTotal))
--		OVER (ORDER BY YEAR(OrderDate), MONTH(OrderDate)
--	) as TotalSalesPreviousMonth
--FROM [Analytics].[VW_FactSales]
--GROUP BY YEAR(OrderDate), MONTH(OrderDate)

--SELECT * FROM [Analytics].[VW_VentasMensualesComparativa]
--ORDER BY YearOrder, MonthOrder

--DIMENSIONES 
--GENERAR EN VISTAS EN ESQUEMA DE ANALITICA

--DIMENSION FECHA
--CREATE VIEW Analytics.VW_DimDate AS
--SELECT DISTINCT 
--	OrderDate,
--	YEAR(OrderDate) AS YearOrder,
--	MONTH(OrderDate) AS MonthOrder,
--	DAY(OrderDate) AS DayOrder,
--	DATENAME(MONTH, OrderDate) AS NameMonthOrder,
--	DATENAME(WEEKDAY, OrderDate) AS WeekdayOrder
--FROM [Analytics].[VW_FactSales]

--DIMENSION PRODUCTO
--CREATE VIEW Analytics.VW_DimProduct AS
--SELECT DISTINCT
--	FV.ProductID,
--	P.Name AS ProductName,
--	PC.Name AS CategoryName,
--	PSC.Name AS SubcategoryName,
--	P.Color,
--	P.Size 
--FROM [Analytics].[VW_FactSales] AS FV
--JOIN [Production].[Product] AS P
--ON FV.ProductID = P.ProductID 
--JOIN [Production].[ProductSubcategory] AS PSC
--ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
--JOIN [Production].[ProductCategory] AS PC
--ON PSC.ProductCategoryID = PC.ProductCategoryID


--DIMENSION CLIENTES
--CONSIDERAR QUE HAY CLIENTES COMO PERSONAS NATURALES Y COMO EMPRESAS
--CREATE VIEW Analytics.VW_DimCustomer AS
--SELECT DISTINCT
--	FV.CustomerID,
--	C.PersonID,
--	C.StoreID,
--	CASE WHEN C.PersonID IS NULL	
--		THEN S.Name
--		ELSE CONCAT(P.FirstName, ' ',P.LastName)
--		END AS Name
--FROM [Analytics].[VW_FactSales] AS FV
--LEFT JOIN [Sales].[Customer] AS C
--ON FV.CustomerID = C.CustomerID
--LEFT JOIN [Person].[Person] AS P
--ON C.PersonID = P.BusinessEntityID
--LEFT JOIN [Sales].[Store] AS S
--ON C.StoreID = S.BusinessEntityID

--DIMENSION TERRITORIO
--CREATE VIEW Analytics.VW_DimTerritory AS
--SELECT DISTINCT
--	FV.TerritoryID,
--	T.[Name] AS RegionName,
--	T.CountryRegionCode ,
--	T.[Group],
--	C.Name AS CountryName
--FROM [Analytics].[VW_FactSales] AS FV
--LEFT JOIN [Sales].[SalesTerritory] AS T
--ON FV.TerritoryID = T.TerritoryID
--LEFT JOIN [Person].[CountryRegion] AS C
--ON T.CountryRegionCode = C.CountryRegionCode





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

--VENTAS ANUALES POR CATEGORIA
SELECT
    YEAR(OrderDate) AS Year,
    SUM(LineTotal) AS TotalSales
FROM Analytics.VW_FactSales AS S
LEFT JOIN Analytics.VW_DimProduct AS P
ON S.ProductID = P.ProductID
WHERE P.CategoryName = 'Bikes'
GROUP BY YEAR(OrderDate)
ORDER BY Year;

--VENTAS ANUALES POR PAIS
SELECT
    YEAR(OrderDate) AS Year,
    SUM(LineTotal) AS TotalSales
FROM Analytics.VW_FactSales AS S
LEFT JOIN Analytics.VW_DimTerritory AS T
ON S.TerritoryID = T.TerritoryID
WHERE T.CountryName = 'Canada'
GROUP BY YEAR(OrderDate)
ORDER BY Year;






