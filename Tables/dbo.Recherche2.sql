CREATE TABLE [dbo].[Recherche2]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[expression] [nvarchar] (max) COLLATE French_CI_AS NULL,
[nbresult] [int] NULL,
[mini] [int] NULL,
[maxi] [int] NULL,
[promo] [bit] NULL,
[iddiscipline] [nvarchar] (50) COLLATE French_CI_AS NULL,
[idunivers] [nvarchar] (50) COLLATE French_CI_AS NULL,
[latitude] [float] NULL,
[longitude] [float] NULL,
[rayon] [int] NULL,
[dater] [datetime] NULL,
[isgeo] [bit] NULL,
[ville] [nvarchar] (max) COLLATE French_CI_AS NULL,
[bar] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
