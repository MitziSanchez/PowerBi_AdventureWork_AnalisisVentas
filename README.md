# Análisis de Ventas de Adventure Works con PowerBI

## Descripción del proyecto
El proyecto presenta un análisis sobre los datos de venta de la base de datos Adventure Work (Venta de bicicletas y accesorios) de Microsoft.
Incluye dashboards de análisis de las ventas totales y crecimiento de acuerdo al período anterior (año y mes), análisis por categoría de productos y distribución georgráfica de las ventas.
El proyecto fue desarrollado siguiendo los siguientes puntos:
- Generación de vista de hechos y dimensiones (Modelo estrella)
- Carga en PowerBI
- Generación de dashboards

## Objetivos del proyecto
- Visualizar ventas totales de los periodos disponibles (2011-2014 en curso)
- Visualizar crecimiento anual y mensual de las ventas
- Identificar categorías de productos más vendidas y su evolución anual.
- Identificar las principales zonas de venta.

## Stack Tecnológico
- SQL Server
- PowerBI
- DAX
- Git/GitHub

## Modelo de datos Análitico
Modelo estrella compuesto por lo siguiente:
- **FactSales** Ventas realizadas (por producto y orden).
- **DimDate** Información complementaria de fechas.
- **DimProduct** Información básica de productos, con categoria y subcategoría.
- **DimTerritory** Paises con puntos de venta.
- **DimCostumer** Información básica de clientes.

## Análisis desarrollado
- Ventas totales (anual - mensual).
- Valor promedio de venta.
- Crecimiento anual (por meses disponibles). Detalle con crecimiento mensual.
- Ventas anuales de acuerdo a categorías de productos. (Incluye visualización por subcategoría y productos. Gráfico con jerarquía).
- Concentración de ventas por territorio (País).
- Análisis mensual con País de venta.

## Vistas previas de dashboards
<img width="1272" height="705" alt="image" src="https://github.com/user-attachments/assets/d1c51522-9c1f-4364-87ea-e37485cdcdeb" />

<img width="1268" height="712" alt="image" src="https://github.com/user-attachments/assets/923b0287-e608-46cd-8ec8-deb9b3cd5658" />

<img width="1267" height="712" alt="image" src="https://github.com/user-attachments/assets/24c02792-fb8d-4853-83c9-d61d3f712c42" />

<img width="1272" height="709" alt="image" src="https://github.com/user-attachments/assets/5de47fac-e276-4701-b67d-28c5b45f8ad4" />

<img width="1267" height="709" alt="image" src="https://github.com/user-attachments/assets/6e9646cb-cd6d-46f9-9a5a-d7ed847bda2a" />

<img width="1267" height="708" alt="image" src="https://github.com/user-attachments/assets/a0172564-2023-487f-9711-14fba7070fbc" />





