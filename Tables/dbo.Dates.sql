CREATE TABLE [dbo].[Dates]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[du] [datetime] NOT NULL,
[au] [datetime] NOT NULL,
[hebdomadaire] [bit] NOT NULL,
[jours] [tinyint] NOT NULL,
[idProduit] [bigint] NOT NULL,
[annuel] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dates] ADD CONSTRAINT [PK_Dates] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dates] ADD CONSTRAINT [FK_Dates_Dates] FOREIGN KEY ([id]) REFERENCES [dbo].[Dates] ([id])
GO
ALTER TABLE [dbo].[Dates] ADD CONSTRAINT [FK_Dates_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
