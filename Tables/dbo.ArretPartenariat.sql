CREATE TABLE [dbo].[ArretPartenariat]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[idvoucher] [bigint] NULL,
[idremise] [bigint] NULL,
[reddate] [datetime] NULL,
[civ] [int] NULL,
[nom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[prenom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[societe] [nvarchar] (max) COLLATE French_CI_AS NULL,
[fonction] [nvarchar] (max) COLLATE French_CI_AS NULL,
[adresse] [nvarchar] (max) COLLATE French_CI_AS NULL,
[cp] [nvarchar] (max) COLLATE French_CI_AS NULL,
[ville] [nvarchar] (max) COLLATE French_CI_AS NULL,
[pays] [int] NULL,
[telephone] [nvarchar] (max) COLLATE French_CI_AS NULL,
[email] [nvarchar] (max) COLLATE French_CI_AS NULL,
[message] [text] COLLATE French_CI_AS NULL,
[iduser] [bigint] NULL,
[montantActivite] [decimal] (18, 2) NULL,
[produits] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArretPartenariat] ADD CONSTRAINT [PK_ArretPartenariat] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
