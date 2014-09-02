CREATE TABLE [dbo].[Discipline]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[valide] [bit] NOT NULL,
[ordre] [int] NOT NULL,
[idUnivers] [bigint] NOT NULL,
[export] [bit] NULL,
[img] [nvarchar] (max) COLLATE French_CI_AS NULL,
[poids] [bit] NULL,
[positionMenuTop] [int] NULL,
[menuTopId] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Discipline] ADD CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Discipline] ADD CONSTRAINT [FK_Discipline_Univers] FOREIGN KEY ([idUnivers]) REFERENCES [dbo].[Univers] ([id])
GO
