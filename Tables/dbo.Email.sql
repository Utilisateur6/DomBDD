CREATE TABLE [dbo].[Email]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idClient] [bigint] NULL,
[idPrestataire] [bigint] NULL,
[subject] [nvarchar] (150) COLLATE French_CI_AS NOT NULL,
[body] [text] COLLATE French_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email] ADD CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email] ADD CONSTRAINT [FK_Emails_Client] FOREIGN KEY ([idClient]) REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Email] ADD CONSTRAINT [FK_Email_Prestataire] FOREIGN KEY ([idPrestataire]) REFERENCES [dbo].[Prestataire] ([id])
GO
