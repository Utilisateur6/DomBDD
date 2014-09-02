CREATE TABLE [dbo].[MailConfirmationEnvoi]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idvoucher] [bigint] NULL,
[email] [nvarchar] (max) COLLATE French_CI_AS NULL,
[dateAction] [datetime] NULL,
[visible] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
