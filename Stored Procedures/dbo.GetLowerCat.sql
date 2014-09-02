SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/* procedure GetLowerCat */
/*
input : idEntite : idI
input : typeEntite : tyI
out : idEntiteLevelDown : idO
out : typeEntiteLevelDown : tyO
out : availability : avO
*/
CREATE procedure [dbo].[GetLowerCat]
@idI bigint, @tyI char(1), @idO bigint output, @tyO char(1) output,@avO bit output
as
begin
set @idO = -1
set @avO = 0
--nivo le plus bas : produit
if(@tyI = 'p') select @idO = d.id, @tyO = 'd', @avO = d.valide from produit p inner join r_discipline_produit rdp on rdp.idProduit = p.id inner join discipline d on d.id = rdp.idDiscipline where p.id = @idI
if(@tyI = 'f') select @idO = d.id, @tyO = 'd', @avO = d.valide from produit p inner join r_discipline_produit rdp on rdp.idProduit = p.id inner join discipline d on d.id = rdp.idDiscipline where p.id = @idI
if(@tyI = 'd') select @idO = u.id, @tyO = 'u', @avO = u.valide from univers u inner join discipline d on d.idUnivers = u.id where d.id = @idI

--nivo sup : Univers
if(@tyI = 'u') select @idO = -1, @tyO = 'r', @avO = 0
end
GO
