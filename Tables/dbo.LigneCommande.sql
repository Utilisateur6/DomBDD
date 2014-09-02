CREATE TABLE [dbo].[LigneCommande]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idCommande] [bigint] NOT NULL,
[idFormule] [bigint] NULL,
[idOptionProduit] [bigint] NULL,
[quantite] [int] NOT NULL,
[prixUnitaire] [decimal] (18, 2) NOT NULL,
[remisePresta] [decimal] (18, 4) NOT NULL,
[remiseSpd] [decimal] (18, 4) NOT NULL,
[tauxCommission] [decimal] (18, 8) NOT NULL,
[tauxReservation] [decimal] (18, 8) NOT NULL,
[montantPort] [decimal] (18, 2) NOT NULL,
[tauxTvaPort] [decimal] (18, 4) NOT NULL,
[montantAssurance] [decimal] (18, 2) NOT NULL,
[tauxTvaAssurance] [decimal] (18, 4) NOT NULL,
[tauxTva] [decimal] (18, 4) NOT NULL,
[estMandataire] [bit] NOT NULL,
[idVoucher] [bigint] NULL,
[idControlePaiementPrestataire] [bigint] NULL,
[DateEnvoi] [datetime] NULL,
[DateTransfert] [datetime] NULL,
[DateDebut] [datetime] NULL,
[DateFin] [datetime] NULL,
[idDuo] [bigint] NULL,
[formuleDuo] [bigint] NULL,
[fbc] [nvarchar] (max) COLLATE French_CI_AS NULL,
[formuleSurclasse] [bigint] NULL,
[compVoucher] [bigint] NULL,
[ajoutBenef] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneCommande] ADD CONSTRAINT [PK_LigneCommande] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneCommande] ADD CONSTRAINT [FK_LigneCommande_Formule1] FOREIGN KEY ([formuleDuo]) REFERENCES [dbo].[Formule] ([id])
GO
ALTER TABLE [dbo].[LigneCommande] ADD CONSTRAINT [FK_LigneCommande_Commande] FOREIGN KEY ([idCommande]) REFERENCES [dbo].[Commande] ([id])
GO
ALTER TABLE [dbo].[LigneCommande] ADD CONSTRAINT [FK_LigneCommande_LigneCommande] FOREIGN KEY ([idDuo]) REFERENCES [dbo].[LigneCommande] ([id])
GO
ALTER TABLE [dbo].[LigneCommande] ADD CONSTRAINT [FK_LigneCommande_Formule] FOREIGN KEY ([idFormule]) REFERENCES [dbo].[Formule] ([id])
GO
