CREATE TABLE [dbo].[LandingPageTemplate]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[tplname] [nvarchar] (max) COLLATE French_CI_AS NULL,
[tplcontent] [text] COLLATE French_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LandingPageTemplate] ADD CONSTRAINT [PK_LandingPageTemplate] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
