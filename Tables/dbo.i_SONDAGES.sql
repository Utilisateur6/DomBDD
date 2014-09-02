CREATE TABLE [dbo].[i_SONDAGES]
(
[id_sondage] [int] NOT NULL,
[id_produit] [int] NULL,
[id_client] [int] NULL,
[client] [nvarchar] (100) COLLATE French_CI_AS NULL,
[resa_cde] [nvarchar] (15) COLLATE French_CI_AS NULL,
[resa_accueil] [nvarchar] (15) COLLATE French_CI_AS NULL,
[resa_cadeau] [nvarchar] (15) COLLATE French_CI_AS NULL,
[resa_rem] [nvarchar] (max) COLLATE French_CI_AS NULL,
[activite_ok] [nvarchar] (20) COLLATE French_CI_AS NULL,
[activite_rem] [nvarchar] (max) COLLATE French_CI_AS NULL,
[autre_ok] [bit] NOT NULL,
[autre_rem] [nvarchar] (max) COLLATE French_CI_AS NULL,
[des] [nvarchar] (max) COLLATE French_CI_AS NULL,
[valide] [bit] NOT NULL,
[date_sondage] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
