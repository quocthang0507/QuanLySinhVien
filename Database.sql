USE [CNPM]
GO
/****** Object:  Table [dbo].[BinhChonYKien]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhChonYKien](
	[MaYKien] [int] NOT NULL,
	[MSSV] [varchar](10) NOT NULL,
	[TanThanh] [bit] NULL,
	[BinhLuan] [text] NULL,
 CONSTRAINT [PK_BINHCHONYKIEN] PRIMARY KEY CLUSTERED 
(
	[MaYKien] ASC,
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDRL]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDRL](
	[MaChiTietDRL] [int] IDENTITY(1,1) NOT NULL,
	[MaDRL] [int] NOT NULL,
	[M001] [tinyint] NULL,
	[M002] [tinyint] NULL,
	[M003] [tinyint] NULL,
	[M004] [tinyint] NULL,
	[M005] [tinyint] NULL,
	[M006] [tinyint] NULL,
	[M007] [tinyint] NULL,
	[M008] [tinyint] NULL,
	[M009] [tinyint] NULL,
	[M010] [tinyint] NULL,
	[M011] [tinyint] NULL,
	[M012] [tinyint] NULL,
	[M013] [tinyint] NULL,
	[M014] [tinyint] NULL,
	[M015] [tinyint] NULL,
	[M016] [tinyint] NULL,
	[M017] [tinyint] NULL,
	[M018] [tinyint] NULL,
	[M019] [tinyint] NULL,
	[M020] [tinyint] NULL,
	[M021] [tinyint] NULL,
	[M022] [tinyint] NULL,
	[M023] [tinyint] NULL,
	[M024] [tinyint] NULL,
 CONSTRAINT [PK_CHITIETDRL] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDRL] ASC,
	[MaDRL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemRenLuyen]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemRenLuyen](
	[MaDRL] [int] IDENTITY(1,1) NOT NULL,
	[MSSV] [varchar](10) NULL,
	[HocKy] [tinyint] NULL,
	[NamHoc] [smallint] NULL,
	[TongDiem] [int] NULL,
	[XepLoai] [nvarchar](10) NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDRL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MAGV] [varchar](100) NOT NULL,
	[BoMon] [nvarchar](1000) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChiThuongTru] [nvarchar](1000) NULL,
	[DiaChiTamTru] [nvarchar](1000) NULL,
	[SDT] [varchar](50) NULL,
	[EMAIL] [varchar](200) NULL,
	[ThanNhan] [nvarchar](max) NULL,
	[HocVi] [nvarchar](100) NULL,
	[HocHam] [nvarchar](100) NULL,
	[NgayBatDau] [date] NULL,
	[ConDay] [bit] NOT NULL,
	[LaBiThuDoan] [bit] NOT NULL,
 CONSTRAINT [pk_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoatDongPhongTrao]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoatDongPhongTrao](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TenHD] [nvarchar](1000) NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
 CONSTRAINT [pk_HoatDongPhongTrao] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhaoSat]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhaoSat](
	[MaKS] [int] IDENTITY(1,1) NOT NULL,
	[TenKS] [nvarchar](100) NOT NULL,
	[MoTa] [ntext] NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [pk_KhaoSat] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [varchar](100) NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[MaGV] [varchar](100) NULL,
 CONSTRAINT [pk_LopHoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MSSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChiThuongTru] [nvarchar](1000) NULL,
	[DiaChiTamTru] [nvarchar](1000) NULL,
	[SDT] [varchar](50) NULL,
	[EMAIL] [varchar](200) NULL,
	[ThanNhan] [nvarchar](max) NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [pk_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[ownerID] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiNguyenHocTap]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiNguyenHocTap](
	[MaTN] [int] IDENTITY(1,1) NOT NULL,
	[MAGV] [varchar](100) NULL,
	[MonHoc] [nvarchar](200) NOT NULL,
	[NgayDang] [datetime] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [pk_TaiNguyen] PRIMARY KEY CLUSTERED 
(
	[MaTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[TenTB] [nvarchar](max) NOT NULL,
	[UuTien] [int] NULL,
	[NgayDang] [datetime] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [pk_ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroLyGiaoVu]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroLyGiaoVu](
	[MaTLGV] [varchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChiThuongTru] [nvarchar](1000) NULL,
	[DiaChiTamTru] [nvarchar](1000) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](200) NULL,
	[ThanNhan] [nvarchar](max) NULL,
 CONSTRAINT [pk_TLGV] PRIMARY KEY CLUSTERED 
(
	[MaTLGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YKien]    Script Date: 10/22/2019 10:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YKien](
	[MaYKien] [int] IDENTITY(1,1) NOT NULL,
	[TenYKien] [nvarchar](1000) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[DuocXemXet] [bit] NULL,
	[MSSV] [varchar](10) NOT NULL,
 CONSTRAINT [pk_YKien] PRIMARY KEY CLUSTERED 
(
	[MaYKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhChonYKien] ADD  DEFAULT ((1)) FOR [TanThanh]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M001]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M002]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M003]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M004]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M005]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M006]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M007]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M008]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M009]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M010]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M011]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M012]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M013]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M014]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M015]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M016]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M017]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M018]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M019]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M020]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M021]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M022]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M023]
GO
ALTER TABLE [dbo].[ChiTietDRL] ADD  DEFAULT ((0)) FOR [M024]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT (N'Nữ') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((1)) FOR [ConDay]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((0)) FOR [LaBiThuDoan]
GO
ALTER TABLE [dbo].[SinhVien] ADD  DEFAULT (N'Nữ') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[TroLyGiaoVu] ADD  DEFAULT (N'Nữ') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[YKien] ADD  DEFAULT ((0)) FOR [DuocXemXet]
GO
ALTER TABLE [dbo].[BinhChonYKien]  WITH CHECK ADD  CONSTRAINT [FK_MAYKIEN] FOREIGN KEY([MaYKien])
REFERENCES [dbo].[YKien] ([MaYKien])
GO
ALTER TABLE [dbo].[BinhChonYKien] CHECK CONSTRAINT [FK_MAYKIEN]
GO
ALTER TABLE [dbo].[ChiTietDRL]  WITH CHECK ADD  CONSTRAINT [FK_MADRL] FOREIGN KEY([MaDRL])
REFERENCES [dbo].[DiemRenLuyen] ([MaDRL])
GO
ALTER TABLE [dbo].[ChiTietDRL] CHECK CONSTRAINT [FK_MADRL]
GO
ALTER TABLE [dbo].[DiemRenLuyen]  WITH CHECK ADD FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [fk_LopHoc] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([MAGV])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [fk_LopHoc]
GO
ALTER TABLE [dbo].[TaiNguyenHocTap]  WITH CHECK ADD  CONSTRAINT [fk_TaiNguyen] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GiangVien] ([MAGV])
GO
ALTER TABLE [dbo].[TaiNguyenHocTap] CHECK CONSTRAINT [fk_TaiNguyen]
GO
ALTER TABLE [dbo].[YKien]  WITH CHECK ADD  CONSTRAINT [FK_YKIEN] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[YKien] CHECK CONSTRAINT [FK_YKIEN]
GO
