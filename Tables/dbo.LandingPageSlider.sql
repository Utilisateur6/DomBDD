CREATE TABLE [dbo].[LandingPageSlider]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[code] [nvarchar] (50) COLLATE French_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LandingPageSlider] ADD CONSTRAINT [PK_LandingPageSlider] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
