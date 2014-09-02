CREATE TABLE [dbo].[ControleVoucher]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[memo] [text] COLLATE French_CI_AS NOT NULL,
[ecart] [decimal] (18, 2) NOT NULL,
[idPrestataire] [bigint] NOT NULL,
[datePaiement] [datetime] NULL,
[ref] [nvarchar] (max) COLLATE French_CI_AS NULL,
[envoye] [bit] NULL,
[payer] [bit] NULL,
[datePaiement2] [datetime] NULL,
[remarque] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ControleVoucher] ADD CONSTRAINT [PK_ControleVoucher] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
