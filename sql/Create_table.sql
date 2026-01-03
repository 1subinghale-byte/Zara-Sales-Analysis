USE [Zara]
GO

/****** Object:  Table [raw].[Sales]    Script Date: 03/01/2026 18:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [raw].[Sales](
	[Product_ID] [int] NOT NULL,
	[Product_Position] [nvarchar](50) NOT NULL,
	[Promotion] [bit] NOT NULL,
	[Product_Category] [nvarchar](50) NOT NULL,
	[Seasonal] [bit] NOT NULL,
	[Sales_Volume] [smallint] NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[url] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](350) NULL,
	[price] [float] NOT NULL,
	[currency] [nvarchar](50) NOT NULL,
	[terms] [nvarchar](50) NOT NULL,
	[section] [nvarchar](50) NOT NULL,
	[season] [nvarchar](50) NOT NULL,
	[material] [nvarchar](50) NOT NULL,
	[origin] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


