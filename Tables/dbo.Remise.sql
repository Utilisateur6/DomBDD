CREATE TABLE [dbo].[Remise]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[nom] [nvarchar] (30) COLLATE French_CI_AS NOT NULL,
[permanente] [bit] NOT NULL,
[remise] [decimal] (18, 2) NOT NULL,
[passport] [bit] NOT NULL,
[dateFin] [datetime] NOT NULL,
[idClient] [bigint] NULL,
[valide] [bit] NOT NULL,
[idParrain] [bigint] NULL,
[prestataireExterne] [bit] NULL,
[idFacture] [bigint] NULL,
[idProduit] [bigint] NULL,
[uniqueproduit] [bit] NULL,
[dateResaMax] [datetime] NULL,
[opeValide] [bit] NULL,
[arretPartenariat] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Remise] ADD CONSTRAINT [PK_Remise] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
