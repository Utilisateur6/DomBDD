CREATE TABLE [dbo].[Feed]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[name] [nvarchar] (max) COLLATE French_CI_AS NULL,
[type] [int] NULL,
[available] [bit] NULL,
[defaultTxt] [text] COLLATE French_CI_AS NULL,
[imglink] [nvarchar] (max) COLLATE French_CI_AS NULL,
[urllink] [nvarchar] (max) COLLATE French_CI_AS NULL,
[description] [text] COLLATE French_CI_AS NULL,
[defaultTitle] [nvarchar] (500) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
