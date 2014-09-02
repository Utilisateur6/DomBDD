CREATE TABLE [dbo].[T_Departement]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idDepartement] [bigint] NOT NULL,
[langue] [nchar] (2) COLLATE French_CI_AS NOT NULL,
[nom] [nvarchar] (255) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Departement] ADD CONSTRAINT [PK_T_Departement] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Idx_t_departement] ON [dbo].[T_Departement] ([idDepartement], [langue]) WITH (ALLOW_PAGE_LOCKS=OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Departement] ADD CONSTRAINT [FK_T_Departement_Departement] FOREIGN KEY ([idDepartement]) REFERENCES [dbo].[Departement] ([id])
GO
