CREATE TABLE [dbo].[Redirection301]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[old301Uri] [varchar] (max) COLLATE French_CI_AS NULL,
[idItem] [bigint] NULL,
[type] [char] (10) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
