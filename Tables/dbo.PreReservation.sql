CREATE TABLE [dbo].[PreReservation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idvoucher] [bigint] NULL,
[othcomm] [int] NULL,
[commentaire] [nvarchar] (max) COLLATE French_CI_AS NULL,
[heure1] [nvarchar] (50) COLLATE French_CI_AS NULL,
[heure2] [nvarchar] (50) COLLATE French_CI_AS NULL,
[heure3] [nvarchar] (50) COLLATE French_CI_AS NULL,
[datesouhaitee1] [datetime] NULL,
[datesouhaitee2] [datetime] NULL,
[datesouhaitee3] [datetime] NULL,
[othvoucher] [nvarchar] (50) COLLATE French_CI_AS NULL,
[dateaction] [datetime] NULL,
[valide] [bit] NULL,
[status] [int] NULL,
[messInt] [nvarchar] (max) COLLATE French_CI_AS NULL,
[dateAction2] [datetime] NULL,
[dateRelance] [datetime] NULL,
[dateppr1] [datetime] NULL,
[dateppr2] [datetime] NULL,
[dateppr3] [datetime] NULL,
[heureppr1] [nvarchar] (50) COLLATE French_CI_AS NULL,
[heureppr2] [nvarchar] (50) COLLATE French_CI_AS NULL,
[heureppr3] [nvarchar] (50) COLLATE French_CI_AS NULL,
[datepropositionprestataire] [datetime] NULL,
[datepropositionprestatairereponse] [datetime] NULL,
[remarqueproposition] [nvarchar] (max) COLLATE French_CI_AS NULL,
[prestaNoDispDate] [datetime] NULL,
[dateEnvoiInfoClient] [datetime] NULL,
[dateRappelInfoClient] [datetime] NULL,
[dateRelance48] [datetime] NULL,
[prioritaire] [bit] NULL,
[dateFin] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO