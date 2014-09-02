CREATE TABLE [dbo].[T_Options]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[idOption] [bigint] NOT NULL,
[nom] [nvarchar] (255) COLLATE French_CI_AS NOT NULL,
[description] [text] COLLATE French_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Options] ADD CONSTRAINT [PK_T_Option_1] PRIMARY KEY CLUSTERED  ([id], [langue]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Options] ADD CONSTRAINT [FK_T_Option_Option1] FOREIGN KEY ([idOption]) REFERENCES [dbo].[Options] ([id])
GO
