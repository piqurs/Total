USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Del_Proyek]    Script Date: 06/01/2022 21:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Del_Proyek] @proyek int
as
delete from Proyek
where Proyek = @proyek