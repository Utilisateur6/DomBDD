CREATE TABLE [dbo].[PreReservationPrestataireDes]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[doc] [datetime] NULL,
[idprestataire] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PreReservationPrestataireDes] ADD CONSTRAINT [PK_PreReservationPrestataireDes] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
