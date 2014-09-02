CREATE TABLE [dbo].[Commande]
(
[id] [bigint] NOT NULL IDENTITY(60000, 1),
[idClient] [bigint] NOT NULL,
[idAdresseFacturation] [bigint] NULL,
[idAdresseLivraison] [bigint] NULL,
[dateCommande] [datetime] NOT NULL,
[modePaiement] [nvarchar] (50) COLLATE French_CI_AS NULL,
[datePaiement] [datetime] NULL,
[idEtatCommande] [bigint] NOT NULL,
[idRemise] [bigint] NULL,
[idPassport] [bigint] NULL,
[invalide] [bit] NOT NULL CONSTRAINT [DF_Commande_valide] DEFAULT ((1)),
[marque] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[montantTTC] [decimal] (18, 2) NULL,
[montantSurPlaceTTC] [decimal] (18, 2) NULL,
[idFacture] [bigint] NULL,
[tag] [nvarchar] (50) COLLATE French_CI_AS NULL,
[idEmploye] [bigint] NULL,
[idPaiement] [bigint] NULL,
[preparee] [bit] NOT NULL,
[dateExpedition] [datetime] NULL,
[produitsExternesATraiter] [bit] NULL,
[IdCincosenso] [bigint] NULL,
[ajout] [bit] NULL,
[idpp] [bigint] NULL,
[refc] [bigint] NULL,
[refv] [bigint] NULL,
[typeAjout] [int] NULL,
[idemploye2] [bigint] NULL,
[dateExpedition2] [datetime] NULL,
[dateEnvoiInfoClient] [datetime] NULL,
[dateRappelInfoClient] [datetime] NULL,
[commandeGroupe] [bit] NULL,
[commandeBenef] [bit] NULL,
[commandeBenefType] [int] NULL,
[commandeBenefUser] [bigint] NULL,
[commandeBenefVoucher] [bigint] NULL,
[commandeBenefId] [bigint] NULL,
[commandeBenefJSON] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Commande] ADD CONSTRAINT [PK_Commande] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Commande] ADD CONSTRAINT [FK_Commande_Facture] FOREIGN KEY ([idFacture]) REFERENCES [dbo].[Facture] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
GO
