SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[spGeoAproximite] (@idd bigint, @lt float, @lg float,@idp bigint)
as
begin
select distinct top 3 tp.idproduit, tp.description, tp.nom as nom,tp.renommage as renommage, tp.title as title, tp.lieu as lieu,g.coderegion as coderegion,dbo.get_dist(@lt,@lg,g.latitude,g.longitude) as dist,tp.lieugeo,-1 as iddisc,-1 as idunivers,tp.latitude,tp.longitude
from geoloc g inner join t_produit tp on g.nommaj = tp.lieugeo
inner join produit p on tp.idproduit = p.id
inner join formule f on f.idproduit = p.id
inner join r_discipline_produit rdp on rdp.idproduit = p.id
inner join discipline d on d.id = rdp.iddiscipline
inner join univers u on u.id = d.idunivers
where p.valide = 1
and u.valide = 1
and d.valide = 1
and d.id = @idd
and p.passport = 0
and p.estCoffret = 0
and p.idprestataire != 919
and p.id != @idp
and p.dispo = 1
order by dist asc
end


GO
