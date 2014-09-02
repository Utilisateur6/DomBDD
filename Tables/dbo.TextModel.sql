CREATE TABLE [dbo].[TextModel]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[typeId] [int] NULL,
[modelText] [text] COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
