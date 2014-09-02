CREATE TABLE [dbo].[ActionMail]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[dateaction] [datetime] NULL,
[action] [nvarchar] (max) COLLATE French_CI_AS NULL,
[IdVoucher] [bigint] NULL,
[message] [nvarchar] (max) COLLATE French_CI_AS NULL,
[email] [nvarchar] (max) COLLATE French_CI_AS NULL,
[visible] [bit] NULL,
[presta] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
