CREATE TABLE [dbo].[Tva]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[valeur] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tva] ADD CONSTRAINT [PK_Tva] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
