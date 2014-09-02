CREATE TABLE [dbo].[CommissionHistorique]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[commission_old] [decimal] (18, 7) NULL,
[commission_new] [decimal] (18, 7) NULL,
[idemploye] [bigint] NULL,
[idemploye2] [bigint] NULL,
[idformule] [bigint] NULL,
[idproduit] [bigint] NULL,
[idprestataire] [bigint] NULL,
[prix_old] [decimal] (18, 7) NULL,
[prix_new] [decimal] (18, 7) NULL,
[empname] [nvarchar] (max) COLLATE French_CI_AS NULL,
[prestaname] [nvarchar] (max) COLLATE French_CI_AS NULL,
[formulename] [nvarchar] (max) COLLATE French_CI_AS NULL,
[produitname] [nvarchar] (max) COLLATE French_CI_AS NULL,
[iddiscipline] [bigint] NULL,
[idunivers] [bigint] NULL,
[disciplinename] [nvarchar] (max) COLLATE French_CI_AS NULL,
[universname] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommissionHistorique] ADD CONSTRAINT [PK_CommissionHistorique] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
