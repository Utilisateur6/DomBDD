CREATE TABLE [dbo].[LigneOptionVoucher]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[idVoucher] [bigint] NOT NULL,
[idOption] [bigint] NOT NULL,
[quantite] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneOptionVoucher] ADD CONSTRAINT [PK_LigneOptionVoucher] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LigneOptionVoucher] ADD CONSTRAINT [FK_LigneOptionVoucher_Options] FOREIGN KEY ([idOption]) REFERENCES [dbo].[Options] ([id])
GO
ALTER TABLE [dbo].[LigneOptionVoucher] ADD CONSTRAINT [FK_LigneOptionVoucher_Voucher] FOREIGN KEY ([idVoucher]) REFERENCES [dbo].[Voucher] ([id])
GO
