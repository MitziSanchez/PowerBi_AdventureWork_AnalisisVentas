
--BD DE PRUEBA PROPORCIONADA POR MICROSOFT
USE AdventureWorks2019

------------------------------
--DIMENSIONES 
-------------------------------
--GENERAR EN VISTAS EN ESQUEMA DE ANALITICA

--DIMENSION FECHA
CREATE VIEW Analytics.VW_DimDate AS
SELECT DISTINCT 
	OrderDate,
	YEAR(OrderDate) AS YearOrder,
	MONTH(OrderDate) AS MonthOrder,
	DAY(OrderDate) AS DayOrder,
	DATENAME(MONTH, OrderDate) AS NameMonthOrder,
	DATENAME(WEEKDAY, OrderDate) AS WeekdayOrder
FROM [Analytics].[VW_FactSales]
