USE [Kurum]
GO
/****** Object:  Table [dbo].[Hgs]    Script Date: 12.11.2019 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hgs](
	[HgsId] [int] IDENTITY(1,1) NOT NULL,
	[HgsHesap] [int] NOT NULL,
	[MusteriTc] [nvarchar](11) NOT NULL,
	[Tutar] [decimal](18, 2) NOT NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_Hgs] PRIMARY KEY CLUSTERED 
(
	[HgsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hgs] ON 

INSERT [dbo].[Hgs] ([HgsId], [HgsHesap], [MusteriTc], [Tutar], [Tarih]) VALUES (1, 61362, N'12345678911', CAST(150.50 AS Decimal(18, 2)), CAST(N'2019-11-12T22:54:13.093' AS DateTime))
INSERT [dbo].[Hgs] ([HgsId], [HgsHesap], [MusteriTc], [Tutar], [Tarih]) VALUES (2, 18653, N'11111111111', CAST(100.00 AS Decimal(18, 2)), CAST(N'2019-11-12T22:36:28.067' AS DateTime))
INSERT [dbo].[Hgs] ([HgsId], [HgsHesap], [MusteriTc], [Tutar], [Tarih]) VALUES (3, 52811, N'11111111111', CAST(100.00 AS Decimal(18, 2)), CAST(N'2019-11-12T22:39:34.520' AS DateTime))
INSERT [dbo].[Hgs] ([HgsId], [HgsHesap], [MusteriTc], [Tutar], [Tarih]) VALUES (4, 32326, N'14725836914', CAST(180.10 AS Decimal(18, 2)), CAST(N'2019-11-12T22:53:00.640' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hgs] OFF
ALTER TABLE [dbo].[Hgs]  WITH CHECK ADD  CONSTRAINT [FK_Hgs_Musteriler] FOREIGN KEY([HgsId])
REFERENCES [dbo].[Hgs] ([HgsId])
GO
ALTER TABLE [dbo].[Hgs] CHECK CONSTRAINT [FK_Hgs_Musteriler]
GO
