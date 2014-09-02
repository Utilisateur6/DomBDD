CREATE TABLE [dbo].[Produit]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idStatutProduit] [bigint] NOT NULL,
[idCoffret] [bigint] NULL,
[idPrestataire] [bigint] NOT NULL,
[idDepartement] [bigint] NOT NULL,
[tauxReservation] [decimal] (18, 8) NOT NULL,
[tauxCommission] [decimal] (18, 4) NOT NULL,
[estSpecialMandataire] [bit] NULL,
[dateValidite] [datetime] NULL,
[delaiValidite] [int] NULL,
[idTva] [bigint] NOT NULL,
[assurance] [bit] NOT NULL,
[estCoffret] [bit] NOT NULL,
[prixMinimum] [decimal] (18, 2) NOT NULL,
[valide] [bit] NOT NULL,
[accueil] [bit] NOT NULL,
[passport] [bit] NULL,
[ordre] [int] NULL,
[utube] [nvarchar] (max) COLLATE French_CI_AS NULL,
[codePostal] [nvarchar] (50) COLLATE French_CI_AS NULL,
[ville] [nvarchar] (50) COLLATE French_CI_AS NULL,
[stock] [int] NULL,
[statusSD] [bit] NULL CONSTRAINT [DF_Produit_statusSD] DEFAULT ((0)),
[whoWork] [bigint] NULL CONSTRAINT [DF_Produit_whoWork] DEFAULT ((0)),
[valsylvie] [bit] NULL,
[duo] [bit] NULL,
[sh] [bit] NULL,
[idsh] [bigint] NULL,
[nouvo] [bit] NULL,
[sduo] [bit] NULL,
[dispo] [bit] NULL,
[lvl] [int] NULL,
[dispoMotif] [bigint] NULL,
[dispoSolution] [bigint] NULL,
[fermetureMotifId] [bigint] NULL,
[fermetureSolutionId] [bigint] NULL,
[fermetureChoixId] [bigint] NULL,
[fermetureChoixSolution] [nvarchar] (max) COLLATE French_CI_AS NULL,
[duocomp] [bit] NULL,
[prospType] [int] NULL,
[prospTypeRep] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Produit] ADD CONSTRAINT [PK_Produits] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Produit_Valide] ON [dbo].[Produit] ([accueil]) WITH (ALLOW_PAGE_LOCKS=OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Produit] ADD CONSTRAINT [FK_Produit_Produit] FOREIGN KEY ([idCoffret]) REFERENCES [dbo].[Produit] ([id])
GO
ALTER TABLE [dbo].[Produit] ADD CONSTRAINT [FK_Produit_Departement] FOREIGN KEY ([idDepartement]) REFERENCES [dbo].[Departement] ([id])
GO
ALTER TABLE [dbo].[Produit] ADD CONSTRAINT [FK_Produit_Prestataire] FOREIGN KEY ([idPrestataire]) REFERENCES [dbo].[Prestataire] ([id])
GO
ALTER TABLE [dbo].[Produit] ADD CONSTRAINT [FK_Produit_Tva] FOREIGN KEY ([idTva]) REFERENCES [dbo].[Tva] ([id])
GO
