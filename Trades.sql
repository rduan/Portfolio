USE [dbOne]
GO

/****** Object:  Table [dbo].[Trades]    Script Date: 24/08/2016 12:17:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Trades](
	[Id] [int] NOT NULL,
	[PortfolioId] [nchar](10) NOT NULL,
	[Time] [time](7) NOT NULL,
	[Security] [nchar](10) NOT NULL,
	[Ticker] [nchar](10) NOT NULL,
	[Position] [int] NOT NULL,
	[MarketPrice] [bit] NOT NULL,
	[TradePrice] [float] NOT NULL,
 CONSTRAINT [PK__Trades__3214EC07E39FB93E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Trades]  WITH CHECK ADD  CONSTRAINT [FK_Trades_Portfolio] FOREIGN KEY([PortfolioId])
REFERENCES [dbo].[Portfolio] ([PortfolioId])
GO

ALTER TABLE [dbo].[Trades] CHECK CONSTRAINT [FK_Trades_Portfolio]
GO

