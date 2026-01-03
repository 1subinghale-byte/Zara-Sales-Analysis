USE [Zara]
GO

/****** Object:  View [dbo].[Fsales]    Script Date: 03/01/2026 18:11:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[Fsales] AS
SELECT
    Product_ID,
    Sales_Volume,
    price,
    sales_value,
    is_promoted,
    is_seasonal,
    price_band
FROM vw_sales_enriched;
GO


