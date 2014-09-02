CREATE TABLE [dbo].[DisciplineMenu]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[nom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[position] [int] NULL,
[idunivers] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DisciplineMenu] ADD CONSTRAINT [PK_DisciplineMenu] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
