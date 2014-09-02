CREATE TABLE [dbo].[Tarif]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[type] [nvarchar] (10) COLLATE French_CI_AS NOT NULL,
[idTable] [bigint] NOT NULL,
[prix] [decimal] (18, 2) NOT NULL,
[debutValidite] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tarif] ADD CONSTRAINT [PK_Tarif] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
