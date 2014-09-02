SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[prepacommande] as
begin
--select distinct c.id as id, a.nom as nom, a.societe as societe, a.adresse1 as adresse1, a.adresse2 as adresse2, a.codepostal as codepostal,a.ville as ville, py.nom as pays, c.datecommande as datecommande,count(lc.id) as nblc, cl.id as idc,cl.nom as nomc, cl.prenom as prenomc, cl.mobile as mobilec,cl.telephone as telc
--from lignecommande lc inner join commande c on lc.idcommande = c.id inner join client cl on c.idclient = cl.id
--inner join adresse a on c.idadresselivraison = a.id
--inner join pays py on py.id = a.idpays
--where lc.idoptionproduit is not null and lc.quantite <> 0 and idetatcommande > 2 and c.preparee = 0 and c.invalide = 0  and lc.idoptionproduit <> 30
--and lc.quantite > 0
--group by c.id, a.nom, a.societe, a.adresse1, a.adresse2, a.codepostal,a.ville, py.nom, c.datecommande,cl.nom,cl.prenom,cl.mobile,cl.telephone,cl.id
--order by c.id desc
select distinct c.id as id, a.nom as nom, a.societe as societe, a.adresse1 as adresse1, a.adresse2 as adresse2, a.codepostal as codepostal,a.ville as ville, py.nom as pays, c.datecommande as datecommande,count(lc.id) as nblc, cl.id as idc,cl.nom as nomc, cl.prenom as prenomc, cl.mobile as mobilec,cl.telephone as telc
from lignecommande lc inner join commande c on lc.idcommande = c.id inner join client cl on c.idclient = cl.id
inner join adresse a on c.idadresselivraison = a.id
inner join pays py on py.id = a.idpays
where ((lc.idoptionproduit is not null  and 
lc.idoptionproduit <> 30) or (lc.idformule=22916 and lc.quantite > 0))
and lc.quantite <> 0 and idetatcommande > 2 and c.preparee = 0 and c.invalide = 0 

group by c.id, a.nom, a.societe, a.adresse1, a.adresse2, a.codepostal,a.ville, py.nom, c.datecommande,cl.nom,cl.prenom,cl.mobile,cl.telephone,cl.id
order by c.id desc
end
GO
