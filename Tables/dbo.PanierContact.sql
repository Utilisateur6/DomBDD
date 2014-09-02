CREATE TABLE [dbo].[PanierContact]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[motifId] [int] NULL,
[date] [datetime] NULL,
[empId] [bigint] NULL,
[idprospect] [bigint] NULL,
[idcust] [bigint] NULL,
[daterappel] [datetime] NULL,
[idpp] [bigint] NULL,
[status] [int] NULL,
[datestatus] [datetime] NULL,
[traiter] [bit] NULL
) ON [PRIMARY]
GO
