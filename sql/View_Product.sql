USE [Zara]
GO

/****** Object:  View [dim].[vProduct]    Script Date: 03/01/2026 18:11:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE view [dim].[vProduct] as
SELECT DISTINCT
    product_id,
    Name as ProductName,
    Description,
    terms as Type,
    brand,
    product_category,
    section,
    material,
    origin,
    product_position,
    season 
FROM vw_sales_enriched
GO


