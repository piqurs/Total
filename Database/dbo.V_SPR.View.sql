USE [Total]
GO
/****** Object:  View [dbo].[V_SPR]    Script Date: 06/01/2022 21:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   view [dbo].[V_SPR] as (
select CONCAT(RIGHT('0000'+CAST(idref AS VARCHAR(4)),4), '-', proyekkd, '-', Right('00'+CAST(proyekbl as varchar(2)), 2), '-', proyekTh) as KodeSPR, 
idref, proyekkd, proyekbl, proyekth,
peminta, TanggalMinta, LokasiPeminta, LokasiProyek, case when status = 0 then 'Belum Disetujui' else 'Disetujui' end as Status, m.material as Material, 
case when TipeMaterial = 0 then 'Pokok' else 'Non Pokok' end as TipeMaterial
from dbo.Detail_SPR d
inner join dbo.Header_SPR h on h.Proyek = d.idRef
inner join dbo.Proyek p on p.Proyek = h.id
inner join dbo.Material m on m.id = d.Material
)
GO
