
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

------------------------------
--DIMENSIONES 
-------------------------------
--GENERAR EN VISTAS EN ESQUEMA DE ANALITICA

--DIMENSION PRODUCTO
CREATE VIEW Analytics.VW_DimProduct AS
SELECT DISTINCT
	FV.ProductID,
	P.Name AS ProductName,
	PC.Name AS CategoryName,
	PSC.Name AS SubcategoryName,
	P.Color,
	P.Size 
FROM [Analytics].[VW_FactSales] AS FV
JOIN [Production].[Product] AS P
ON FV.ProductID = P.ProductID 
JOIN [Production].[ProductSubcategory] AS PSC
ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN [Production].[ProductCategory] AS PC
ON PSC.ProductCategoryID = PC.ProductCategoryID





