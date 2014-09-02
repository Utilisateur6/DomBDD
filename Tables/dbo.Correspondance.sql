CREATE TABLE [dbo].[Correspondance]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idClient] [bigint] NULL,
[dateCorrespondance] [datetime] NOT NULL,
[texte] [text] COLLATE French_CI_AS NOT NULL,
[interne] [bit] NOT NULL,
[idCommande] [bigint] NULL,
[idVoucher] [bigint] NULL,
[idPrestataire] [bigint] NULL,
[idProspect] [bigint] NULL,
[idPreResaProspect] [bigint] NULL,
[idpc] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Correspondance] ADD CONSTRAINT [PK_Correspondance] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Correspondance] ADD CONSTRAINT [FK_Correspondance_Client] FOREIGN KEY ([idClient]) REFERENCES [dbo].[Client] ([id])
GO
