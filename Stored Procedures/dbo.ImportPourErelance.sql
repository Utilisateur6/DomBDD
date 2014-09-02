SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ImportPourErelance]
	@id bigint
as
begin
	insert into lignesimport (donnees, idimport, email, dateenvoi, datevisualisation, erreur, ttl)
	select '', @id, email, null, null, null, 5 from spd.dbo.newsletter
end
GO
