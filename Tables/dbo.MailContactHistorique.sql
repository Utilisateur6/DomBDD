CREATE TABLE [dbo].[MailContactHistorique]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[msgId] [nvarchar] (max) COLLATE French_CI_AS NULL,
[msgUId] [nvarchar] (max) COLLATE French_CI_AS NULL,
[msgAction] [int] NULL,
[appUser] [bigint] NULL,
[dossier] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
