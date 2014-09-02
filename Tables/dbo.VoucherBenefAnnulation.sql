CREATE TABLE [dbo].[VoucherBenefAnnulation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idvoucher] [bigint] NULL,
[doc] [datetime] NULL,
[label] [nvarchar] (50) COLLATE French_CI_AS NULL
) ON [PRIMARY]
GO
