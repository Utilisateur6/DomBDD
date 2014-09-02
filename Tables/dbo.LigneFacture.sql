CREATE TABLE [dbo].[LigneFacture]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idFacture] [bigint] NOT NULL,
[idFormule] [bigint] NULL,
[idOptionProduit] [bigint] NULL,
[libelleVente] [text] COLLATE French_CI_AS NOT NULL,
[quantite] [int] NOT NULL,
[tauxRemise] [decimal] (18, 4) NOT NULL,
[tauxTva] [decimal] (18, 4) NOT NULL,
[mntTtc] [decimal] (18, 2) NOT NULL,
[mntTva] [decimal] (18, 2) NOT NULL,
[mntHt] [decimal] (18, 2) NOT NULL,
[mntComplementaire] [decimal] (18, 2) NOT NULL,
[prixUnitaire] [decimal] (18, 2) NOT NULL,
[type] [nchar] (1) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneFacture] ADD CONSTRAINT [PK_LigneFacture] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneFacture] ADD CONSTRAINT [FK_LigneFacture_Facture] FOREIGN KEY ([idFacture]) REFERENCES [dbo].[Facture] ([id])
GO
ALTER TABLE [dbo].[LigneFacture] ADD CONSTRAINT [FK_LigneFacture_Formule] FOREIGN KEY ([idFormule]) REFERENCES [dbo].[Formule] ([id])
GO
ALTER TABLE [dbo].[LigneFacture] ADD CONSTRAINT [FK_LigneFacture_OptionProduit] FOREIGN KEY ([idOptionProduit]) REFERENCES [dbo].[OptionProduit] ([id])
GO
