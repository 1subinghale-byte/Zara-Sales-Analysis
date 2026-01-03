USE [Zara]
GO

/****** Object:  View [dbo].[vw_sales_enriched]    Script Date: 03/01/2026 18:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_sales_enriched] AS
SELECT
    Product_ID,
    Product_Position,
    Promotion as is_promoted,
    Product_Category,
    Seasonal as is_seasonal,
    Sales_Volume,
    brand,
    url,
    name,
    description,
    CAST(price AS decimal(10,2)) AS Price,
    currency,
    terms,
    section,
    season,
    material,
    origin,
    CAST(price AS DECIMAL(10,2)) * CAST(Sales_Volume AS INT) AS sales_value,
    CASE
        WHEN price IS NULL THEN 'Unknown'
        WHEN price < 42 THEN 'Low'
        WHEN price BETWEEN 50 AND 107 THEN 'Medium'
        ELSE 'High'
    END AS price_band
FROM raw.sales;
GO


