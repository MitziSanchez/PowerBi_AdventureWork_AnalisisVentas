
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

------------------------------
--DIMENSIONES 
-------------------------------
--GENERAR EN VISTAS EN ESQUEMA DE ANALITICA

--DIMENSION CLIENTES
--CONSIDERAR QUE HAY CLIENTES COMO PERSONAS NATURALES Y COMO EMPRESAS
CREATE VIEW Analytics.VW_DimCustomer AS
SELECT DISTINCT
	FV.CustomerID,
	C.PersonID,
	C.StoreID,
	CASE WHEN C.PersonID IS NULL	
		THEN S.Name
		ELSE CONCAT(P.FirstName, ' ',P.LastName)
		END AS Name
FROM [Analytics].[VW_FactSales] AS FV
LEFT JOIN [Sales].[Customer] AS C
ON FV.CustomerID = C.CustomerID
LEFT JOIN [Person].[Person] AS P
ON C.PersonID = P.BusinessEntityID
LEFT JOIN [Sales].[Store] AS S
ON C.StoreID = S.BusinessEntityID



