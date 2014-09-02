CREATE TABLE [dbo].[ControlePaiementPrestataire]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[memo] [text] COLLATE French_CI_AS NOT NULL,
[ecart] [decimal] (18, 2) NOT NULL,
[idPrestataire] [bigint] NOT NULL,
[datePaiement] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ControlePaiementPrestataire] ADD CONSTRAINT [PK_ControlePaiementPrestataire] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
