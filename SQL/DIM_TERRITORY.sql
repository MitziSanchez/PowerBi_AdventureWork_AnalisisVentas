
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

------------------------------
--DIMENSIONES 
-------------------------------
--GENERAR EN VISTAS EN ESQUEMA DE ANALITICA

--DIMENSION TERRITORIO
CREATE VIEW Analytics.VW_DimTerritory AS
SELECT DISTINCT
	FV.TerritoryID,
	T.[Name] AS RegionName,
	T.CountryRegionCode ,
	T.[Group],
	C.Name AS CountryName
FROM [Analytics].[VW_FactSales] AS FV
LEFT JOIN [Sales].[SalesTerritory] AS T
ON FV.TerritoryID = T.TerritoryID
LEFT JOIN [Person].[CountryRegion] AS C
ON T.CountryRegionCode = C.CountryRegionCode

