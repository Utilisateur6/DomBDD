SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[spGetContactCartList](@mId int, @from datetime, @to datetime, @eId bigint, @pId bigint, @cId bigint, @fromR datetime, @toR datetime)
as
begin
declare @req nvarchar(max)
set @req = 'select top 50 * from paniercontact where 1=1'
if(@mId is not null and @mId > 0)
	set @req = @req + ' and motifId=' + convert(nvarchar(max),@mId)
if(@from is not null)
	set @req = @req + ' and date >=''' + convert(nvarchar(max),@from) + ''''
if(@to is not null)
	set @req = @req + ' and date <=''' + convert(nvarchar(max),@to) + ''''
if(@eId is not null and @eId >0)
	set @req = @req + ' and empId=' + convert(nvarchar(max),@eId)
if(@pId is not null and @pId >0)
	set @req = @req + ' and idprospect=' + convert(nvarchar(max),@pId)
if(@cId is not null and @cId >0)
	set @req = @req + ' and idcust=' + convert(nvarchar(max),@cId)
if(@fromR is not null)
	set @req = @req + ' and daterappel >=''' + convert(nvarchar(max),@fromR) + ''''
if(@toR is not null)
	set @req = @req + ' and daterappel <=''' + convert(nvarchar(max),@toR)
set @req = @req + ' order by id desc'
exec(@req)
end

GO
