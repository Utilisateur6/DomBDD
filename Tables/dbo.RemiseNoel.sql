CREATE TABLE [dbo].[RemiseNoel]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idremise] [bigint] NULL,
[idcommande] [bigint] NULL,
[montantoffert] [int] NULL,
[montantcommande] [decimal] (18, 4) NULL
) ON [PRIMARY]
GO
