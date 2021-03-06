USE [master]
GO
/****** Object:  Database [DoAnLTM]    Script Date: 26/05/2021 10:23:58 SA ******/
CREATE DATABASE [DoAnLTM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAnLTM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnLTM.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoAnLTM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnLTM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DoAnLTM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAnLTM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAnLTM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAnLTM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAnLTM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAnLTM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAnLTM] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAnLTM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAnLTM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAnLTM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAnLTM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAnLTM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAnLTM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAnLTM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAnLTM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAnLTM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAnLTM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoAnLTM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAnLTM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAnLTM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAnLTM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAnLTM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAnLTM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAnLTM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAnLTM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAnLTM] SET  MULTI_USER 
GO
ALTER DATABASE [DoAnLTM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAnLTM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAnLTM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAnLTM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAnLTM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAnLTM] SET QUERY_STORE = OFF
GO
USE [DoAnLTM]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 26/05/2021 10:23:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[MaDanhMuc] [nvarchar](255) NULL,
	[TenDanhMuc] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 26/05/2021 10:23:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[MaSanPham] [nvarchar](255) NULL,
	[TenSanPham] [nvarchar](255) NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[GiaBan] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaDanhMuc] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_ACCOUNT]    Script Date: 26/05/2021 10:23:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_ACCOUNT](
	[User_Name] [varchar](30) NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category1', N'Sữa rửa mặt & Toner')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category2', N'Tái Tạo')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category3', N'Serum')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category4', N'Kem dưỡng ẩm / Bảo vệ')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category5', N'Mắt / Môi')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category6', N'Mặt nạ & Peel')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category7', N'Chống nắng / SPF')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category8', N'Viên uống')
