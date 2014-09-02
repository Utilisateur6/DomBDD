SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE procedure [dbo].[spGeoProduct] (@lt float, @lg float, @rayon int, @idd int, @idu int,@pm int, @pma int, @exp nvarchar(max),@exp2 nvarchar(max),@promo int, @nouv int, @maxress int, @dFrom datetime,@dto datetime,@iddarea bigint, @regionId nvarchar(max),@zipCode nvarchar(max)) as 
begin
declare @stext nvarchar(max)
declare @textRayon nvarchar(max)
declare @textDiscipline nvarchar(max)
declare @textUnivers nvarchar(max)
declare @textMini nvarchar(max)
declare @textMaxi nvarchar(max)
declare @textExp nvarchar(max)
declare @textGroup nvarchar(max)
declare @textOrder nvarchar(max)
declare @reqtext nvarchar(max)
declare @stextO nvarchar(max)
declare @promoT nvarchar(max)
declare @nouvoT nvarchar(max)
set @nouvoT = ''
set @promoT = ''
set @reqtext = ''
set @textRayon = ''
set @textDiscipline = ''
set @textUnivers = ''
set @textMini = ''
set @textMaxi = ''
set @textExp = ''
set @textGroup = ''
set @textOrder = ''
set @stextO = ''

set @stext = ' select top 50 tp.idproduit,tp.description,tp.nom as nom,tp.lieu as lieu,p.nouvo,g.coderegion as coderegion,p.dispo as dispo '
set @stextO = ',dbo.get_dist('+Convert(varchar(50),@lt)+','+Convert(varchar(50),@lg)+',g.latitude,g.longitude) as dist'

if(@rayon > 9 and @lt != -1 and @lg != -1) set @stext = @stext + @stextO
set @stext = @stext + ',min(f.prix) as mini from '

--if(@rayon > 9) set @stext = @stext + ' geoloc g inner join t_produit tp on g.nomMaj = tp.lieugeo' --hack
--else set @stext = @stext + ' t_produit tp '
set @stext = @stext + ' geoloc g inner join t_produit tp on g.nomMaj = tp.lieugeo' --hack

set @stext = @stext + ' inner join produit p on tp.idproduit = p.id
inner join formule f on f.idproduit = p.id
inner join r_discipline_produit rdp on rdp.idproduit = p.id
inner join discipline d on rdp.iddiscipline = d.id
inner join t_discipline td on d.id = td.iddiscipline
inner join univers u on d.idunivers = u.id'

if(@dFrom is not null or @dTo is not null)
begin
	set @stext = @stext + ' inner join dates d1 on d1.idproduit = p.id '
end

set @stext = @stext + '
where p.valide = 1
and u.valide = 1
and d.valide = 1
and f.valide = 1 '
--and p.estcoffret = 0
--and p.passport = 0 '

if(@regionId is not null and len(@regionId) > 0 and @regionId != '0' and @regionId != '-1')
set @stext = @stext + ' and g.coderegion = ''' + @regionId + ''''

--if(@zipCode is not null and len(@zipCode) > 0 and @rayon < 9)
--	if(len(@zipCode) = 2)
--		set @stext = @stext + ' and g.codepostal like ''' + @zipCode + '%'''
--	else
--		set @stext = @stext + ' and g.codepostal = ''' + @zipCode + ''''

if(@dFrom is not null)
set @stext = @stext + ' and d1.du >= ''' + Convert(varchar(60),@dFrom) + ''' '

if(@dTo is not null)
set @stext = @stext + ' and d1.au <= ''' + Convert(varchar(60),@dTo) + ''' '

if(@rayon > 9)
begin
	if(@zipCode is not null and len(@zipCode) > 0)
	begin		
		if(len(@zipCode) = 2)
			set @textRayon = ' and g.nomMaj in (select nomMaj from geoloc where g.codepostal like ''' + @zipCode + '%'')'
		else
			set @textRayon = ' and g.nomMaj in (select geo2.nomMaj from geoloc geo1, geoloc geo2 where geo1.codepostal=''' + @zipCode + ''' and dbo.get_dist(geo1.latitude,geo1.longitude,geo2.latitude,geo2.longitude) < ' + convert(nvarchar(max),@rayon)
	end
	else
	begin	
		if(@lt != -1 and @lg != -1)
			set @textRayon = ' and g.nomMaj in (select nomMaj from geoloc where dbo.get_dist(' +Convert(varchar(50),@lt)+',' +Convert(varchar(50),@lg)+ ', latitude,longitude) < ' + Convert(varchar(50),@rayon) + ') '
	end
end

if(@idd != -1)
set @textDiscipline = ' and d.id=' +Convert(varchar(50),@idd) + ' '

if(@idu != -1)
set @textUnivers = ' and u.id=' + Convert(varchar(50),@idu) + ' '

if(@pm > 0)
set @textMini = ' and f.prix > ' + Convert(varchar(50),@pm) + ' '

if(@pma > 0)
set @textMaxi = ' and f.prix < ' + Convert(varchar(50),@pma) + ' '

if(@promo > 0)
set @promoT = ' and p.id in(select distinct idproduit from formule where id in (select id from formule where (debutrp<=getdate() and finrp>=getdate()) or (debutrs<=getdate() and finrs>=getdate()) union select idformule from promodatee)) '

if(@nouv > 0)
set @nouvoT = ' and p.nouvo = 1 '

if(@iddarea > 0)
set @textRayon = @textRayon + ' and p.iddepartement=' + convert(nvarchar(4), @iddarea)

if(len(@exp) > 7)
set @textExp = @exp + @exp2
--if(@pm > 0 or @pma > 0) 
set @textGroup = ' group by tp.description,tp.idproduit,tp.nom, tp.lieu,p.nouvo,g.coderegion,p.dispo '
if(@rayon > 9 and @lt != -1 and @lg != -1)
set @textGroup = @textGroup + ',dbo.get_dist('+Convert(varchar(50),@lt)+ ','+Convert(varchar(50),@lg)+ ',g.latitude,g.longitude)'

if(@rayon > 9 and @lt != -1 and @lg != -1) set @textOrder = ' order by dist asc'

set @reqtext = @stext + @textDiscipline + @textUnivers + @textMini + @textMaxi+@nouvoT + @textExp + @textRayon+@promoT+@textGroup + @textOrder
---print(@reqtext)
--select @reqtext
exec(@reqtext)
end










GO
