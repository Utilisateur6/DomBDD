CREATE TABLE [dbo].[SuspensionActiviteTemplate]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[tpl] [text] COLLATE French_CI_AS NULL,
[name] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SuspensionActiviteTemplate] ADD CONSTRAINT [PK_SuspensionActiviteTemplate] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
