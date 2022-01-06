USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[insert_Header]    Script Date: 06/01/2022 21:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insert_Header](@proyek int, @peminta varchar(50), @tgl_mnt date, @lks_pmnt varchar(50), @tgl_entr date)
as
insert into dbo.Header_SPR(Proyek, Peminta, TanggalMinta, LokasiPeminta, TanggalEntri) 
values (@proyek, @peminta, @tgl_mnt, @lks_pmnt, @tgl_entr)
