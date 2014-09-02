CREATE TABLE [dbo].[Langues]
(
[id] [nchar] (5) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Langues] ADD CONSTRAINT [PK_Langues] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
