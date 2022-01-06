USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[insert_Detail]    Script Date: 06/01/2022 21:16:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insert_Detail](@idRef int, @material int, @tgl_trm date, @status int, @pryBl int, @pryTh int, @pryKd int, @tgl_entr date)
as
insert into dbo.Detail_SPR(idRef, Material, TanggalDiterima, Status, ProyekBl, ProyekTh, ProyekKd, TanggalEntri) 
values (@idRef, @material, @tgl_trm, @status, @pryBl, @pryTh, @pryKd, @tgl_entr)
