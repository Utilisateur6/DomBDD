CREATE TABLE [dbo].[T_Discipline]
(
[idDiscipline] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[keywords] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[description] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[message] [text] COLLATE French_CI_AS NULL,
[classement] [nvarchar] (max) COLLATE French_CI_AS NULL,
[classement_position] [int] NULL,
[renommage] [nvarchar] (max) COLLATE French_CI_AS NULL,
[redirection301] [nvarchar] (max) COLLATE French_CI_AS NULL,
[renommageClassement] [nvarchar] (max) COLLATE French_CI_AS NULL,
[spe] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Discipline] ADD CONSTRAINT [PK_T_Discipline] PRIMARY KEY CLUSTERED  ([idDiscipline], [langue]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Discipline] ADD CONSTRAINT [FK_T_Discipline_Discipline] FOREIGN KEY ([idDiscipline]) REFERENCES [dbo].[Discipline] ([id])
GO
