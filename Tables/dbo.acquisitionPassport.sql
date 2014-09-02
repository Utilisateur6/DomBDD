CREATE TABLE [dbo].[acquisitionPassport]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idRemise] [bigint] NOT NULL,
[nomRemise] [nvarchar] (50) COLLATE French_CI_AS NOT NULL,
[dateAcquisition] [datetime] NOT NULL,
[idFacture] [bigint] NOT NULL,
[idCommande] [bigint] NOT NULL,
[idVoucher] [bigint] NOT NULL,
[dateValidite] [datetime] NOT NULL,
[valeurInitiale] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[acquisitionPassport] ADD CONSTRAINT [PK_acquisitionPassport] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
