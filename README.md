# Análisis de Ventas - AdventureWorks (Power BI)

## Descripción del proyecto
Este proyecto presenta un análisis de los datos de venta de la base de datos [**AdventureWork2019**](https://learn.microsoft.com/es-es/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)  (Venta de bicicletas y accesorios) de Microsoft.

## Objetivos del proyecto
- Visualizar el desempeño de las ventas de los años disponibles.
- Identificar valor de crecimiento frente a períodos anteriores.
- Visualizar el desempeño de las ventas con énfasis en los productos.
- Identificar las categorías de producto más vendidas.
- Visualizar el desempeño de las ventas de acuerdo a la zona geográfica de las ventas.
- Identificar los países con mayor y menor índices de ventas.

## Stack Tecnológico
- SQL Server
- PowerBI
- DAX
- Git/GitHub

## Modelo de datos Analítico
Modelo basado en esquema estrella compuesto por:
- **FactSales:** Registros de detalle de ventas (por producto).
- **DimDate:** Datos complementarios de fechas.
- **DimProduct:** Datos complementarios de productos. Incluye categoría y subcategoría.
- **DimTerritory:** Datos complementarios de puntos de venta (Países).

## Desarrollo
- Se diseña en modelo estrella la estructura de los datos necesarios.
- Generación de vistas en SQL para estructurar los datos para análisis.
- Se añaden los datos a Power BI con fuente de datos SQL.
- Se genera visual de validación con detalle de ventas mensuales.
- Se generan medidas para cálculo de crecimiento.
- Se generan visuales de validación para cálculo de crecimiento. Detalle anual y mensual.
- Se definen KPIs importantes para desempeño anual.
- Se generna gráfica para visualizar en el tiempo las ventas del año seleccionado y se incorpora tooltip personalizado para ver mes a mes su comparación de ventas y valor de crecimiento con el período anterior.
- Se generan gráficas para visualizar el desglose de ventas por categorías, subcategorías y productos (Jerarquía). Total anual y detalle mensual.
- Se generan gráficas para visualizar la distribución de las ventas de acuerdo a las zonas geográficas de venta. Se incorpora adicionalmente mapa con puntos de venta. Total anual y detalle mensual.

## Vistas previas de dashboards

>[!NOTE]
>
>Dentro del proyecto puede encontrar un archivo PDF con las páginas del informe de Power BI.

<img width="1404" height="786" alt="image" src="https://github.com/user-attachments/assets/b8258b85-4014-4b0e-a48a-6bcb0e17ce49" />
<img width="1405" height="785" alt="image" src="https://github.com/user-attachments/assets/b2acbe0a-be0f-4f5f-9562-22a409af0f11" />
<img width="1406" height="781" alt="image" src="https://github.com/user-attachments/assets/7ae76903-62f9-41c9-98f6-c306d955d84d" />
<img width="1402" height="781" alt="image" src="https://github.com/user-attachments/assets/2733a7bd-9474-482a-9233-3b429bbd5ddc" />
<img width="1401" height="783" alt="image" src="https://github.com/user-attachments/assets/34c82455-edfa-40c0-a8cb-6e5fc026230a" />
<img width="1408" height="786" alt="image" src="https://github.com/user-attachments/assets/351c39ab-6323-409e-97ae-839ea5f730e2" />













