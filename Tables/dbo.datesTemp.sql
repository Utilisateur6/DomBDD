CREATE TABLE [dbo].[datesTemp]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[du] [datetime] NOT NULL,
[au] [datetime] NOT NULL,
[hebdomadaire] [bit] NOT NULL,
[jours] [tinyint] NOT NULL,
[idProduit] [bigint] NOT NULL,
[annuel] [bit] NOT NULL
) ON [PRIMARY]
GO
