CREATE TABLE [dbo].[HistoriquePaiementPrestataire]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[cvs] [nvarchar] (max) COLLATE French_CI_AS NULL,
[amount] [decimal] (18, 3) NULL,
[fileName] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
