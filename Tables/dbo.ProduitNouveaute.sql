CREATE TABLE [dbo].[ProduitNouveaute]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[idproduit] [bigint] NULL,
[iddiscipline] [bigint] NULL,
[idunivers] [bigint] NULL,
[dateFrom] [datetime] NULL,
[dateTo] [datetime] NULL,
[ordre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProduitNouveaute] ADD CONSTRAINT [PK_ProduitNouveaute] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
