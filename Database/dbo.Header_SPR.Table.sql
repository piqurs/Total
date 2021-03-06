USE [Total]
GO
/****** Object:  Table [dbo].[Header_SPR]    Script Date: 06/01/2022 21:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Header_SPR](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Proyek] [int] NOT NULL,
	[Peminta] [varchar](50) NULL,
	[TanggalMinta] [date] NOT NULL,
	[LokasiPeminta] [varchar](50) NULL,
	[TanggalEntri] [date] NULL,
 CONSTRAINT [PK_Header_SPR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
