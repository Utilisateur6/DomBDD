SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[statRemise] (@code int) as
begin
select 
sum((lc.prixUnitaire - lc.remisePresta - lc.remiseSpd) * lc.tauxCommission * lc.quantite) as MargeHorsAssuranceEtRemise,
sum((((lc.prixUnitaire - lc.remisePresta - lc.remiseSpd) * lc.tauxCommission) + lc.montantAssurance)*lc.quantite) as MargeAssuranceEtRemise,
c.montantTTC as MontantCommande,sum(lc.remisespd * lc.quantite) as MontantRemise,
c.id as idCommande
from lignecommande lc 
inner join commande c on lc.idcommande = c.id
inner join remise r on (c.idremise = r.id or c.idpassport = r.id)
where c.invalide = 0
and c.idetatcommande > 1
and c.idpaiement is not null
and r.permanente = 1
and (c.idremise is not null or c.idpassport is not null)
and r.id = @code
group by c.id,c.montantTTC
order by c.id asc
end
GO
