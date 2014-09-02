CREATE TABLE [dbo].[ImageProduit]
(
[idproduit] [bigint] NULL,
[numimage] [int] NULL,
[imgpath] [nvarchar] (max) COLLATE French_CI_AS NULL,
[xR] [int] NULL,
[yR] [int] NULL,
[hR] [int] NULL,
[wR] [int] NULL,
[format1] [bit] NULL,
[format2] [bit] NULL,
[format3] [bit] NULL,
[dateok] [datetime] NULL,
[isok] [bit] NULL,
[istoregen] [bit] NULL,
[idemploye] [bigint] NULL,
[dateregen] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
