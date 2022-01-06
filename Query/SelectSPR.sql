USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[SelectSPR]    Script Date: 06/01/2022 21:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SelectSPR] @SPR varchar(30)
AS
SELECT * FROM V_SPR WHERE KodeSPR like '%' + @SPR + '%'