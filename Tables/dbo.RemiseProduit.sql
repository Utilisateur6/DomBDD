CREATE TABLE [dbo].[RemiseProduit]
(
[code] [nvarchar] (max) COLLATE French_CI_AS NULL,
[idformule] [bigint] NULL,
[remise] [decimal] (18, 3) NULL,
[id] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
