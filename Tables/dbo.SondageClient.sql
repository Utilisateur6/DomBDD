CREATE TABLE [dbo].[SondageClient]
(
[idClient] [bigint] NULL,
[idVoucher] [bigint] NULL,
[idProduit] [bigint] NULL,
[DateEnvoi] [datetime] NULL,
[idSondage] [bigint] NULL,
[Envoi1] [bit] NULL,
[Envoi2] [bit] NULL,
[valide] [bit] NULL,
[visible] [bit] NULL
) ON [PRIMARY]
GO
