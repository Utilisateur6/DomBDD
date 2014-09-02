CREATE TABLE [dbo].[Univers]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[valide] [bit] NULL,
[idMarque] [bigint] NULL,
[ordre] [int] NULL,
[img] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Univers] ADD CONSTRAINT [PK_Univers] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
