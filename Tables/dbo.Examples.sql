CREATE TABLE [dbo].[Examples]
(
[ExampleId] [int] NOT NULL IDENTITY(1, 1),
[ExampleName] [nvarchar] (50) COLLATE French_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Examples] ADD CONSTRAINT [PK_Examples] PRIMARY KEY CLUSTERED  ([ExampleId]) ON [PRIMARY]
GO
