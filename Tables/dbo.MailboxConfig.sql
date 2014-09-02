CREATE TABLE [dbo].[MailboxConfig]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[host] [nvarchar] (150) COLLATE French_CI_AS NULL,
[port] [int] NULL,
[ssl] [bit] NULL,
[login] [nvarchar] (max) COLLATE French_CI_AS NULL,
[password] [nvarchar] (max) COLLATE French_CI_AS NULL,
[typeId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
