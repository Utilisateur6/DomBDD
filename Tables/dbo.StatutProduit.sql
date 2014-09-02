CREATE TABLE [dbo].[StatutProduit]
(
[id] [bigint] NOT NULL,
[nom] [nvarchar] (50) COLLATE French_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StatutProduit] ADD CONSTRAINT [PK_StatutProduit] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
