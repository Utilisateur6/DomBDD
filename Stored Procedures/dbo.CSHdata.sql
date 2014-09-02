SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[CSHdata]
as 
begin
delete from t_formule where idformule in(select id from formule where idproduit not in(select p.id from produit p inner join formule f on p.id = f.idproduit inner join prixdatee pxd on pxd.idformule = f.id) and issh = 1 and idpsh is not null)
delete from formule where id in (select id from formule where idproduit not in(select p.id from produit p inner join formule f on p.id = f.idproduit inner join prixdatee pxd on pxd.idformule = f.id) and issh = 1 and idpsh is not null)
delete from r_discipline_produit where idproduit not in(select p.id from produit p inner join formule f on p.id = f.idproduit inner join prixdatee pxd on pxd.idformule = f.id and p.sh = 1 and p.idsh is not null)
delete from t_produit where idproduit not in (select distinct p.id from produit p inner join formule f on p.id = f.idproduit inner join prixdatee pxd on pxd.idformule = f.id and p.sh = 1 and p.idsh is not null)
delete from produit where id not in(select distinct p.id from produit p inner join formule f on p.id = f.idproduit
inner join prixdatee pxd on pxd.idformule = f.id) and sh = 1 and idsh is not null
end
GO
