CREATE TABLE [dbo].[LigneOptionCommande]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idLigneCommande] [bigint] NOT NULL,
[idOption] [bigint] NOT NULL,
[quantite] [int] NOT NULL,
[prixUnitaire] [decimal] (18, 2) NOT NULL,
[tauxCommission] [decimal] (18, 4) NOT NULL,
[remisePresta] [decimal] (18, 4) NOT NULL,
[remiseSpd] [decimal] (18, 4) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneOptionCommande] ADD CONSTRAINT [PK_LigneOptionCommande] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneOptionCommande] ADD CONSTRAINT [FK_LigneOptionCommande_LigneCommande] FOREIGN KEY ([idLigneCommande]) REFERENCES [dbo].[LigneCommande] ([id])
GO
ALTER TABLE [dbo].[LigneOptionCommande] ADD CONSTRAINT [FK_LigneOptionCommande_Options] FOREIGN KEY ([idOption]) REFERENCES [dbo].[Options] ([id])
GO
