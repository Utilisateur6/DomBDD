CREATE TABLE [dbo].[LandingPage]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[resume] [text] COLLATE French_CI_AS NULL,
[description] [text] COLLATE French_CI_AS NULL,
[title] [nvarchar] (max) COLLATE French_CI_AS NULL,
[url] [nvarchar] (max) COLLATE French_CI_AS NULL,
[du] [datetime] NULL,
[au] [datetime] NULL,
[type] [int] NULL,
[idtemplate] [bigint] NULL,
[available] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LandingPage] ADD CONSTRAINT [PK_LandingPage] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
