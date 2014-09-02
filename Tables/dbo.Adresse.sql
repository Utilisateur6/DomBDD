CREATE TABLE [dbo].[Adresse]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[libelle] [nvarchar] (50) COLLATE French_CI_AS NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[adresse1] [nvarchar] (100) COLLATE French_CI_AS NOT NULL,
[adresse2] [nvarchar] (100) COLLATE French_CI_AS NULL,
[codePostal] [nvarchar] (20) COLLATE French_CI_AS NOT NULL,
[ville] [nvarchar] (100) COLLATE French_CI_AS NOT NULL,
[idClient] [bigint] NULL,
[idPays] [bigint] NOT NULL,
[societe] [nvarchar] (50) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adresse] ADD CONSTRAINT [PK_Adresse] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adresse] ADD CONSTRAINT [FK_Adresse_Client1] FOREIGN KEY ([idClient]) REFERENCES [dbo].[Client] ([id])
GO
