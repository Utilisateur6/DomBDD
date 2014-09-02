CREATE TABLE [dbo].[PrestataireMailCommission]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idprestataire] [bigint] NULL,
[doc] [datetime] NULL,
[body] [text] COLLATE French_CI_AS NULL,
[iduser] [bigint] NULL,
[idcontrolevoucher] [bigint] NULL,
[sujet] [nvarchar] (max) COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
