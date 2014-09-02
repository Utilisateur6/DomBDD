CREATE TABLE [dbo].[Suggest]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[words] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
