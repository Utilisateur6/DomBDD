CREATE TABLE [dbo].[CincoSenso]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idProduit] [bigint] NOT NULL,
[idPassport] [bigint] NULL,
[codeProduit] [int] NOT NULL,
[codeBarre] [nchar] (12) COLLATE French_CI_AS NOT NULL,
[cleControle] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[dateActivation] [datetime] NULL,
[prix] [decimal] (18, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CincoSenso] ADD CONSTRAINT [PK_CincoSenso] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Idx_CincoSenso] ON [dbo].[CincoSenso] ([codeBarre]) WITH (ALLOW_PAGE_LOCKS=OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CincoSenso] ADD CONSTRAINT [FK_CincoSenso_Remise] FOREIGN KEY ([idPassport]) REFERENCES [dbo].[Remise] ([id])
GO
ALTER TABLE [dbo].[CincoSenso] ADD CONSTRAINT [FK_CincoSenso_Produit] FOREIGN KEY ([idProduit]) REFERENCES [dbo].[Produit] ([id])
GO
