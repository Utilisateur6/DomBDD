CREATE TABLE [dbo].[EtatCommande]
(
[id] [bigint] NOT NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EtatCommande] ADD CONSTRAINT [PK_EtatCommande] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
