CREATE TABLE [dbo].[Connexions]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[connexion] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Connexions] ADD CONSTRAINT [PK_Connexions] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
