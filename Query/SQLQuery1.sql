select max(idRef) as idRef from dbo.Detail_SPR
where proyekbl = 12 and proyekth = 2021

create or alter view dbo.V_SPR as (
select CONCAT(RIGHT('0000'+CAST(idref AS VARCHAR(4)),4), '-', proyekkd, '-', Right('00'+CAST(proyekbl as varchar(2)), 2), '-', proyekTh) as KodeSPR, 
idref, proyekkd, proyekbl, proyekth,
peminta, TanggalMinta, LokasiPeminta, LokasiProyek, case when status = 0 then 'Belum Disetujui' else 'Disetujui' end as Status, m.material as Material, 
case when TipeMaterial = 0 then 'Pokok' else 'Non Pokok' end as TipeMaterial
from dbo.Detail_SPR d
inner join dbo.Header_SPR h on h.Proyek = d.idRef
inner join dbo.Proyek p on p.Proyek = h.id
inner join dbo.Material m on m.id = d.Material
)


select * from dbo.V_SPR

create procedure Get_Max_Ref
@proyekbl int,
@proyekth int
as 
Select max(idRef) as idRef
from dbo.Detail_SPR
where ProyekBl = 12 and ProyekTh = 2021
