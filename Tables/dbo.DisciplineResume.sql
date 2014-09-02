CREATE TABLE [dbo].[DisciplineResume]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[iddiscipline] [bigint] NULL,
[objectif] [text] COLLATE French_CI_AS NULL,
[publicConseille] [text] COLLATE French_CI_AS NULL,
[programme] [text] COLLATE French_CI_AS NULL,
[appareil] [text] COLLATE French_CI_AS NULL,
[qrs] [text] COLLATE French_CI_AS NULL,
[conditions] [text] COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
