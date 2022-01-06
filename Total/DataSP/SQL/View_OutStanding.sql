create  view dbo.View_OutStanding
as
select distinct inv.invno, inv.inv, inv.invthn, customername, cust.CustomerID, TOPDays, ThnEnt , BlnEnt , TglEnt,  Currency, InvAmtIDR, OpenAmtIDR, Remark, 
IsActive, (right('000' + cast(inv.invno as varchar(10)), 4) + '-' + inv.inv + '-' + cast(inv.invthn as varchar)) as NoInvoice,
(cast (thnent as varchar) + '-' + right('0' + cast(BlnEnt as varchar(10)), 2) + '-' + right('0' + cast(TglEnt as varchar(10)), 2)) as TglInvoice, Guid
from berca.dbo.invoice inv
inner join berca.dbo.customer cust on inv.CustomerID = cust.CustomerID