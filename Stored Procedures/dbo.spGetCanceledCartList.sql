SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[spGetCanceledCartList](@mId int,@sR bit, @pId bigint,@cId bigint,@from datetime, @to datetime)
as
begin
declare @req nvarchar(max)
set @req = 'select * from panierannulation where 1=1'
if(@mId is not null and @mId > 0)
	set @req = @req + ' and causeAnnulation=' + convert(nvarchar(max),@mId)
if(@sR is not null)
	set @req = @req + ' and souhaiteRappel=' + convert(nvarchar,@sR)
if(@pId is not null and @pId > 0)
	set @req = @req + ' and idprospect=' + convert(nvarchar(max),@pId)
if(@cId is not null and @cId > 0)
	set @req = @req + ' and iclient=' + convert(nvarchar(max),@cId)
if(@from is not null)
	set @req = @req + ' and date>=''' + convert(nvarchar(max),@from) + ''''
if(@to is not null)
	set @req = @req + ' and date<=''' + convert(nvarchar(max),@to) + ''''
exec(@req)
end
GO
