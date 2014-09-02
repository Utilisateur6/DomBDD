CREATE TABLE [dbo].[SlideShow]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[imgsrc] [nvarchar] (max) COLLATE French_CI_AS NULL,
[link] [nvarchar] (max) COLLATE French_CI_AS NULL,
[description] [text] COLLATE French_CI_AS NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NULL,
[legend] [nvarchar] (max) COLLATE French_CI_AS NULL,
[idproduit] [bigint] NULL,
[valide] [bit] NULL,
[ordre] [int] NULL CONSTRAINT [DF_SlideShow_ordre] DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
