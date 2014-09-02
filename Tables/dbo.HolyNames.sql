CREATE TABLE [dbo].[HolyNames]
(
[id] [bigint] NULL,
[month] [int] NULL,
[day] [int] NULL,
[celebration] [nvarchar] (max) COLLATE French_CI_AS NULL,
[type] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
