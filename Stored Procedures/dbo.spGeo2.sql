SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[spGeo2] (@idregion int)
as begin
select tp.idproduit,tp.description,tp.nom as nom,tp.lieu as lieu,p.nouvo,min(f.prix) as mini from geoloc g inner join t_produit tp on g.nommaj = tp.lieugeo inner join produit p on tp.idproduit = p.id inner join formule f on f.idproduit = p.id inner join r_discipline_produit rdp on rdp.idproduit = p.id inner join discipline d on rdp.iddiscipline = d.id inner join univers u on d.idunivers = u.id
where p.valide = 1 and d.valide = 1 and u.valide = 1 and f.valide = 1 and p.passport = 0 and p.estcoffret = 0
and coderegion = @idregion
group by tp.idproduit,tp.description,tp.nom, p.nouvo,tp.lieu
end


GO
