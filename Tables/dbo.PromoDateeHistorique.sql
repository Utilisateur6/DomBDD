CREATE TABLE [dbo].[PromoDateeHistorique]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[idpr] [bigint] NULL,
[idformule] [bigint] NULL,
[jourdu] [datetime] NULL,
[jourau] [datetime] NULL,
[prixunitaire] [decimal] (18, 7) NULL,
[heure] [nvarchar] (50) COLLATE French_CI_AS NULL,
[idemploye] [bigint] NULL,
[idemploye2] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoDateeHistorique] ADD CONSTRAINT [PK_PromoDateeHistorique] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
