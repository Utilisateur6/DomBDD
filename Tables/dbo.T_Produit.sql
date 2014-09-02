CREATE TABLE [dbo].[T_Produit]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idProduit] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (100) COLLATE French_CI_AS NULL,
[description] [nvarchar] (255) COLLATE French_CI_AS NULL,
[descriptionLongue] [text] COLLATE French_CI_AS NULL,
[lieu] [nvarchar] (255) COLLATE French_CI_AS NULL,
[planAcces] [text] COLLATE French_CI_AS NULL,
[rdv] [text] COLLATE French_CI_AS NULL,
[programme] [text] COLLATE French_CI_AS NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NULL,
[keywords] [nvarchar] (max) COLLATE French_CI_AS NULL,
[cadre] [text] COLLATE French_CI_AS NULL,
[renommage] [nvarchar] (max) COLLATE French_CI_AS NULL,
[redirection301] [nvarchar] (max) COLLATE French_CI_AS NULL,
[lieugeo] [nvarchar] (max) COLLATE French_CI_AS NULL,
[latitude] [float] NULL,
[longitude] [float] NULL,
[valgeo] [int] NULL,
[spe] [nvarchar] (max) COLLATE French_CI_AS NULL,
[lieusuggest] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Produit] ADD CONSTRAINT [PK_T_Produits] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
