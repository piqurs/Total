USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Del_Detail]    Script Date: 06/01/2022 21:13:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Del_Detail] @idref int
as
delete from Detail_SPR
where idRef = @idref