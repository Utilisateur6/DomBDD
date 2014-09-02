SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ListeFichesUnivers] as
select 
p.id, tp.nom, p.statusSD, p.whoWork,p.valsylvie
from 
produit p, t_produit tp, discipline d, r_discipline_produit rdp, univers u
where p.id = tp.idProduit
and p.id = rdp.idProduit
and d.id = rdp.idDiscipline
and u.id = d.idUnivers
and u.id = 9
GO
