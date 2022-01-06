USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Upd_Dtl]    Script Date: 06/01/2022 21:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Upd_Dtl] @status int, @tgl_terima date, @material int, @idref int
as
update Detail_SPR
set status = @status, TanggalDiterima = @tgl_terima, Material = @material
where idRef = @idref