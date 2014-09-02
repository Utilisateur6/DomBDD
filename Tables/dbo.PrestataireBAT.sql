CREATE TABLE [dbo].[PrestataireBAT]
(
[id] [uniqueidentifier] NOT NULL,
[doc] [datetime] NULL,
[idprestataire] [bigint] NULL,
[idproduit] [bigint] NULL,
[idemploye] [bigint] NULL,
[status] [int] NULL,
[dateretourpresta] [datetime] NULL,
[retourprestaemp] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PrestataireBAT] ADD CONSTRAINT [PK_PrestataireBAT] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
