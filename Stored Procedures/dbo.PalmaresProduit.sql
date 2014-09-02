SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[PalmaresProduit] 
	@langue varchar(2),
	@debut DateTime,
	@fin DateTime,
	@idd bigint,
	@idu bigint
as 
begin
	declare @r nvarchar(max)

set @r = '
	select distinct sum(quantite) as somme,sum((quantite * (l.prixunitaire - l.remisePresta - l.remiseSpd)) + l.montantAssurance + l.montantPort) as montant, p.id as idproduit, f.id as idformule
	  into #temp1
	  from lignecommande l 
	 inner join commande c on l.idcommande=c.id 
	 inner join formule f on f.id=l.idformule 
	 inner join produit p on p.id=f.idproduit '

declare @inj nvarchar(max)
declare @cond nvarchar(max)
set @cond = ''
set @inj = ''

if(@idd != -1 or (@idd !=-1 and @idu != -1))
begin
set @inj = ' inner join r_discipline_produit rdp on rdp.idproduit = p.id '
set @cond = ' and rdp.iddiscipline = ' + convert(nvarchar,@idd)
end
else if(@idu != -1 and @idd = -1)
begin
set @inj = ' inner join r_discipline_produit rdp on rdp.idproduit = p.id inner join discipline d on d.id = rdp.iddiscipline '
set @cond = ' and d.idunivers = ' + convert(nvarchar,@idu)
end 

set @r = @r + @inj + '
	 where c.datePaiement is not null
	   and c.datecommande between ''' + Convert(nvarchar,Convert(datetime,@debut)) + ''' and ''' + Convert(nvarchar,Convert(datetime,@fin)) + '''  ' + @cond + '
	 group by p.id, f.id  
	'

set @r = @r +' 
   select somme, #temp1.idproduit, tp.nom, tf.description,montant, #temp1.idformule
	from #temp1
	left join t_formule tf on #temp1.idformule=tf.idformule 
	left join t_produit tp on #temp1.idproduit=tp.idproduit 
	and tp.langue=''fr''
	and tf.langue=''fr''
	order by somme desc
	drop table #temp1 '
exec(@r)
end
GO
