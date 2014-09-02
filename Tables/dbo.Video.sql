CREATE TABLE [dbo].[Video]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[code] [text] COLLATE French_CI_AS NULL,
[item] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
