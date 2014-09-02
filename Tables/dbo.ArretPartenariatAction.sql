CREATE TABLE [dbo].[ArretPartenariatAction]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[idarret] [bigint] NULL,
[actiontype] [int] NULL,
[iduser] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArretPartenariatAction] ADD CONSTRAINT [PK_ArretPartenariatAction] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
