CREATE TABLE [dbo].[T_Coffret]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[idCoffret] [bigint] NOT NULL,
[nom] [nvarchar] (255) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Coffret] ADD CONSTRAINT [PK_T_Coffret] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Coffret] ADD CONSTRAINT [FK_T_Coffret_Coffret] FOREIGN KEY ([idCoffret]) REFERENCES [dbo].[Coffret] ([id])
GO