INSERT [dbo].[CATEGORY] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'Category9', N'Bộ sản phẩm')
GO
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product53', N'CHỐNG NẮNG TOÀN DIỆN', N'Data/Sites/1/Product/1319/murad-viet-nam-chong-nang-toan-dien.jpg', N'4.704.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product54', N'DƯỠNG SÁNG MỜ THÂM - HỖ TRỢ GIẢM BỌNG MẮT', N'Data/Sites/1/Product/1317/murad-viet-nam-dung-sang-mo-tham-ho-tro-giam-bong-mat.png', N'1.055.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product55', N'ẨM MƯỢT THANH XUÂN 1', N'Data/Sites/1/Product/1305/murad_viet_nam_am_muot_thanh_xuan_1.png', N'4.368.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product56', N'ẨM MƯỢT THANH XUÂN 2', N'Data/Sites/1/Product/1307/murad_viet_nam_am_muot_thanh_xuan_2.png', N'4.368.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product57', N'ẨM MƯỢT THANH XUÂN 3', N'Data/Sites/1/Product/1309/murad_viet_nam_am_muot_thanh_xuan_3.png', N'4.368.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product58', N'ẨM MƯỢT THANH XUÂN 4', N'Data/Sites/1/Product/1311/murad_viet_nam_am_muot_thanh_xuan_4.png', N'4.368.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product59', N'CHỐNG NẮNG BÊN TRONG - GIẢM NÁM BÊN NGOÀI', N'Data/Sites/1/Product/1313/murad_viet_nam_chong_nang_ben_trong_giam_nam_ben_ngoai.jpg', N'3.926.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product60', N'Cấp ẩm - Tươi trẻ da MURAD HYDRATING TONER', N'Data/Sites/1/Product/1294/ctkm_thang_4-42__1__53c9112c89ed4554b6bf1f6cb868aaef_master.jpg', N'891.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product61', N'Cấp ẩm - Bật tông da MURAD HYDRATING TONER', N'Data/Sites/1/Product/1292/1aw.jpg', N'891.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product62', N'10 LẦN LIỆU TRÌNH "KÍCH HOẠT THANH XUÂN" & 3 SẢN PHẨM', N'Data/Sites/1/Product/1268/333.jpg', N'7.200.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product63', N'10 LẦN LIỆU TRÌNH "KÍCH HOẠT THANH XUÂN" & 1 SẢN PHẨM', N'Data/Sites/1/Product/1266/222.jpg', N'4.798.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product64', N'10 LẦN LIỆU TRÌNH "KÍCH HOẠT THANH XUÂN" 8 BƯỚC', N'Data/Sites/1/Product/1264/111.jpg', N'3.000.000', N'', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product65', N'Intense Hydration', N'Data/Sites/1/Product/1270/photo_2021-03-12_16-25-35.jpg', N'1.125.000', N'Gel rửa mặt tẩy trang Prebiotic & Toner', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product66', N'Bye Acne & Oily skin!', N'Data/Sites/1/Product/1248/artboard-22-80.jpg', N'1.280.000', N'Tạm biệt mụn & bóng nhờn', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product67', N'SKIP ACNE - SKIP OIL', N'Data/Sites/1/Product/1279/banner_900x900(5)-50.jpg', N'1.628.000', N'4h giảm mụn - 10h kiểm soát dầu', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product68', N'Anti-acne & anti-aging', N'Data/Sites/1/Product/1249/artboard-21-80.jpg', N'1.768.000', N'Sạch mụn khỏe da', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product69', N'Dew Gooder', N'Data/Sites/1/Product/1186/photo_2021-01-06_09-21-43.jpg', N'1.958.000', N'Phục hồi chuyên sâu - ẩm mượt từng tế bào', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product70', N'THE BEAUTY SLEEPERS', N'Data/Sites/1/Product/1202/photo_2021-01-06_09-22-03.jpg', N'2.258.000', N'Đẹp từ trong giấc ngủ', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product71', N'ANTI-ACNE', N'Data/Sites/1/Product/1277/banner_900x900(6)-50.jpg', N'2.378.000', N'Chống lại các vấn đề da mụn', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product72', N'The Hydration Heroes', N'Data/Sites/1/Product/1176/photo_2021-01-06_09-21-58.jpg', N'2.800.000', N'Ẩm mịn làn da - xua tan lão hóa', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product73', N'Keep Skin Smooth and Young', N'Data/Sites/1/Product/1252/nh%E1%BB%8F.jpg', N'2.800.000', N'Nét da căng mượt - Xua tan lão hóa', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product74', N'OVERNIGHT RADIANCE SET', N'Data/Sites/1/Product/1273/banner_900x900(3)-80-(1).jpg', N'2.800.000', N'Thải độc sáng da - đẩy xa thâm nám', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product75', N'Love at first bright', N'Data/Sites/1/Product/1138/photo_2021-01-06_09-22-59.jpg', N'2.800.000', N'Yêu ngay làn da sáng', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product76', N'DAILY ILLUMINATORS SET', N'Data/Sites/1/Product/1275/banner_900x900(2)-80-(1).jpg', N'2.998.000', N'Bật sáng tông da - Ngăn ngừa sạm nám', N'Category9')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product46', N'Invisiblur Perfecting Shield Broad Spectrum SPF 30', N'Data/Sites/1/Product/605/invi-up-web-compressed.jpg', N'2.168.000', N'Kem chống nắng vô hình 3 trong 1', N'Category7')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product47', N'Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', N'Data/Sites/1/Product/889/duoc-my-pham-murad-oil-and-pore-control-mattifier-broad-spectrum-spf-45.jpg', N'1.628.000', N'Kem dưỡng kiềm dầu & Chống nắng thế hệ mới', N'Category7')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product48', N'Essential-C Day Moisture Broad SpectrumSPF 30 | PA+++', N'Data/Sites/1/Product/598/duoc-my-pham-murad-essential-c-day-moisture-broad-spectrum-spf-30.jpg', N'2.104.000', N'Kem dưỡng ban ngày - làm khỏe da và bảo vệ da khỏi sự lão hóa do môi trường', N'Category7')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product49', N'City Skin Age Defense Broad Spectrum SPF 50 PA++++', N'Data/Sites/1/Product/597/citiskin-800x800.jpg', N'2.358.000', N'Kem chống nắng khoáng chất 5 tác động', N'Category7')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product50', N'Anti-Aging Moisturizer Broad Spectrum SPF 30 PA+++', N'Data/Sites/1/Product/635/duoc-my-pham-murad-anti-aging-moisturizer-broad-spectrum-spf30-compressor.jpg', N'1.768.000', N'Kem dưỡng & Chống nắng cho da mụn lão hóa', N'Category7')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product28', N'Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', N'Data/Sites/1/Product/889/duoc-my-pham-murad-oil-and-pore-control-mattifier-broad-spectrum-spf-45.jpg', N'1.628.000', N'Kem dưỡng kiềm dầu & Chống nắng thế hệ mới', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product29', N'Essential-C Day Moisture Broad SpectrumSPF 30 | PA+++', N'Data/Sites/1/Product/598/duoc-my-pham-murad-essential-c-day-moisture-broad-spectrum-spf-30.jpg', N'2.104.000', N'Kem dưỡng ban ngày - làm khỏe da và bảo vệ da khỏi sự lão hóa do môi trường', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product30', N'Retinol Youth Renewal Night Cream', N'Data/Sites/1/Product/712/duoc-my-pham-murad-retinol-youth-renewal-night-cream.jpg', N'2.450.000', N'Kem dưỡng ban đêm hồi sinh làn da lão hóa', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product31', N'Nutrient-Charged Water Gel', N'Data/Sites/1/Product/756/duoc-my-pham-murad-nutrient-charged-water-gel.jpg', N'1.958.000', N'Gel sạc nước dinh dưỡng - giữ ẩm đến 5 ngày', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product32', N'Skin Perfecting Lotion', N'Data/Sites/1/Product/620/duoc-my-pham-murad-skin-perfecting-lotion-compressor.png', N'1.228.000', N'Kem dưỡng ẩm ban đêm dành cho da dầu', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product33', N'Hydro-Dynamic Ultimate Moisture', N'Data/Sites/1/Product/564/hydration-2020.jpg', N'2.580.000', N'Kem dưỡng siêu cung cấp độ ẩm', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product34', N'City Skin Overnight Detox Moisturizer', N'Data/Sites/1/Product/600/duoc-my-pham-murad-city-skin-overnight-detox-moisturizer.jpg', N'2.518.000', N'Kem thải độc da ban đêm với chiết xuất tế bào gốc', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product35', N'Anti-Aging Moisturizer Broad Spectrum SPF 30 PA+++', N'Data/Sites/1/Product/635/duoc-my-pham-murad-anti-aging-moisturizer-broad-spectrum-spf30-compressor.jpg', N'1.768.000', N'Kem dưỡng & Chống nắng cho da mụn lão hóa', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product36', N'CLARIFYING OIL-FREE WATER GEL', N'Data/Sites/1/Product/1103/oil-free.jpg', N'1.578.000', N'Gel ngừa mụn số 1 bằng công nghệ cách ly vi khuẩn', N'Category4')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product37', N'REVITALIXIR RECOVERY SERUM', N'Data/Sites/1/Product/852/up-web-rivi.jpg', N'3.168.000', N'Serum phục hồi tổn thương', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product38', N'Retinol Youth Renewal Eye Serum', N'Data/Sites/1/Product/625/duoc-my-pham-murad-retinol-youth-renewal-eye-serum.jpg', N'2.580.000', N'Serum giảm thiểu nếp nhăn và bọng mắt', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product39', N'Hydro Dynamic Ultimate Moisture For Eyes', N'Data/Sites/1/Product/567/duoc-my-pham-murad-hydro-dynami-ultimate-moisture-for-eyes-compressor.jpg', N'1.890.000', N'Kem dưỡng siêu cung cấp độ ẩm cho mắt', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product40', N'Vita-C Eyes Dark Circle Corrector', N'Data/Sites/1/Product/1013/kem-dieu-chinh-quang-tham-mat-the-he-moi-vita-c-eyes-dark-circle-corrector-murad-viet-nam-4.png', N'2.328.000', N'Kem điều chỉnh quầng thâm mắt thế hệ mới', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product41', N'Renewing Eye Cream', N'Data/Sites/1/Product/612/duoc-my-pham-murad-renewing-eye-cream.jpg', N'2.278.000', N'Kem giảm bọng mắt, quầng thâm và vết chân chim', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product42', N'Rapid Collagen Infusion For Lips', N'Data/Sites/1/Product/604/duoc-my-pham-murad-rapid-collagen--infusion-for-lips.jpg', N'980.000', N'Serum kích thích bổ sung collagen cho môi', N'Category5')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product43', N'Replenishing Multi-Acid Peel', N'Data/Sites/1/Product/891/duoc-my-pham-murad-hydrating-toner.jpg', N'2.298.000', N'Peel da kích hoạt thanh xuân', N'Category6')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product44', N'Clarifying Mask', N'Data/Sites/1/Product/1095/clarifying-mask.jpg', N'1.280.000', N'Mặt nạ đất sét hút dầu & ngừa mụn', N'Category6')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product45', N'Intensive-C Radiance Peel', N'Data/Sites/1/Product/630/duoc-my-pham-murad-intensive-c-radiance-peel.png', N'1.589.000', N'Mặt nạ tái tạo làn da tươi sáng, mịn màng và ẩm mượt', N'Category6')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product16', N'Night Fix Enzyme Treatment', N'Data/Sites/1/Product/857/duoc-my-pham-murad-night-fix-enzyme-treatment.jpg', N'2.258.000', N'Enzyme chỉnh sửa da ban đêm', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product17', N'REVITALIXIR RECOVERY SERUM', N'Data/Sites/1/Product/852/up-web-rivi.jpg', N'3.168.000', N'Serum phục hồi tổn thương', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product18', N'Rapid Age Spot Correcting Serum', N'Data/Sites/1/Product/710/duoc-my-pham-murad-rapid-age-spot-correcting-serum.jpg', N'2.800.000', N'Serum giảm nám 7 ngày', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product19', N'PREBIOTIC 3-IN-1 MULTIMIST', N'Data/Sites/1/Product/833/duoc-my-pham-murad-prebiotic-3-in-1-multimist.jpg', N'998.000', N'Phun sương sinh học đa chức năng', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product20', N'RETINOL YOUTH RENEWAL SERUM', N'Data/Sites/1/Product/880/duoc-my-pham-murad-retinol-youth-renewal-serum.jpg', N'3.118.000', N'Serum Retinol số 1 tại Mỹ', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product21', N'Invisiblur Perfecting Shield Broad Spectrum SPF 30', N'Data/Sites/1/Product/605/invi-up-web-compressed.jpg', N'2.168.000', N'Kem chống nắng vô hình 3 trong 1', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product22', N'Multi-Vitamin Infusion Oil', N'Data/Sites/1/Product/754/duoc-my-pham-murad-multi-vitamin-infusion-oil.jpg', N'2.288.000', N'Dầu dưỡng da đa chức năng cho làn da căng mướt', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product23', N'OUTSMART ACNE (BLEMISH) CLARIFYING TREATMENT', N'Data/Sites/1/Product/763/photo_2020-09-09_11-27-12.jpg', N'1.800.000', N'Serum giảm mụn "thông minh” - thanh khiết làn da chỉ trong 1 tuần', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product24', N'Rapid Collagen Infusion', N'Data/Sites/1/Product/603/giam-nhan.jpg', N'2.800.000', N'Tinh chất kích thích sản sinh collagen', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product25', N'Hydro-Dynamic Quenching Essence', N'Data/Sites/1/Product/1322/duoc-my-pham-murad-hydro-dynamic-quenching-essence.jpg', N'2.800.000', N'Tinh chất căng mọng', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product26', N'Replenishing Multi-Acid Peel', N'Data/Sites/1/Product/1291/duoc-my-pham-murad-hydrating-toner.jpg', N'2.298.000', N'Peel da kích hoạt thanh xuân', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product27', N'Vita-C Glycolic Brightening Serum', N'Data/Sites/1/Product/1011/serum-lam-sang-da-vita-c-glycolic-brightening-serum-murad-viet-nam-0.png', N'2.998.000', N'Serum bật sáng tông da', N'Category3')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product1', N'PREBIOTIC 4-IN-1 MULTICLEANSER', N'Data/Sites/1/Product/832/duoc-my-pham-murad_prebiotic_4_in_1_multicleanser.jpg', N'1.125.000', N'Sữa rửa mặt tẩy trang sinh học 4 trong 1', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product2', N'Clarifying Cleanser', N'Data/Sites/1/Product/562/duoc-my-pham-murad-clarifying-cleanser-compressor.jpg', N'980.000', N'Gel rửa mặt dành cho da mụn', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product3', N'AHA/BHA Exfoliating Cleanser', N'Data/Sites/1/Product/561/ahabha_2020.jpg', N'1.300.000', N'Sữa rửa mặt & Tẩy tế bào chết - Loại bỏ tạp chất và thông thoáng lỗ chân lông', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product4', N'Essential-C Cleanser', N'Data/Sites/1/Product/593/duoc-my-pham-murad-essential-c-cleanser.jpg', N'1.238.000', N'Sữa rửa mặt làm khỏe và phục hồi độ ẩm', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product5', N'Time Release Blemish Cleanser', N'Data/Sites/1/Product/725/duoc-my-pham-murad-time-release-acne-cleanser.jpg', N'1.160.000', N'Sữa rửa mặt giảm mụn và ngừa lão hoá', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product6', N'Refreshing Cleanser', N'Data/Sites/1/Product/601/refreshing-cleanser-(2).jpg', N'1.123.000', N'Sữa rửa mặt & Tẩy trang giúp làm sạch và tươi tỉnh da', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product7', N'Acne Body Wash', N'Data/Sites/1/Product/642/duoc-my-pham-murad-acne-body-wash.jpg', N'1.368.000', N'Gel tắm kiểm soát mụn cơ thể & Tẩy tế bào chết dịu nhẹ', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product8', N'Clarifying Toner', N'Data/Sites/1/Product/565/duoc-my-pham-murad-clarifying-toner-compressor.jpg', N'880.000', N'Toner dành cho da mụn', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product9', N'Essential-C Toner', N'Data/Sites/1/Product/594/duoc-my-pham-murad-essential-c-toner-compressor.jpg', N'980.000', N'Toner làm khỏe da', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product10', N'Hydrating Toner', N'Data/Sites/1/Product/609/toner-20202020.png', N'891.000', N'Toner cấp ẩm và phục hồi sinh khí cho da', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product11', N'Clarifying Body Spray', N'Data/Sites/1/Product/643/duoc-my-pham-murad-clarifying-body-spray.jpg', N'1.298.000', N'Giảm mụn cơ thể và vi khuẩn với công nghệ xịt tia 360 độ', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product12', N'Clarifying Cream Cleanser', N'Data/Sites/1/Product/1303/muradvietnam-kem-rua-mat-clarifying-cream-cleanser.jpg', N'1.268.000', N'Kem rửa mặt dành cho da mụn lão hóa', N'Category1')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product13', N'AHA/BHA Exfoliating Cleanser', N'Data/Sites/1/Product/561/ahabha_2020.jpg', N'1.300.000', N'Sữa rửa mặt & Tẩy tế bào chết - Loại bỏ tạp chất và thông thoáng lỗ chân lông', N'Category2')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product14', N'Replenishing Multi-Acid Peel', N'Data/Sites/1/Product/891/duoc-my-pham-murad-hydrating-toner.jpg', N'2.298.000', N'Peel da kích hoạt thanh xuân', N'Category2')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product15', N'Intensive-C Radiance Peel', N'Data/Sites/1/Product/630/duoc-my-pham-murad-intensive-c-radiance-peel.png', N'1.589.000', N'Mặt nạ tái tạo làn da tươi sáng, mịn màng và ẩm mượt', N'Category2')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product51', N'Pure Skin Clarifying Dietary Supplement', N'Data/Sites/1/Product/621/vien-mun-new2020-(2).jpg', N'1.598.000', N'Viên uống bảo vệ sức khoẻ', N'Category8')
INSERT [dbo].[PRODUCT] ([MaSanPham], [TenSanPham], [HinhAnh], [GiaBan], [MoTa], [MaDanhMuc]) VALUES (N'Product52', N'ES Pomphenol Sunguard Dietary Supplement', N'Data/Sites/1/Product/591/duoc-my-pham-murad-es-pomphenol-sunguard-dietary-supplement-compressor.jpg', N'1.568.000', N'Thực phẩm bảo vệ sức khoẻ', N'Category8')
GO
INSERT [dbo].[USER_ACCOUNT] ([User_Name], [Gender], [Password], [Name]) VALUES (N'hv', N'M', N'hv001', N'Nguyễn Hữu Vọng')
INSERT [dbo].[USER_ACCOUNT] ([User_Name], [Gender], [Password], [Name]) VALUES (N'jerry', N'M', N'jerry001', NULL)
INSERT [dbo].[USER_ACCOUNT] ([User_Name], [Gender], [Password], [Name]) VALUES (N'tom', N'M', N'tom001', NULL)
GO
USE [master]
GO
ALTER DATABASE [DoAnLTM] SET  READ_WRITE 
GO
