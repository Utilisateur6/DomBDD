CREATE TABLE [dbo].[Parrainage]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idClient] [bigint] NOT NULL,
[emailFilleul] [nvarchar] (100) COLLATE French_CI_AS NOT NULL,
[code] [nchar] (10) COLLATE French_CI_AS NULL,
[remise] [decimal] (18, 2) NOT NULL,
[utilise] [bit] NOT NULL,
[dateParrainage] [datetime] NOT NULL,
[enregistrer] [bit] NULL CONSTRAINT [DF_Parrainage_enregistrer] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Parrainage] ADD CONSTRAINT [PK_Parrainage] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
