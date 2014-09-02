SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[presta2] as 
select * from prestataire where id in (select distinct id from presta)
GO
