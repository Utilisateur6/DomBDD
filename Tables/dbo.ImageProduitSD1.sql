CREATE TABLE [dbo].[ImageProduitSD1]
(
[idproduit] [bigint] NULL,
[numimage] [int] NULL,
[imgpath] [nvarchar] (max) COLLATE French_CI_AS NULL,
[xR] [int] NULL,
[yR] [int] NULL,
[hR] [int] NULL,
[wR] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
