CREATE TABLE [dbo].[PromoDatee]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idFormule] [bigint] NOT NULL,
[jourDu] [datetime] NOT NULL,
[prixUnitaire] [decimal] (18, 2) NOT NULL,
[jourAu] [datetime] NULL,
[jourDuFB] [datetime] NULL,
[jourAuFB] [datetime] NULL,
[prixUnitaireFB] [decimal] (18, 2) NULL,
[fbp] [nvarchar] (max) COLLATE French_CI_AS NULL,
[heure] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoDatee] ADD CONSTRAINT [PK_PromoDatee] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
