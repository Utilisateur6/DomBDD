CREATE TABLE [dbo].[Redirection]
(
[IdRedirection] [bigint] NOT NULL IDENTITY(1, 1),
[Langue] [varchar] (3) COLLATE French_CI_AS NOT NULL,
[Type] [char] (1) COLLATE French_CI_AS NOT NULL,
[Url] [nvarchar] (255) COLLATE French_CI_AS NOT NULL,
[IdItem] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Redirection] ADD CONSTRAINT [PK_Redirection] PRIMARY KEY CLUSTERED  ([IdRedirection]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Idx_redirection] ON [dbo].[Redirection] ([Langue], [Type], [IdItem]) WITH (ALLOW_PAGE_LOCKS=OFF) ON [PRIMARY]
GO
