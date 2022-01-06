USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Get_Mtrl_ByID]    Script Date: 06/01/2022 21:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Get_Mtrl_ByID]
@id int
as 
select *, case when TipeMaterial = 0 then 'Pokok' else 'Non Pokok' end as Tipe_Material from dbo.Material
where id = @id