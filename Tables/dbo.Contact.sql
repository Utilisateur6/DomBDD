CREATE TABLE [dbo].[Contact]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[fonction] [nvarchar] (50) COLLATE French_CI_AS NULL,
[nom] [nvarchar] (100) COLLATE French_CI_AS NULL,
[telephone] [nvarchar] (max) COLLATE French_CI_AS NULL,
[fax] [nvarchar] (max) COLLATE French_CI_AS NULL,
[portable] [nvarchar] (max) COLLATE French_CI_AS NULL,
[email] [nvarchar] (255) COLLATE French_CI_AS NULL,
[envoiDesCommandes] [bit] NOT NULL,
[idPrestataire] [bigint] NULL,
[optionMailling] [bit] NOT NULL CONSTRAINT [DF_Contact_optionMailling] DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK_Contact_Prestataire] FOREIGN KEY ([idPrestataire]) REFERENCES [dbo].[Prestataire] ([id])
GO
