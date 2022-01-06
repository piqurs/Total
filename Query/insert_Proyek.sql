USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[insert_Proyek]    Script Date: 06/01/2022 21:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insert_Proyek](@proyek int, @Lks_Pry char(100))
as
insert into dbo.Proyek(Proyek, LokasiProyek) 
values (@proyek, @Lks_Pry)