CREATE TABLE [dbo].[UtilisationPassport]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idRemise] [bigint] NOT NULL,
[idFacture] [bigint] NOT NULL,
[idCommande] [bigint] NOT NULL,
[valeurUtilisee] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UtilisationPassport] ADD CONSTRAINT [PK_UtilisationPassport] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
