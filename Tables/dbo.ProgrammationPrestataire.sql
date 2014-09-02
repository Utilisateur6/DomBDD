CREATE TABLE [dbo].[ProgrammationPrestataire]
(
[id] [uniqueidentifier] NOT NULL,
[doc] [datetime] NULL,
[datevalidation] [datetime] NULL,
[label] [nvarchar] (max) COLLATE French_CI_AS NULL,
[quantite] [int] NULL,
[prix] [decimal] (18, 2) NULL,
[benef_nom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[benef_mail] [nvarchar] (max) COLLATE French_CI_AS NULL,
[benef_mobile] [nvarchar] (max) COLLATE French_CI_AS NULL,
[benef_poids] [int] NULL,
[dateprogrammation] [datetime] NULL,
[datefinvalidite] [datetime] NULL,
[commentaires] [text] COLLATE French_CI_AS NULL,
[valide] [bit] NULL,
[voucher_ext] [bigint] NULL,
[idproduit] [bigint] NULL,
[idprestataire] [bigint] NULL,
[idformule] [bigint] NULL,
[idvoucher] [bigint] NULL,
[verif_hash] [nvarchar] (max) COLLATE French_CI_AS NULL,
[deleted] [bit] NULL,
[heurePresta] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProgrammationPrestataire] ADD CONSTRAINT [PK_ProgrammationPrestataire] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
