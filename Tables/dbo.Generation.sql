CREATE TABLE [dbo].[Generation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[nomAffiche] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[culture] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[contenu] [ntext] COLLATE French_CI_AS NOT NULL,
[keywords] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[motcles] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[description] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[liaison] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[redirection] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Generation] ADD CONSTRAINT [PK_Generation] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
