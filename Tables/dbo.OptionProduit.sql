CREATE TABLE [dbo].[OptionProduit]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[prix] [decimal] (18, 2) NOT NULL,
[prixRevient] [decimal] (18, 2) NOT NULL,
[valide] [bit] NOT NULL,
[idTva] [bigint] NOT NULL,
[livraison] [bit] NOT NULL,
[ordre] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OptionProduit] ADD CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OptionProduit] ADD CONSTRAINT [FK_OptionProduit_Tva] FOREIGN KEY ([idTva]) REFERENCES [dbo].[Tva] ([id])
GO
