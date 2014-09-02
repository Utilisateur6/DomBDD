CREATE TABLE [dbo].[R_Produit_OptionProduit]
(
[idProduit] [bigint] NOT NULL,
[idOptionProduit] [bigint] NOT NULL,
[valide] [bit] NOT NULL,
[id] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[R_Produit_OptionProduit] ADD CONSTRAINT [PK_R_Produit_OptionProduit] PRIMARY KEY CLUSTERED  ([idProduit], [idOptionProduit]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[R_Produit_OptionProduit] ADD CONSTRAINT [FK_R_Produit_OptionProduit_OptionProduit] FOREIGN KEY ([idOptionProduit]) REFERENCES [dbo].[OptionProduit] ([id])
GO
ALTER TABLE [dbo].[R_Produit_OptionProduit] ADD CONSTRAINT [FK_R_Produit_OptionProduit_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
ALTER TABLE [dbo].[R_Produit_OptionProduit] ADD CONSTRAINT [FK_R_Produit_OptionProduit_R_Produit_OptionProduit] FOREIGN KEY ([idProduit], [idOptionProduit]) REFERENCES [dbo].[R_Produit_OptionProduit] ([idProduit], [idOptionProduit])
GO
ALTER TABLE [dbo].[R_Produit_OptionProduit] ADD CONSTRAINT [FK_R_Produit_OptionProduit_R_Produit_OptionProduit1] FOREIGN KEY ([idProduit], [idOptionProduit]) REFERENCES [dbo].[R_Produit_OptionProduit] ([idProduit], [idOptionProduit])
GO
