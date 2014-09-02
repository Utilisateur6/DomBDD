CREATE TABLE [dbo].[CommandeInvalidation]
(
[id] [uniqueidentifier] NOT NULL,
[doc] [datetime] NULL,
[idemploye] [bigint] NULL,
[idcommande] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommandeInvalidation] ADD CONSTRAINT [PK_CommandeInvalidation] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
