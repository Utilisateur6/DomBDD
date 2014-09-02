SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE proc [dbo].[VentesComptables] (@debut datetime, @fin datetime)
as
begin
	select f.datefacture, cv.datePaiement as ctrlcv, cpp.datePaiement as crtlcpp, f.id as idfacture, pr.id as idprestataire, societe, c.modePaiement, lc.*, v.dateFinValidite as VoucherDateFinValidite, v.datePrestaRealisee as VoucherDatePrestaRealisee
	  into #temp1
	  from lignecommande lc
		inner join commande c on lc.idcommande=c.id
		inner join facture f on f.id=c.idfacture
		left join voucher v on lc.idvoucher=v.id
		left join controlevoucher cv on v.idcontrolevoucher=cv.id
		left join controlepaiementprestataire cpp on lc.idcontrolepaiementprestataire=cpp.id
		left join formule fo on fo.id=lc.idformule
		left join produit p on fo.idproduit=p.id
		left join prestataire pr on pr.id=p.idprestataire
	where quantite>0
	  and f.datefacture between @debut and @fin
	order by id

	select loc.idLigneCommande as id, sum((loc.quantite*loc.prixUnitaire) - loc.remisePresta - loc.remiseSpd) as somme 
	  into #temp2
	  from ligneoptioncommande loc 
		inner join lignecommande lc on lc.id=loc.idlignecommande
		inner join commande c on lc.idcommande=c.id
		inner join facture f on f.id=c.idfacture
		left join voucher v on lc.idvoucher=v.id
		left join controlevoucher cv on v.idcontrolevoucher=cv.id
		left join controlepaiementprestataire cpp on lc.idcontrolepaiementprestataire=cpp.id
	 where loc.quantite>0
	 group by loc.idLigneCommande

	select t1.datefacture, t1.ctrlcv, t1.crtlcpp, idcommande, idfacture, idformule, idprestataire, societe, idoptionproduit, (quantite*(prixUnitaire-remiseSpd-remisePresta)) + ISNULL(somme, 0) as prixTTC, ((quantite*(prixUnitaire-remiseSpd-remisePresta)) + ISNULL(somme, 0))/(1+tauxTva) as mntHt, ((quantite*(prixUnitaire-remiseSpd-remisePresta)) + ISNULL(somme, 0))*(1-1/(1+tauxTva)) as mntTva, tauxTva, montantPort, montantAssurance, estMandataire, tauxCommission, modePaiement, idvoucher, VoucherDateFinValidite, VoucherDatePrestaRealisee
	  into #temp3
	  from #temp1 t1 left join #temp2 t2 on t1.id=t2.id
	 where tauxReservation=1
	union all
	select t1.datefacture, t1.ctrlcv, t1.crtlcpp, idcommande, idfacture, idformule, idprestataire, societe, idoptionproduit, 
( quantite*(((prixUnitaire-remisePresta)*tauxReservation)-remiseSpd)) + ISNULL(somme, 0) as prixTTC,
( quantite*(((prixUnitaire-remisePresta)*tauxReservation)-remiseSpd) + ISNULL(somme, 0)) /(1+tauxTva) as mntHt,
( quantite*(((prixUnitaire-remisePresta)*tauxReservation)-remiseSpd) + ISNULL(somme, 0)) *(1-1/(1+tauxTva)) as mntTva,
 tauxTva, montantPort, montantAssurance, estMandataire, tauxCommission, modePaiement, null as idvoucher, null as VoucherDateFinValidite, null as VoucherDatePrestaRealisee
	  from #temp1 t1 left join #temp2 t2 on t1.id=t2.id
	 where tauxReservation<>1
	 order by idcommande

	select * from #temp3

	drop table #temp1, #temp2, #temp3
end
GO
