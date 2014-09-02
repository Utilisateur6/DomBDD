CREATE TABLE [dbo].[PrixDatee]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[du] [datetime] NULL,
[au] [datetime] NULL,
[idformule] [bigint] NULL,
[prixU] [decimal] (18, 2) NULL,
[prixUremise] [decimal] (18, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PrixDatee] ADD CONSTRAINT [FK_PrixDatee_Formule] FOREIGN KEY ([idformule]) REFERENCES [dbo].[Formule] ([id])
GO
