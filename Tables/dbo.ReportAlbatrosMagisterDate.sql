CREATE TABLE [dbo].[ReportAlbatrosMagisterDate]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[place] [int] NULL,
[idprestataire] [bigint] NULL,
[idlieu] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportAlbatrosMagisterDate] ADD CONSTRAINT [PK_ReportAlbatrosMagisterDate] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
