USE [ThuVien]
GO
/****** Object:  Table [dbo].[Bao]    Script Date: 3/4/22 10:59:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bao](
	[MaTaiLieu] [char](10) NOT NULL,
	[TenNhaXuatBan] [nvarchar](40) NULL,
	[SoBanPhatHanh] [int] NULL,
	[NgayPhatHanh] [tinyint] NULL,
 CONSTRAINT [PK_Bao] PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 3/4/22 10:59:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaTaiLieu] [char](10) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[TenNhaXuatBan] [nvarchar](40) NULL,
	[SoBanPhatHanh] [int] NULL,
	[SoTrang] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TapChi]    Script Date: 3/4/22 10:59:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TapChi](
	[MaTaiLieu] [char](10) NOT NULL,
	[TenNhaXuatBan] [nvarchar](40) NULL,
	[SoBanPhatHanh] [int] NULL,
	[SoPhatHanh] [char](8) NULL,
	[ThangPhatHanh] [tinyint] NULL,
 CONSTRAINT [PK_TapChi] PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bao] ([MaTaiLieu], [TenNhaXuatBan], [SoBanPhatHanh], [NgayPhatHanh]) VALUES (N'BA20220001', N'Nguyễn Thanh', 3000, 22)
INSERT [dbo].[Bao] ([MaTaiLieu], [TenNhaXuatBan], [SoBanPhatHanh], [NgayPhatHanh]) VALUES (N'BA20220002', N'Trần Minh', 5000, 15)
GO
INSERT [dbo].[Sach] ([MaTaiLieu], [TenTacGia], [TenNhaXuatBan], [SoBanPhatHanh], [SoTrang]) VALUES (N'SA20160013', N'Bá Cháy', N'Hồng Đức', 3000, 1500)
INSERT [dbo].[Sach] ([MaTaiLieu], [TenTacGia], [TenNhaXuatBan], [SoBanPhatHanh], [SoTrang]) VALUES (N'SA20220001', N'Nguyễn Văn Việt', N'Kim Đồng', 2000, 1000)
GO
INSERT [dbo].[TapChi] ([MaTaiLieu], [TenNhaXuatBan], [SoBanPhatHanh], [SoPhatHanh], [ThangPhatHanh]) VALUES (N'TL20020001', N'Thuận Hoá', 2000, N'AE123456', 12)
INSERT [dbo].[TapChi] ([MaTaiLieu], [TenNhaXuatBan], [SoBanPhatHanh], [SoPhatHanh], [ThangPhatHanh]) VALUES (N'TL20030002', N'Kim Đồng', 100, N'CC123321', 8)
GO
