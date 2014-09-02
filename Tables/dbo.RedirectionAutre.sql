CREATE TABLE [dbo].[RedirectionAutre]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[oldurl] [nvarchar] (max) COLLATE French_CI_AS NULL,
[url] [nvarchar] (max) COLLATE French_CI_AS NULL,
[code] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
