CREATE TABLE [dbo].[Paiement]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[autorisation] [nvarchar] (20) COLLATE French_CI_AS NULL,
[montant] [decimal] (18, 2) NOT NULL,
[type] [nvarchar] (25) COLLATE French_CI_AS NOT NULL,
[certificat] [nvarchar] (20) COLLATE French_CI_AS NULL,
[datePaiement] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Paiement] ADD CONSTRAINT [PK_Paiement] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
