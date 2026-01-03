USE [Zara]
GO

/****** Object:  View [dim].[vPromotion]    Script Date: 03/01/2026 18:13:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE view [dim].[vPromotion] AS
SELECT DISTINCT
    is_promoted,
    CASE WHEN is_promoted = 1 THEN 'Promoted' ELSE 'Not Promoted' END AS promotion_status
FROM vw_sales_enriched;
GO


