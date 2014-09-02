CREATE TABLE [dbo].[ReportAlbatrosMagister]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[idvoucher] [bigint] NULL,
[idprestataire] [bigint] NULL,
[status] [int] NULL,
[periode] [int] NULL,
[datesouhaitee] [datetime] NULL,
[chx1dt] [datetime] NULL,
[chx1lieu] [int] NULL,
[chx2dt] [datetime] NULL,
[chx2lieu] [int] NULL,
[chx3dt] [datetime] NULL,
[chx3lieu] [int] NULL,
[remarque] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportAlbatrosMagister] ADD CONSTRAINT [PK_ReportAlbatrosMagister] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
