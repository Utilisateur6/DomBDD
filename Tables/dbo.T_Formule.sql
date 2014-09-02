CREATE TABLE [dbo].[T_Formule]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idFormule] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[description] [nvarchar] (255) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Formule] ADD CONSTRAINT [PK_T_Formule] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Formule] ADD CONSTRAINT [FK_T_Formule_Formule] FOREIGN KEY ([idFormule]) REFERENCES [dbo].[Formule] ([id])
GO
