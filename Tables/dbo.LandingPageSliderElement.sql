CREATE TABLE [dbo].[LandingPageSliderElement]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[link] [nvarchar] (max) COLLATE French_CI_AS NULL,
[slidecontent] [text] COLLATE French_CI_AS NULL,
[imageLink] [nvarchar] (max) COLLATE French_CI_AS NULL,
[sliderId] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LandingPageSliderElement] ADD CONSTRAINT [PK_LandingPageSliderElement] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
