SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE procedure [dbo].[shnb] as
begin
declare @a int
declare @aa int
declare @aaa int
declare @aaaa int
declare @aaaaa int
select @a = count(*) from prixdatee
select @aa = count(*) from produit where idsh is not null and sh=1
select @aaa = count(*) from formule f inner join produit p on f.idproduit = p.id where p.idsh is not null and sh=1
select @aaaa = count(*) from t_formule tf inner join formule f on tf.idformule = f.id inner join produit p on f.idproduit = p.id where p.idsh is not null and p.sh=1
select @aaaaa = count(*) from t_produit tp inner join produit p on tp.idproduit = p.id where p.idsh is not null and p.sh=1

print 'SH ITEM --------'
print 'Nb prix datee : ' + Cast(@a as varchar)
print 'Nb Produit : ' + Cast(@aa as varchar)
print 'Nb Formule : ' + Cast(@aaa as varchar)
print 'Nb T_PRODUIT : ' + Cast(@aaaaa as varchar)
print 'Nb T_FORMULE : ' + Cast(@aaaa as varchar)
print '---------------'
end
GO
