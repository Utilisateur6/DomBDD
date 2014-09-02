CREATE TABLE [dbo].[ApplicationUser]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[empname] [nvarchar] (50) COLLATE French_CI_AS NULL,
[emplogin] [nvarchar] (50) COLLATE French_CI_AS NULL,
[emppwd] [nvarchar] (50) COLLATE French_CI_AS NULL,
[emptype] [int] NULL,
[available] [bit] NULL,
[mailboxId] [bigint] NULL,
[token] [nvarchar] (max) COLLATE French_CI_AS NULL,
[empjobs] [int] NULL,
[ordersOnly] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
