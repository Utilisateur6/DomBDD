CREATE TABLE [dbo].[VoucherNoPlanning]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[date] [datetime] NULL,
[dateNouvo] [datetime] NULL,
[idvoucher] [bigint] NULL,
[idprp] [bigint] NULL,
[idpre] [bigint] NULL,
[idpresta] [bigint] NULL,
[idemploye2] [bigint] NULL,
[idformule] [bigint] NULL,
[dateP] [datetime] NULL
) ON [PRIMARY]
GO
