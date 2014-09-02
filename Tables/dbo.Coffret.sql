CREATE TABLE [dbo].[Coffret]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[prix] [decimal] (18, 2) NOT NULL,
[valide] [bit] NOT NULL,
[port] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Coffret] ADD CONSTRAINT [PK_Coffret] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
