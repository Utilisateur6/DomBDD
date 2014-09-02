CREATE TABLE [dbo].[PrestaMotif]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[motif] [nvarchar] (max) COLLATE French_CI_AS NULL,
[pattern] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
