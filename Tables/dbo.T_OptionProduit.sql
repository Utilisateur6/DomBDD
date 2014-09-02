CREATE TABLE [dbo].[T_OptionProduit]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idOption] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[description] [nvarchar] (max) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (max) COLLATE French_CI_AS NULL,
[sinon] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_OptionProduit] ADD CONSTRAINT [PK_T_Option] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_OptionProduit] ADD CONSTRAINT [FK_T_Option_Option] FOREIGN KEY ([idOption]) REFERENCES [dbo].[OptionProduit] ([id])
GO
