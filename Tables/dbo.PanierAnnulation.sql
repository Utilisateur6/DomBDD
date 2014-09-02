CREATE TABLE [dbo].[PanierAnnulation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[cart] [text] COLLATE French_CI_AS NULL,
[causeAnnulation] [int] NULL,
[souhaiteRappel] [bit] NULL,
[idprospect] [bigint] NULL,
[idclient] [bigint] NULL,
[date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
