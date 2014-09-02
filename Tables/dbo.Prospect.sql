CREATE TABLE [dbo].[Prospect]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[nom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[prenom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[email] [nvarchar] (max) COLLATE French_CI_AS NULL,
[telephone] [nvarchar] (max) COLLATE French_CI_AS NULL,
[remarque] [text] COLLATE French_CI_AS NULL,
[date] [datetime] NULL,
[userId] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
