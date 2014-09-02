CREATE TABLE [dbo].[Newsletter]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[email] [nvarchar] (80) COLLATE French_CI_AS NOT NULL,
[idClient] [bigint] NULL,
[partenaire] [bit] NOT NULL,
[provenance] [char] (1) COLLATE French_CI_AS NULL,
[enregistrer] [bit] NULL CONSTRAINT [DF_Newsletter_enregistrer] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Newsletter] ADD CONSTRAINT [PK_Newsletter] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
