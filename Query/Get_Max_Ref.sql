USE [Total]
GO
/****** Object:  StoredProcedure [dbo].[Get_Max_Ref]    Script Date: 06/01/2022 21:15:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Get_Max_Ref]
@proyekbl int,
@proyekth int
as 
Select max(idRef) as idRef
from dbo.Detail_SPR
where ProyekBl = @proyekbl and ProyekTh = @proyekth