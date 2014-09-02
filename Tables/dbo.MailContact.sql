CREATE TABLE [dbo].[MailContact]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[msgDate] [datetime] NULL,
[msgUId] [nvarchar] (max) COLLATE French_CI_AS NULL,
[msgId] [nvarchar] (max) COLLATE French_CI_AS NULL,
[msgFlags] [nvarchar] (50) COLLATE French_CI_AS NULL,
[msgFrom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[msgSubject] [text] COLLATE French_CI_AS NULL,
[msgBody] [text] COLLATE French_CI_AS NULL,
[msgAttachmentsRaw] [text] COLLATE French_CI_AS NULL,
[doc] [datetime] NULL,
[msgFlagsNone] [bit] NULL,
[msgFlagsSeen] [bit] NULL,
[msgFlagsAnswered] [bit] NULL,
[msgFlagsFlagged] [bit] NULL,
[msgFlagsDeleted] [bit] NULL,
[msgFlagsDraft] [bit] NULL,
[traiter] [bit] NULL,
[supprimer] [bit] NULL,
[dossier] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
