CREATE TABLE [dbo].[DatesSuppression]
(
[id] [uniqueidentifier] NOT NULL,
[doc] [datetime] NULL,
[idemploye] [bigint] NULL,
[datedu] [datetime] NULL,
[dateau] [datetime] NULL,
[hebdo] [bit] NULL,
[annuel] [bit] NULL,
[jours] [int] NULL,
[idproduit] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DatesSuppression] ADD CONSTRAINT [PK_DatesSuppression] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
