SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE procedure [dbo].[AgCommand] @date1 datetime, @date2 datetime
as
begin
select distinct v.dateprestaconfirmee as DatePrestation, c.datecommande as DateCommande, c.id as idCommande, pr.societe as Presta, (lc.quantite * lc.prixUnitaire) as MontantTTC, (lc.quantite * lc.prixUnitaire)-((lc.quantite * lc.prixunitaire) / (1 + (t.valeur/100)))  as TVA,t.valeur as tTVA, ((lc.quantite * lc.prixunitaire) / (1 + (t.valeur/100))) as MontantHT, (lc.quantite * lc.prixUnitaire) * lc.tauxCommission * 1.196 as Commission,pr.id as idpresta
from
lignecommande lc inner join voucher v on lc.idvoucher = v.id
				 inner join commande c on c.id = lc.idcommande
				 inner join formule f on f.id = lc.idformule
				 inner join produit p on p.id = f.idproduit
				 inner join prestataire pr on pr.id = p.idprestataire

--mod 13/06/2011
				 inner join formule f1 on f1.id = lc.formuleduo
				 inner join produit p1 on p1.id = f1.idproduit
				 inner join tva t on t.id = p1.idtva
where 
v.id = lc.idvoucher and c.invalide = 0
and v.dateprestaconfirmee is not null
and (v.dateprestaconfirmee between @date1 and @date2 or v.dateprestarealisee between @date1 and @date2)
--and c.datecommande between @date1 and @date2
and p1.id in (
--select id from produit where duo=1
select p.id from univers u,produit p inner join r_discipline_produit rdp on p.id = rdp.idproduit
inner join discipline d on d.id = rdp.iddiscipline
where u.id = d.idunivers
and u.id = 9
)
--group by c.datecommande, c.id, (lc.quantite * lc.prixUnitaire), lc.tauxtva, ((lc.quantite * lc.prixUnitaire) / (1+lc.tauxtva)),pr.societe
--order by c.datecommande
order by v.dateprestaconfirmee ,c.datecommande
end



GO
