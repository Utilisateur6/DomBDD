CREATE TABLE [dbo].[i_PRODUITS_DATES]
(
[ID] [int] NOT NULL,
[ID_PRODUIT] [int] NULL,
[datedebut] [datetime] NULL,
[datefin] [datetime] NULL,
[hebdomadaire] [bit] NOT NULL,
[lundi] [bit] NOT NULL,
[mardi] [bit] NOT NULL,
[mercredi] [bit] NOT NULL,
[jeudi] [bit] NOT NULL,
[vendredi] [bit] NOT NULL,
[samedi] [bit] NOT NULL,
[dimanche] [bit] NOT NULL,
[ttl_series] [int] NULL,
[date_locked] [bit] NOT NULL
) ON [PRIMARY]
GO
