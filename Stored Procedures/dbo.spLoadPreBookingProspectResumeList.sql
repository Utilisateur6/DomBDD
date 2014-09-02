SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[spLoadPreBookingProspectResumeList](@date datetime)
as
begin
select prp.id, prp.dateaction, prp.status, isnull(prp.idprospect,-1) as idprospect, isnull(prp.idclient,-1) as idclient,pa.societe,prp.valide
from prereservationprospect prp inner join formule f on prp.idformule = f.id
inner join produit p on p.id = f.idproduit inner join prestataire pa on pa.id = p.idprestataire
order by prp.id
end
GO
