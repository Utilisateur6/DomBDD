CREATE TABLE [dbo].[Facture]
(
[id] [bigint] NOT NULL IDENTITY(20000, 1),
[idCommande] [bigint] NULL,
[type] [nchar] (1) COLLATE French_CI_AS NOT NULL,
[commentaire] [text] COLLATE French_CI_AS NULL,
[idClient] [bigint] NULL,
[idPrestataire] [bigint] NULL,
[dateFacture] [datetime] NOT NULL,
[idAdresse] [bigint] NOT NULL,
[modePaiement] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[payee] [bit] NOT NULL,
[comptabilisee] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Facture] ADD CONSTRAINT [PK_Facture] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Facture] ADD CONSTRAINT [FK_Facture_Adresse] FOREIGN KEY ([idAdresse]) REFERENCES [dbo].[Adresse] ([id])
GO
ALTER TABLE [dbo].[Facture] ADD CONSTRAINT [FK_Facture_Client] FOREIGN KEY ([idClient]) REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Facture] ADD CONSTRAINT [FK_Facture_Commande] FOREIGN KEY ([idCommande]) REFERENCES [dbo].[Commande] ([id])
GO
