USE [Total]
GO
/****** Object:  Table [dbo].[Detail_SPR]    Script Date: 06/01/2022 21:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail_SPR](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRef] [int] NOT NULL,
	[Material] [int] NULL,
	[TanggalDiterima] [date] NULL,
	[Status] [int] NULL,
	[ProyekBl] [int] NULL,
	[ProyekTh] [int] NULL,
	[ProyekKd] [int] NULL,
	[TanggalEntri] [date] NULL,
 CONSTRAINT [PK_Detail_SPR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Detail_SPR]  WITH CHECK ADD  CONSTRAINT [FK_Detail_SPR_Header_SPR] FOREIGN KEY([id])
REFERENCES [dbo].[Header_SPR] ([id])
GO
ALTER TABLE [dbo].[Detail_SPR] CHECK CONSTRAINT [FK_Detail_SPR_Header_SPR]
GO
