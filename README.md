# Análisis de Ventas - AdventureWorks (Power BI)

## Descripción del proyecto
Este proyecto presenta un análisis de los datos de venta de la base de datos [**AdventureWork2019**](https://learn.microsoft.com/es-es/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)  (Venta de bicicletas y accesorios) de Microsoft.
Incluye dashboards interactivos para el análisis de:
- Ventas totales.
- Crecimiento mensual y anual.
- Desempeño por categoría y subcategoría de productos.
- Distribución georgráfica de las ventas.

El proyecto fue desarrollado siguiendo los siguientes puntos:
- Construcción de vista de hechos y dimensiones (Modelo estrella)
- Carga y modelado en Power BI
- Creación de medidas DAX y generación de dashboards analíticos.

## Objetivos del proyecto
- Visualizar ventas totales de los periodos disponibles (2011-2014)
- Analizar el crecimiento anual y mensual de las ventas
- Identificar categorías y subcategorías de productos con mayor desempeño (ventas).
- Analizar la concentración geográfica de las ventas.

## Stack Tecnológico
- SQL Server
- PowerBI
- DAX
- Git/GitHub

## Modelo de datos Analítico
Modelo basado en esquema estrella compuesto por lo siguiente:
- **FactSales** Ventas realizadas (por línea de producto y orden).
- **DimDate** Información complementaria de fechas.
- **DimProduct** Productos con categoría y subcategoría.
- **DimTerritory** Paises con puntos de venta.
- **DimCustumer** Información básica de clientes.

## Análisis desarrollado
- Ventas totales (anual y mensual).
- Valor promedio de venta.
- Crecimiento anual (por meses disponibles). Detalle con crecimiento mensual.
- Ventas anuales por categorías, subcategorías y productos. (Jerarquía).
- Concentración de ventas por territorio (País).
- Análisis mensual de ventas por país.

## Vistas previas de dashboards

>[!NOTE]
>
>Dentro del proyecto puede encontrar un archivo PDF con las páginas del informe de Power BI.


<img width="1272" height="705" alt="image" src="https://github.com/user-attachments/assets/d1c51522-9c1f-4364-87ea-e37485cdcdeb" />

<img width="1268" height="712" alt="image" src="https://github.com/user-attachments/assets/923b0287-e608-46cd-8ec8-deb9b3cd5658" />

<img width="1267" height="712" alt="image" src="https://github.com/user-attachments/assets/24c02792-fb8d-4853-83c9-d61d3f712c42" />

<img width="1272" height="709" alt="image" src="https://github.com/user-attachments/assets/5de47fac-e276-4701-b67d-28c5b45f8ad4" />

<img width="1267" height="709" alt="image" src="https://github.com/user-attachments/assets/6e9646cb-cd6d-46f9-9a5a-d7ed847bda2a" />

<img width="1267" height="708" alt="image" src="https://github.com/user-attachments/assets/a0172564-2023-487f-9711-14fba7070fbc" />





