SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[spGeoAproximiteActV2] (@idd bigint,@idp bigint, @lt float, @lg float,@nb int)
as 
begin
declare @req nvarchar(max)
set @req ='
select distinct top ' + convert(nvarchar,@nb) + ' tp.idproduit as productId, tp.description, tp.nom as name,tp.renommage as nameRewrite, tp.title as title, tp.lieu as city,g.coderegion as regioncode,dbo.get_dist(' + convert(nvarchar,@lt) + ',' + convert(nvarchar,@lg) + ',g.latitude,g.longitude) as distance,tp.lieugeo as geocity,-1 as categoryId,-1 as mainCategoryId,tp.latitude,tp.longitude
from 
produit p 
inner join r_discipline_produit rdp on p.id = rdp.idproduit
inner join r_discipline_we rdw on rdw.iddisciplinewe = rdp.iddiscipline
inner join r_discipline_produit rdp2 on rdp2.iddiscipline = rdw.iddiscipline
inner join discipline d on d.id = rdw.iddisciplinewe
inner join produit p2 on p2.id = rdp2.idproduit
inner join t_produit tp on tp.idproduit = p2.id
inner join geoloc g on g.nommaj = tp.lieugeo
where p2.valide = 1
and d.valide = 1
and p2.passport = 0
and p2.idprestataire != 919
and p2.estCoffret = 0
and p2.id != ' + convert(nvarchar,@idp) + '
and d.id = ' + convert(nvarchar,@idd) + '
order by distance asc'
exec(@req)
end



GO
