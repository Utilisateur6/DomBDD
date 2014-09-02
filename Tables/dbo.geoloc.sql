CREATE TABLE [dbo].[geoloc]
(
[nomMaj] [nvarchar] (max) COLLATE French_CI_AS NULL,
[codepostal] [nvarchar] (max) COLLATE French_CI_AS NULL,
[insee] [nvarchar] (max) COLLATE French_CI_AS NULL,
[coderegion] [nvarchar] (max) COLLATE French_CI_AS NULL,
[latitude] [float] NULL,
[longitude] [float] NULL,
[id] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
