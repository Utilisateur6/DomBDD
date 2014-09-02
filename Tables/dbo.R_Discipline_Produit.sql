CREATE TABLE [dbo].[R_Discipline_Produit]
(
[idDiscipline] [bigint] NOT NULL,
[idProduit] [bigint] NOT NULL,
[defaultCategory] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[R_Discipline_Produit] ADD CONSTRAINT [PK_DisciplinesProduits] PRIMARY KEY CLUSTERED  ([idDiscipline], [idProduit]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[R_Discipline_Produit] ADD CONSTRAINT [FK_R_Disciplines_Produits_Discipline] FOREIGN KEY ([idDiscipline]) REFERENCES [dbo].[Discipline] ([id])
GO
ALTER TABLE [dbo].[R_Discipline_Produit] ADD CONSTRAINT [FK_R_Discipline_Produit_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
