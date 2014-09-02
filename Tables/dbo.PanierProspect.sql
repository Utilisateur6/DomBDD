CREATE TABLE [dbo].[PanierProspect]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[idclient] [bigint] NULL,
[idprospect] [bigint] NULL,
[iduser] [bigint] NULL,
[itemsJSON] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
