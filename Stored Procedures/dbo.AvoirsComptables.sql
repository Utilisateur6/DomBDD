SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[AvoirsComptables] (@debut datetime, @fin datetime)
as
begin
	select f.id, f.idCommande, f.dateFacture, pr.id, pr.societe, lf.idFormule, lf.idoptionproduit, libelleVente, quantite, tauxRemise, tauxTva, mntttc, mnttva, mntht, mntcomplementaire, prixunitaire, lf.type
	  from lignefacture lf
		inner join facture f on f.id=lf.idfacture
		left join formule fo on fo.id=lf.idformule
		left join produit p on fo.idproduit=p.id
		left join prestataire pr on pr.id=p.idprestataire
	where quantite>0
	  and f.datefacture between @debut and @fin
	  and f.type='A'
	order by f.id
end
GO
