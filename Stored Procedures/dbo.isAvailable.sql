SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* procedure isAvailable */
/*
input : idProd * idI
input : typeProd * tyI
out : available * av
*/

CREATE procedure [dbo].[isAvailable]
@idI bigint, @tyI char(1), @av bit output
as 
begin
set @av = 0
if(@tyI = 'u') select @av = valide from univers where id = @idI
if(@tyI = 'd') select @av = valide from discipline where id = @idI
if(@tyI = 'p') select @av = valide from produit where id = @idI
end

GO
