USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Get_All_Mtrl]    Script Date: 06/01/2022 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Get_All_Mtrl]
AS
select *, case when TipeMaterial = 0 then 'Pokok' else 'Non Pokok' end as Tipe_Material
from dbo.Material
GO;