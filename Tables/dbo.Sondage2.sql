CREATE TABLE [dbo].[Sondage2]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[PassageCommandeType] [int] NULL,
[PassageCommandeNote] [int] NULL,
[PassageCommandeSatisfaction] [int] NULL,
[ActiviteSatisfaction] [int] NULL,
[ActiviteSatisfactionNote] [int] NULL,
[DateReprogrammation] [datetime] NULL,
[AutreActivite] [int] NULL,
[AutreActiviteNote] [int] NULL,
[Pseudo] [nvarchar] (50) COLLATE French_CI_AS NULL,
[Commentaire] [text] COLLATE French_CI_AS NULL,
[Note] [int] NULL,
[idClient] [bigint] NULL,
[idProduit] [bigint] NULL,
[idVoucher] [bigint] NULL,
[DateReponse] [datetime] NULL,
[RaisonPasFait] [int] NULL,
[valide] [bit] NULL,
[SouhaiteContact] [bit] NULL,
[Interview] [bit] NULL,
[Service] [int] NULL CONSTRAINT [DF_Sondage2_Service] DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
