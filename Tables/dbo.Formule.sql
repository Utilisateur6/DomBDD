CREATE TABLE [dbo].[Formule]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idProduit] [bigint] NULL,
[prix] [decimal] (18, 2) NOT NULL,
[valide] [bit] NOT NULL,
[tauxCommission] [decimal] (18, 6) NULL,
[remisePrestataire] [decimal] (18, 4) NULL,
[debutRP] [datetime] NULL,
[finRP] [datetime] NULL,
[remiseSpd] [decimal] (18, 4) NULL,
[debutRS] [datetime] NULL,
[finRS] [datetime] NULL,
[rpoption] [bit] NULL,
[rsoption] [bit] NULL,
[duo] [bit] NULL,
[fiche1] [bigint] NULL,
[fiche2] [bigint] NULL,
[issh] [bit] NULL,
[idpsh] [bigint] NULL,
[finFB] [datetime] NULL,
[debutFB] [datetime] NULL,
[fbp] [nvarchar] (50) COLLATE French_CI_AS NULL,
[visible] [bit] NULL,
[exclu] [bit] NULL,
[autoTour] [int] NULL,
[dateFinValiditeActivite] [datetime] NULL,
[dolm] [datetime] NULL,
[baptemeNom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[baptemeMontant] [decimal] (18, 4) NULL,
[optionNom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[optionMontant] [decimal] (18, 4) NULL,
[formuleGroupe] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Formule] ADD CONSTRAINT [PK_Formule] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Formule] ADD CONSTRAINT [FK_Formule_Formule] FOREIGN KEY ([fiche1]) REFERENCES [dbo].[Formule] ([id])
GO
ALTER TABLE [dbo].[Formule] ADD CONSTRAINT [FK_Formule_Formule1] FOREIGN KEY ([fiche2]) REFERENCES [dbo].[Formule] ([id])
GO
ALTER TABLE [dbo].[Formule] ADD CONSTRAINT [FK_Formule_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
