CREATE TABLE [dbo].[Options]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idProduit] [bigint] NOT NULL,
[prix] [decimal] (18, 2) NOT NULL,
[tauxcommission] [decimal] (18, 6) NOT NULL,
[valide] [bit] NOT NULL,
[obligatoire] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Options] ADD CONSTRAINT [PK_Option_1] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Options] ADD CONSTRAINT [FK_Option_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
