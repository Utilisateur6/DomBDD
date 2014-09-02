SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE procedure [dbo].[ducgsc] (@id bigint) as
begin
select distinct c.id, upper(a.nom) as nom,upper(a.societe) as societe,upper(a.adresse1) as adresse1, upper(a.adresse2) as adresse2,a.codepostal as codepostal,upper(a.ville) as ville from client c
inner join commande cm on c.id = cm.idclient
inner join lignecommande lc on cm.id = lc.idcommande
inner join formule f on lc.idformule = f.id
inner join adresse a on cm.idadresselivraison = a.id
where f.id = @id
and cm.invalide = 0
and cm.idetatcommande > 3
and c.id not in (select idc from contact_dg)
end



GO
