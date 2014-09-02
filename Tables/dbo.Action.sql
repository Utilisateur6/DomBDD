CREATE TABLE [dbo].[Action]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idEmploye] [bigint] NOT NULL,
[action] [nvarchar] (100) COLLATE French_CI_AS NOT NULL,
[objet] [nvarchar] (30) COLLATE French_CI_AS NOT NULL,
[dateAction] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Action] ADD CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Action] ADD CONSTRAINT [FK_Action_Employe] FOREIGN KEY ([idEmploye]) REFERENCES [dbo].[Employe] ([id])
GO
