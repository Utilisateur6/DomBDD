SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE procedure [dbo].[ListeContactsMailling] 
as
begin
select distinct p.societe, c.nom, c.fonction, c.telephone, c.fax, c.portable, c.email,c.envoidescommandes,min(d.id) as iddiscipline
from prestataire p, produit pt, discipline d, r_discipline_produit rdp, univers u, contact c, t_discipline td, t_univers tu
where p.id = pt.idPrestataire
and rdp.idProduit = pt.id
and rdp.idDiscipline = d.id
and d.idUnivers = u.id
and td.idDiscipline = d.id
and tu.idUnivers = u.id
and c.idPrestataire = p.id
and c.optionMailling = 1
group by p.societe, c.nom, c.fonction, c.telephone, c.fax, c.portable, c.email,c.envoidescommandes
order by  p.societe asc
end


GO
