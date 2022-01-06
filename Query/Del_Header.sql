USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Del_Header]    Script Date: 06/01/2022 21:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Del_Header] @proyek int
as
delete from Header_SPR
where Proyek = @proyek