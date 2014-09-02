SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vMaxDateFacture] as 
select max(datefacture) as date, idclient from facture f
where type='F'
group by idclient
GO
