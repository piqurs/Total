USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Get_Pro_ByIdRef]    Script Date: 06/01/2022 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Get_Pro_ByIdRef] @h_proyek int
AS
SELECT *
FROM proyek WHERE Proyek = @h_Proyek