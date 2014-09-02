CREATE TABLE [dbo].[Employe]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[login] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[password] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[valide] [bit] NOT NULL,
[externe] [bit] NOT NULL CONSTRAINT [DF_Employe_externe] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employe] ADD CONSTRAINT [PK_Employe] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
