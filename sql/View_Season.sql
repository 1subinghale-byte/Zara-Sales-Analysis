USE [Zara]
GO

/****** Object:  View [dim].[vSeason]    Script Date: 03/01/2026 18:13:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dim].[vSeason] AS
SELECT DISTINCT
    season,
    is_seasonal
FROM vw_sales_enriched;
GO


