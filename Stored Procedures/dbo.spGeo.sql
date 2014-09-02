SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE procedure [dbo].[spGeo] (@lt float, @lg float, @rayon int, @idd int, @idu int,@pm int, @pma int, @exp nvarchar(max),@exp2 nvarchar(max),@promo int, @nouv int,@maxress int) as 
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

set @stext = ' select tp.idproduit,tp.description,tp.nom as nom,tp.lieu as lieu,p.nouvo,g.coderegion as coderegion '
set @stextO = ',dbo.get_dist('+Convert(varchar(50),@lt)+','+Convert(varchar(50),@lg)+',g.latitude,g.longitude) as dist'

if(@rayon > 9) set @stext = @stext + @stextO
set @stext = @stext + ',min(f.prix) as mini from '

--if(@rayon > 9) set @stext = @stext + ' geoloc g inner join t_produit tp on g.nomMaj = tp.lieugeo' --hack
--else set @stext = @stext + ' t_produit tp '
set @stext = @stext + ' geoloc g inner join t_produit tp on g.nomMaj = tp.lieugeo' --hack

set @stext = @stext + ' inner join produit p on tp.idproduit = p.id
inner join formule f on f.idproduit = p.id
inner join r_discipline_produit rdp on rdp.idproduit = p.id
inner join discipline d on rdp.iddiscipline = d.id
inner join t_discipline td on d.id = td.iddiscipline
inner join univers u on d.idunivers = u.id
where p.valide = 1
and u.valide = 1
and d.valide = 1
and f.valide = 1
and p.estcoffret = 0
and p.passport = 0 '
print @stext

--if(@rayon > 9)
--set @textRayon = ' and g.nomMaj in (select nomMaj from geoloc where dbo.get_dist(' +Convert(varchar(50),@lt)+',' +Convert(varchar(50),@lg)+ ', latitude,longitude) < ' + Convert(varchar(50),@rayon) + ') '

if(@idd != -1)
set @textDiscipline = ' and d.id = ' +Convert(varchar(50),@idd) + ' '

if(@idu != -1)
set @textUnivers = ' and u.id = ' + Convert(varchar(50),@idu) + ' '

if(@pm > 0)
set @textMini = ' and f.prix > ' + Convert(varchar(50),@pm) + ' '

if(@pma > 0)
set @textMaxi = ' and f.prix < ' + Convert(varchar(50),@pma) + ' '

if(@promo > 0)
set @promoT = ' and p.id in(select distinct idproduit from formule where id in (select id from formule where (debutrp<=getdate() and finrp>=getdate()) or (debutrs<=getdate() and finrs>=getdate()) union select idformule from promodatee)) '

if(@nouv > 0)
set @nouvoT = ' and p.nouvo = 1 '

if(len(@exp) > 7)
set @textExp = @exp + @exp2
--if(@pm > 0 or @pma > 0) 
set @textGroup = ' group by tp.description,tp.idproduit,tp.nom, tp.lieu,p.nouvo,g.coderegion '
if(@rayon > 9)
set @textGroup = @textGroup + ',dbo.get_dist('+Convert(varchar(50),@lt)+ ','+Convert(varchar(50),@lg)+ ',g.latitude,g.longitude)'

set @reqtext = @stext + @textDiscipline + @textUnivers + @textMini + @textMaxi+@nouvoT + @textExp + @textRayon+@promoT+@textGroup + @textOrder
--print(@reqtext)
--select @reqtext
exec(@reqtext)
end

GO
