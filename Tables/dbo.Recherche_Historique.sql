CREATE TABLE [dbo].[Recherche_Historique]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[expression] [varchar] (max) COLLATE French_CI_AS NULL,
[date] [datetime] NULL,
[nbresultat] [int] NULL,
[datedu] [datetime] NULL,
[dateau] [datetime] NULL,
[avancee] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
