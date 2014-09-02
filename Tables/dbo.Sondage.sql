CREATE TABLE [dbo].[Sondage]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idClient] [bigint] NULL,
[idProduit] [bigint] NOT NULL,
[idVoucher] [bigint] NULL,
[dateReponse] [datetime] NULL,
[remarques] [text] COLLATE French_CI_AS NULL,
[passationCommande] [tinyint] NULL,
[accueilTelephone] [tinyint] NULL,
[satisfaitCoffret] [tinyint] NULL,
[siPasSatisfaitCoffret] [text] COLLATE French_CI_AS NULL,
[satisfaitActivite] [tinyint] NULL,
[aNouveau] [tinyint] NULL,
[siPasANouveau] [text] COLLATE French_CI_AS NULL,
[valide] [bit] NOT NULL,
[siPasSatisfaitActivite] [text] COLLATE French_CI_AS NULL,
[surnom] [nvarchar] (50) COLLATE French_CI_AS NULL,
[dateEnvoi] [datetime] NULL,
[envoye] [bit] NULL,
[invisible] [bit] NULL,
[note] [int] NOT NULL CONSTRAINT [DF_Sondage_note] DEFAULT ((5)),
[envoye2] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
