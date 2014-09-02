SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[spGeoAproximiteAutreV2] (@idu bigint,@idd bigint, @lt float, @lg float,@idp bigint,@nb int)
as
begin
declare @req nvarchar(max)
set @req = 'select distinct top ' + convert(nvarchar,@nb) + ' tp.idproduit as productId, tp.description, tp.nom as name,tp.renommage as nameRewrite, tp.title as title, tp.lieu as city,g.coderegion as regioncode,dbo.get_dist(' + convert(nvarchar,@lt)+ ',' + convert(nvarchar,@lg) + ',g.latitude,g.longitude) as distance,tp.lieugeo as geocity,-1 as categoryId,-1 as mainCategoryId,tp.latitude,tp.longitude
from geoloc g inner join t_produit tp on g.nommaj = tp.lieugeo
inner join produit p on tp.idproduit = p.id
inner join formule f on f.idproduit = p.id
inner join r_discipline_produit rdp on rdp.idproduit = p.id
inner join discipline d on d.id = rdp.iddiscipline
inner join univers u on u.id = d.idunivers
where p.valide = 1
and d.valide = 1
and u.valide = 1
and u.id = ' + convert(nvarchar,@idu) + '
and p.passport = 0
and d.id != ' + convert(nvarchar,@idd) + '
and p.idprestataire != 919
and p.estCoffret = 0
and p.id != ' + convert(nvarchar,@idp) + '
order by distance asc'
exec(@req)
end





GO
