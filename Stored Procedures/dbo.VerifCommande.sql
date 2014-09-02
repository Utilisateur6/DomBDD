SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[VerifCommande] as
begin
select v.id as id,v.nom as nom,v.libelle as libelle, v.dateprestasouhaitee as dates, v.datefinvalidite as datef from commande c inner join lignecommande lc on c.id = lc.idcommande
inner join voucher v on v.id = lc.idvoucher
where 
v.dateprestasouhaitee is not null
and (v.dateprestaconfirmee is null
or v.dateprestarealisee is null)
and c.invalide = 0
and c.idetatcommande > 1
and c.datecommande > '2011-01-03' --h
and v.valide = 1
--and v.datefinvalidite > getdate() --app fait le tri
end
GO
