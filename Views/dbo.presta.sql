SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[presta] as 

select pr.*
from formule f inner join produit p on f.idproduit=p.id
inner join r_discipline_produit r on p.id=r.idproduit
inner join discipline d on d.id=r.iddiscipline
inner join prestataire pr on pr.id=p.idprestataire
where prix>399
and idunivers in (2,4)
and p.valide=1
and pr.valide=1


GO
