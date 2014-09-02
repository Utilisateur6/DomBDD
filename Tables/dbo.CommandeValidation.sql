CREATE TABLE [dbo].[CommandeValidation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[idprestataire] [bigint] NULL,
[idvoucher] [bigint] NULL,
[idcommande] [bigint] NULL,
[date_presta1] [datetime] NULL,
[heure_presta1] [nvarchar] (50) COLLATE French_CI_AS NULL,
[date_presta2] [datetime] NULL,
[heure_presta2] [nvarchar] (50) COLLATE French_CI_AS NULL,
[date_presta3] [datetime] NULL,
[heure_presta3] [nvarchar] (50) COLLATE French_CI_AS NULL,
[remarque_prop] [text] COLLATE French_CI_AS NULL,
[datesouhaitee] [datetime] NULL,
[status] [int] NULL,
[heure_prop] [nvarchar] (50) COLLATE French_CI_AS NULL,
[choix_client] [int] NULL,
[valide] [bit] NULL,
[date_client] [datetime] NULL,
[nodate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommandeValidation] ADD CONSTRAINT [PK_CommandeValidation] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
