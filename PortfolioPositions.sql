USE [dbOne]
GO

/****** Object:  Table [dbo].[PortfolioPositions]    Script Date: 24/08/2016 12:16:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PortfolioPositions](
	[Id] [int] NOT NULL,
	[PortfolioId] [nchar](10) NOT NULL,
	[Ticker] [nchar](10) NOT NULL,
	[Position] [int] NOT NULL,
 CONSTRAINT [PK__Portfoli__3214EC073CB00A56] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PortfolioPositions]  WITH CHECK ADD  CONSTRAINT [FK_PortfolioPositions_Portfolio] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolio] ([PortfolioId])
GO

ALTER TABLE [dbo].[PortfolioPositions] CHECK CONSTRAINT [FK_PortfolioPositions_Portfolio]
GO

ALTER TABLE [dbo].[PortfolioPositions]  WITH CHECK ADD  CONSTRAINT [FK_PortfolioPositions_Securities] FOREIGN KEY([Ticker])
REFERENCES [dbo].[Securities] ([Ticker])
GO

ALTER TABLE [dbo].[PortfolioPositions] CHECK CONSTRAINT [FK_PortfolioPositions_Securities]
GO

