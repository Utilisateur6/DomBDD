CREATE TABLE [dbo].[Client]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[civilite] [nvarchar] (5) COLLATE French_CI_AS NOT NULL,
[prenom] [nvarchar] (30) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[login] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[mdp] [nvarchar] (15) COLLATE French_CI_AS NOT NULL,
[inscriptionNewsletter] [bit] NOT NULL,
[typeClient] [tinyint] NOT NULL,
[telephone] [nvarchar] (20) COLLATE French_CI_AS NULL,
[fax] [nvarchar] (20) COLLATE French_CI_AS NULL,
[mobile] [nvarchar] (20) COLLATE French_CI_AS NULL,
[cumulAchats] [decimal] (18, 2) NULL,
[relanceClub] [bit] NULL,
[enregistrer] [bit] NULL CONSTRAINT [DF_Client_enregistrer] DEFAULT ((0)),
[datenaissance] [datetime] NULL,
[idvoucherbenef] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client] ADD CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ClientLogin] ON [dbo].[Client] ([login]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ClientNomPrenom] ON [dbo].[Client] ([nom], [prenom]) ON [PRIMARY]
GO
