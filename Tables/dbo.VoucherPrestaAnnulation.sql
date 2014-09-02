CREATE TABLE [dbo].[VoucherPrestaAnnulation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idvoucher] [bigint] NULL,
[motifId] [int] NULL,
[doc] [datetime] NULL
) ON [PRIMARY]
GO
