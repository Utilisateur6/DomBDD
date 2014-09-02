SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* procedure GetInfoLink */
/*
input : uri * uriToC
out : id * idTy
out : type * enTy
out : @ret * tbTy
*/
CREATE procedure [dbo].[GetInfoLink]
@uriToC varchar(max), @tbTy int output, @idTy bigint output, @enTy char(2) output
as
begin
set @tbTy = -1 --def
set @idTy = -1 --def
set @tbTy = -1 --def
------------------------------------------------
if(select count(*) from redirection301 where old301Uri = @uriToC) > 0 set @tbTy = 0
if(select count(*) from t_produit where redirection301 = @uriToC) > 0 set @tbTy = 1
if(select count(*) from t_discipline where redirection301 = @uriToC) > 0 set @tbTy = 2
if(select count(*) from redirection where url = @uriToC) > 0 set @tbTy = 3
------------------------------------------------
--if(@tbTy = -1)
if(@TbTy = 0) select @idTy = idItem, @enTy = type from redirection301 where old301Uri = @uriToC
if(@tbTy = 1) select @idTy = idProduit, @enTy = 'P' from t_produit where redirection301 = @uriToC
if(@tbTy = 2) select @idTy = idDiscipline, @enTy = 'D' from t_discipline where redirection301 = @uriToC
if(@tbTy = 3) select @idTy = idItem, @enTy = type from redirection where url = @uriToC
end
GO
