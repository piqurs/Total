USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Get_Dtl_ByIdRef]    Script Date: 06/01/2022 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Get_Dtl_ByIdRef] @h_proyek int
AS
SELECT *, case when Status = 0 then 'Belum Disetujui' else 'Disetujui' end as Tipe_Status
FROM Detail_SPR WHERE idref = @h_Proyek