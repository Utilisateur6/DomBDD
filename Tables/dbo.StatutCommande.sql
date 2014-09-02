CREATE TABLE [dbo].[StatutCommande]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[nom] [nvarchar] (10) COLLATE French_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StatutCommande] ADD CONSTRAINT [PK_StatutCommande] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
