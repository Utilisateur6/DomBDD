CREATE TABLE [dbo].[Departement]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[numero] [nvarchar] (5) COLLATE French_CI_AS NOT NULL,
[ordre] [int] NOT NULL,
[local] [bit] NOT NULL,
[idregion] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departement] ADD CONSTRAINT [PK_Departements] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
