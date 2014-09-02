SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--use spd
create procedure [dbo].[emailsComp]
as 
begin
select cl.nom as nom,cl.prenom as prenom, cl.mobile as mobile,cl.login as email,'CLIENT' as pro
from client cl
where inscriptionnewsletter=1
union 
select v.nom as nom, v.prenom as prenom, v.mobile as mobile, v.email as email,'VOUCHER' as pro
from voucher v
where valide = 1
union 
select null as nom, null as prenom, null as mobile, n.email as email, 'NEWSLETTER' as pro
from newsletter n
where n.idclient is null
union 
select null as nom, null as prenom, null as mobile, p.emailFilleul as email,'PARRAINAGE' as pro
from parrainage p
end
GO
