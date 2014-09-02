CREATE TABLE [dbo].[T_Univers]
(
[idUnivers] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[keywords] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[description] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[message] [text] COLLATE French_CI_AS NULL,
[spe] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Univers] ADD CONSTRAINT [PK_T_Univers] PRIMARY KEY CLUSTERED  ([idUnivers], [langue]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Univers] ADD CONSTRAINT [FK_T_Univers_Univers] FOREIGN KEY ([idUnivers]) REFERENCES [dbo].[Univers] ([id])
GO
