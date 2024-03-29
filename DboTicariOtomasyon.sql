USE [master]
GO
/****** Object:  Database [DboTicariOtomasyon]    Script Date: 8.02.2024 10:22:27 ******/
CREATE DATABASE [DboTicariOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DboTicariOtomasyon', FILENAME = N'C:\Users\pc\DboTicariOtomasyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DboTicariOtomasyon_log', FILENAME = N'C:\Users\pc\DboTicariOtomasyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DboTicariOtomasyon] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DboTicariOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DboTicariOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DboTicariOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [DboTicariOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DboTicariOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DboTicariOtomasyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DboTicariOtomasyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DboTicariOtomasyon] SET QUERY_STORE = OFF
GO
USE [DboTicariOtomasyon]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DboTicariOtomasyon]
GO
/****** Object:  Table [dbo].[TBL_ADMIN]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ADMIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [varchar](10) NULL,
	[Sifre] [varchar](10) NULL,
 CONSTRAINT [PK_TBL_ADMIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_BANKALAR]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BANKALAR](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[FirmaID] [smallint] NULL,
	[BankaAdi] [varchar](30) NULL,
	[Sehir] [varchar](13) NULL,
	[Ilce] [varchar](20) NULL,
	[Sube] [varchar](30) NULL,
	[IBAN] [varchar](30) NULL,
	[HesapNo] [varchar](20) NULL,
	[Yetkili] [varchar](30) NULL,
	[Telefon] [varchar](15) NULL,
	[Tarih] [varchar](10) NULL,
	[HesapTuru] [varchar](20) NULL,
 CONSTRAINT [PK_TBL_BANKALAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FATURABILGI]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FATURABILGI](
	[FaturaBilgiID] [int] IDENTITY(1,1) NOT NULL,
	[Seri] [char](1) NULL,
	[SiraNo] [varchar](10) NULL,
	[Tarih] [varchar](10) NULL,
	[Saat] [varchar](50) NULL,
	[VergiDaire] [varchar](40) NULL,
	[Alici] [varchar](30) NULL,
	[TeslimEden] [varchar](30) NULL,
	[TeslimAlan] [varchar](30) NULL,
 CONSTRAINT [PK_TBL_FATURABILGI] PRIMARY KEY CLUSTERED 
(
	[FaturaBilgiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FATURADETAY]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FATURADETAY](
	[FaturaUrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](20) NULL,
	[Miktar] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Tutar] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
 CONSTRAINT [PK_TBL_FATURADETAY] PRIMARY KEY CLUSTERED 
(
	[FaturaUrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FIRMAHAREKETLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FIRMAHAREKETLER](
	[HareketID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[Adet] [tinyint] NULL,
	[Personel] [int] NULL,
	[Firma] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Toplam] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
	[Tarih] [varchar](10) NULL,
	[Notlar] [varchar](250) NULL,
 CONSTRAINT [PK_TBL_FIRMAHAREKETLER] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FIRMALAR]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FIRMALAR](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](30) NULL,
	[YetkiliStatu] [varchar](30) NULL,
	[YetkiliAdSoyad] [varchar](50) NULL,
	[YetkiliTc] [char](11) NULL,
	[Sektor] [varchar](15) NULL,
	[Telefon1] [varchar](15) NULL,
	[Telefon2] [varchar](15) NULL,
	[Telefon3] [varchar](15) NULL,
	[Mail] [varchar](40) NULL,
	[Fax] [varchar](15) NULL,
	[Sehir] [varchar](13) NULL,
	[Ilce] [varchar](20) NULL,
	[VergiDaire] [varchar](30) NULL,
	[Adres] [varchar](100) NULL,
	[OzelKod1] [varchar](10) NULL,
	[OzelKod2] [varchar](10) NULL,
	[OzelKod3] [varchar](10) NULL,
 CONSTRAINT [PK_TBL_FIRMALAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_GIDERLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_GIDERLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ay] [varchar](7) NULL,
	[Yil] [char](4) NULL,
	[Elektrik] [decimal](18, 2) NULL,
	[Su] [decimal](18, 2) NULL,
	[Dogalgaz] [decimal](18, 2) NULL,
	[Internet] [decimal](18, 2) NULL,
	[Maaslar] [decimal](18, 2) NULL,
	[Ekstra] [decimal](18, 2) NULL,
	[Notlar] [varchar](500) NULL,
 CONSTRAINT [PK_TBL_GIDERLER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ILCELER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ILCELER](
	[ID] [int] NOT NULL,
	[Ilce] [varchar](30) NULL,
	[Sehir] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ILLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ILLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sehir] [varchar](13) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_KODLAR]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_KODLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirmaKod1] [varchar](300) NULL,
	[FirmaKod2] [varchar](300) NULL,
	[FirmaKod3] [varchar](300) NULL,
 CONSTRAINT [PK_TBL_KODLAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERIHAREKETLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MUSTERIHAREKETLER](
	[HareketID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[Adet] [tinyint] NULL,
	[Personel] [int] NULL,
	[Musteri] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Toplam] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
	[Tarih] [varchar](10) NULL,
	[Notlar] [varchar](250) NULL,
 CONSTRAINT [PK_TBL_MUSTERIHAREKETLER] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MUSTERILER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](30) NULL,
	[Telefon] [varchar](25) NULL,
	[Telefon2] [varchar](25) NULL,
	[TCNo] [varchar](40) NULL,
	[Mail] [varchar](50) NULL,
	[Sehir] [varchar](13) NULL,
	[Ilce] [varchar](20) NULL,
	[Adres] [varchar](100) NULL,
	[VergiDaire] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_MUSTERILER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_NOTLAR]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_NOTLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [varchar](10) NULL,
	[Saat] [varchar](50) NULL,
	[Baslik] [varchar](50) NULL,
	[Detay] [varchar](250) NULL,
	[Olusturan] [varchar](20) NULL,
	[Hitap] [varchar](20) NULL,
 CONSTRAINT [PK_TBL_NOTLAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PERSONELLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](30) NULL,
	[Telefon] [varchar](45) NULL,
	[TCNo] [char](11) NULL,
	[Mail] [varchar](40) NULL,
	[Sehir] [varchar](13) NULL,
	[Ilce] [varchar](20) NULL,
	[Adres] [varchar](100) NULL,
	[Gorev] [varchar](40) NULL,
 CONSTRAINT [PK_TBL_PERSONELLER_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_STOKLAR]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_STOKLAR](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StokTur] [varchar](20) NULL,
	[StokAdet] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_URUNLER]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_URUNLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](20) NULL,
	[Marka] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[Yil] [char](4) NULL,
	[Adet] [smallint] NULL,
	[AlisFiyat] [decimal](18, 2) NULL,
	[SatisFiyat] [decimal](18, 2) NULL,
	[Detay] [varchar](500) NULL,
 CONSTRAINT [PK_TBL_URUNLER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_ADMIN] ON 

INSERT [dbo].[TBL_ADMIN] ([ID], [KullaniciAd], [Sifre]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[TBL_ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_BANKALAR] ON 

INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (1, 2, N'Is Bankasi', N'BALIKESIR', N'BANDIRMA', N'BANDIRMA', N'CM74XNGK436804303GL3Y006N72K5R', N'348665', N'Ali Can', N'(806)  66-2 34', N'12232023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (2, 3, N'Is Bankasi', N'ANKARA', N'ÇUBUK', N'ÇUBUK', N'YL50P13J197844333F', N'158032', N'Zeynep Sahin', N'(177)  80-0 13', N'622023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (3, 4, N'Denizbank', N'ISTANBUL', N'BEYKOZ', N'BEYKOZ12', N'TH78EWXV93466076510', N'677131', N'Ahmet Yilmaz', N'(672)  18-2 29', N'1022023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (4, 5, N'Is Bankasi', N'ANKARA', N'ETIMESGUT', N'ERYAMAN', N'HD91584V7663852JQ', N'823613', N'Ayse Kaya', N'(835)  75-9 15', N'1222023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (5, 6, N'Garanti Bankasi', N'SIRNAK', N'IDIL', N'IDIL', N'TV92UWW21569608O', N'285646', N'Fatma Öztürk', N'(238)  97-0 10', N'1232024', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (6, 7, N'Vakifbank', N'SANLIURFA', N'BOZOVA', N'BOZOVA', N'HQ79XN7X9701190R0LR5KB37E', N'067197', N'Mehmet Demir', N'(689)  31-0 72', N'1162023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (7, 8, N'Denizbank', N'YALOVA', N'YALOVA MERKEZ', N'MERKEZ', N'RD806GYT869418961', N'959947', N'Zeynep Sahin', N'(836)  72-3 40', N'4142023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (8, 8, N'Halkbank', N'KARABÜK', N'KARABÜK MERKEZ', N'KARABÜK', N'AX16MDHW8280278ZW81FZ854JV', N'605384', N'Fatma Öztürk', N'(658)  23-7 26', N'12262023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (9, 5, N'Halkbank', N'SIIRT', N'SIIRT MERKEZ', N'SIIRT', N'NY19Y2I34015389DB95', N'454327', N'Fatma Öztürk', N'(267)  82-5 21', N'7132023', N'Firma')
INSERT [dbo].[TBL_BANKALAR] ([ID], [FirmaID], [BankaAdi], [Sehir], [Ilce], [Sube], [IBAN], [HesapNo], [Yetkili], [Telefon], [Tarih], [HesapTuru]) VALUES (10, 3, N'Yapi Kredi', N'YOZGAT', N'ÇAYIRALAN', N'ÇAYIR', N'CI7600A27517276SQM', N'668916', N'Ahmet Yilmaz', N'(114)  46-9 85', N'8292023', N'Firma')
SET IDENTITY_INSERT [dbo].[TBL_BANKALAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FATURABILGI] ON 

INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (1, N'A', N'00001', N'12.12.2022', N'11:35', N'Kadiköy', N'Selen Bademci', N'Feyyaz Öztonga', N'Selen Bademci')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (2, N'A', N'00002', N'25.12.2022', N'15:28', N'Kadiköy', N'Latife Mayhos', N'Figen Kavaklioglu', N'Ali Mayhos')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (3, N'A', N'00003', N'01.01.2023', N'16:36', N'Kadiköy', N'Fatma Öztürk', N'Hilal Tanrikulu', N'Fatma Öztürk')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (4, N'A', N'00004', N'18.01.2023', N'20:00', N'Kadiköy', N'Fatma Selim', N'Nihan Dagdas', N'Fatma Selim')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (5, N'A', N'00005', N'19.01.2023', N'12:30', N'KADIKÖY', N'Haydar Baturalp', N'Çiler Kasapoglu', N'Haydar Baturalp')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (6, N'A', N'00006', N'13.07.2023', N'22:21', N'Kadiköy', N'Fatma Öztürk', N'Mehmet Kaya', N'Ayse Kaya')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (7, N'B', N'41', N'30.09.2023', N'15:40', N'Kadiköy', N'Ahmet Yilmaz', N'Ali Sahin', N'Mehmet Demir')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (8, N'B', N'33', N'31.10.2023', N'18:46', N'Kadiköy', N'Ali Sahin', N'Mehmet Kaya', N'Ali Can')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (9, N'A', N'71', N'17.11.2023', N'8:27', N'Kadiköy', N'Ayse Demir', N'Ahmet Yilmaz', N'Mehmet Demir')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (10, N'A', N'31', N'22.10.2023', N'12:20', N'Kadiköy', N'Ahmet Yilmaz', N'Fatma Öztürk', N'Ahmet Yilmaz')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (11, N'A', N'80', N'26.04.2023', N'8:17', N'Kadiköy', N'Ayse Demir', N'Fatma Öztürk', N'Ahmet Yilmaz')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (12, N'B', N'54', N'05.04.2023', N'19:50', N'Kadiköy', N'Mehmet Kaya', N'Mehmet Kaya', N'Zeynep Sahin')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (13, N'A', N'77', N'14.03.2023', N'11:24', N'Kadiköy', N'Mehmet Kaya', N'Fatma Öztürk', N'Ali Can')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (14, N'A', N'86', N'12.02.2023', N'20:23', N'Kadiköy', N'Mehmet Kaya', N'Mehmet Kaya', N'Mehmet Demir')
INSERT [dbo].[TBL_FATURABILGI] ([FaturaBilgiID], [Seri], [SiraNo], [Tarih], [Saat], [VergiDaire], [Alici], [TeslimEden], [TeslimAlan]) VALUES (15, N'B', N'88', N'01.01.2024', N'20:08', N'Kadiköy', N'Ali Sahin', N'Ali Sahin', N'Mehmet Demir')
SET IDENTITY_INSERT [dbo].[TBL_FATURABILGI] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FATURADETAY] ON 

INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (1, N'Çamasir Makinesi', 1, CAST(1284.00 AS Decimal(18, 2)), CAST(1284.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (2, N'Mikrodalga Firin', 1, CAST(1644.00 AS Decimal(18, 2)), CAST(1644.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (3, N'Mikrodalga Firin', 5, CAST(1528.80 AS Decimal(18, 2)), CAST(7644.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (4, N'Çamasir Makinesi', 1, CAST(988.80 AS Decimal(18, 2)), CAST(988.80 AS Decimal(18, 2)), 1)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (5, N'Firin', 5, CAST(1455.60 AS Decimal(18, 2)), CAST(7278.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (6, N'Çamasir Makinesi', 4, CAST(2344.80 AS Decimal(18, 2)), CAST(9379.20 AS Decimal(18, 2)), 3)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (7, N'Bulasik Makinesi', 3, CAST(1000.80 AS Decimal(18, 2)), CAST(3002.40 AS Decimal(18, 2)), 3)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (8, N'Çamasir Makinesi', 5, CAST(1390.80 AS Decimal(18, 2)), CAST(6954.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (9, N'Bulasik Makinesi', 2, CAST(928.80 AS Decimal(18, 2)), CAST(1857.60 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (10, N'Buzdolabi', 5, CAST(1875.60 AS Decimal(18, 2)), CAST(9378.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (11, N'Mikrodalga Firin', 4, CAST(835.20 AS Decimal(18, 2)), CAST(3340.80 AS Decimal(18, 2)), 5)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (12, N'Bulasik Makinesi', 4, CAST(729.60 AS Decimal(18, 2)), CAST(2918.40 AS Decimal(18, 2)), 5)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (13, N'Bulasik Makinesi', 2, CAST(1233.60 AS Decimal(18, 2)), CAST(2467.20 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (14, N'Buzdolabi', 6, CAST(1160.40 AS Decimal(18, 2)), CAST(6962.40 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (15, N'Firin', 1, CAST(1380.00 AS Decimal(18, 2)), CAST(1380.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (16, N'Firin', 1, CAST(1380.00 AS Decimal(18, 2)), CAST(1380.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (17, N'Mikrodalga Firin', 4, CAST(1528.80 AS Decimal(18, 2)), CAST(6115.20 AS Decimal(18, 2)), 9)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (18, N'Bulasik Makinesi', 5, CAST(676.80 AS Decimal(18, 2)), CAST(3384.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (19, N'Mikrodalga Firin', 4, CAST(1528.80 AS Decimal(18, 2)), CAST(6115.20 AS Decimal(18, 2)), 1)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (20, N'Mikrodalga Firin', 2, CAST(1528.80 AS Decimal(18, 2)), CAST(3057.60 AS Decimal(18, 2)), 2)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (21, N'Bulasik Makinesi', 4, CAST(1593.60 AS Decimal(18, 2)), CAST(6374.40 AS Decimal(18, 2)), 1)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (22, N'Çamasir Makinesi', 1, CAST(1622.40 AS Decimal(18, 2)), CAST(1622.40 AS Decimal(18, 2)), 7)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (23, N'Firin', 3, CAST(1455.60 AS Decimal(18, 2)), CAST(4366.80 AS Decimal(18, 2)), 11)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (24, N'Buzdolabi', 1, CAST(642.00 AS Decimal(18, 2)), CAST(642.00 AS Decimal(18, 2)), 11)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (25, N'Buzdolabi', 5, CAST(642.00 AS Decimal(18, 2)), CAST(3210.00 AS Decimal(18, 2)), 11)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (26, N'Çamasir Makinesi', 1, CAST(2029.20 AS Decimal(18, 2)), CAST(2029.20 AS Decimal(18, 2)), 9)
INSERT [dbo].[TBL_FATURADETAY] ([FaturaUrunID], [UrunAd], [Miktar], [Fiyat], [Tutar], [FaturaID]) VALUES (27, N'Bulasik Makinesi', 1, CAST(2131.20 AS Decimal(18, 2)), CAST(2131.20 AS Decimal(18, 2)), 8)
SET IDENTITY_INSERT [dbo].[TBL_FATURADETAY] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FIRMAHAREKETLER] ON 

INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (1, 6, 1, 15, 3, CAST(1284.00 AS Decimal(18, 2)), CAST(1284.00 AS Decimal(18, 2)), 2, N'25.12.2022', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (2, 19, 1, 15, 3, CAST(1644.00 AS Decimal(18, 2)), CAST(1644.00 AS Decimal(18, 2)), 2, N'25.12.2022', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (3, 12, 5, 15, 5, CAST(1455.60 AS Decimal(18, 2)), CAST(7278.00 AS Decimal(18, 2)), 3, N'01.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (4, 60, 4, 15, 5, CAST(2344.80 AS Decimal(18, 2)), CAST(9379.20 AS Decimal(18, 2)), 3, N'01.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (5, 3, 3, 15, 5, CAST(1000.80 AS Decimal(18, 2)), CAST(3002.40 AS Decimal(18, 2)), 3, N'01.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (6, 88, 5, 6, 8, CAST(1390.80 AS Decimal(18, 2)), CAST(6954.00 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (7, 29, 2, 6, 8, CAST(928.80 AS Decimal(18, 2)), CAST(1857.60 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (8, 20, 5, 6, 8, CAST(1875.60 AS Decimal(18, 2)), CAST(9378.00 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (9, 100, 1, 1, 5, CAST(1622.40 AS Decimal(18, 2)), CAST(1622.40 AS Decimal(18, 2)), 7, N'30.09.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (10, 12, 3, 1, 5, CAST(1455.60 AS Decimal(18, 2)), CAST(4366.80 AS Decimal(18, 2)), 11, N'26.04.2023', NULL)
INSERT [dbo].[TBL_FIRMAHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Firma], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (11, 98, 1, 5, 25, CAST(2029.20 AS Decimal(18, 2)), CAST(2029.20 AS Decimal(18, 2)), 9, N'17.11.2023', NULL)
SET IDENTITY_INSERT [dbo].[TBL_FIRMAHAREKETLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FIRMALAR] ON 

INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (2, N'Karacahan', N'Satin alma', N'Fatma Öztürk', N'62827990130', N'Beyaz Esya', N'(996)  75-2 33', N'(999)  80-2 99', N'(082)  73-2 24', N'saleswell1@bizjournals.com', N'(818)  74-8 64', N'AFYON', N'DAZKIRI', N'DAZKIRI', N'gazi mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (3, N'Günesli A.S', N'Satin alma', N'Mehmet Demir', N'74092100208', N'Eglence', N'(488)  63-7 66', N'(520)  20-4 91', N'(627)  18-4 08', N'kcockerill2@auda.org.au', N'(966)  94-2 84', N'ISTANBUL', N'BAGCILAR', N'Sancaktepe', N'koca mustafa pasa mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (4, N'Ece Eczanesi', N'Yönetici', N'Ahmet Yilmaz', N'38163216860', N'Saglik', N'(948)  47-4 07', N'(439)  50-5 94', N'(407)  45-8 91', N'ccove3@example.com', N'(445)  85-9 56', N'ISPARTA', N'ATABEY', N'Bakirköy', N'Bakirköy gazi mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (5, N'Final Okullari', N'Müdür', N'Fatma Öztürk', N'79002023604', N'Egitim', N'(740)  47-9 94', N'(323)  16-0 11', N'(773)  39-1 98', N'njeffry4@paypal.com', N'(616)  11-8 46', N'ISTANBUL', N'GAZIOSMANPASA', N'Gaziosmanpasa', N'erhacilar mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (6, N'Mese Okullari', N'Yönetici', N'Hadiye Kahraman', N'38737558779', N'Egiitm', N'(987)  54-9 51', N'(388)  88-4 09', N'(001)  39-9 60', N'dpears5@cafepress.com', N'(882)  26-7 57', N'HATAY', N'DÖRTYOL', N'Hatay', N'sakine mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (7, N'Kalem Okullari', N'Yönetici', N'Emel Keskin', N'36697618105', N'Egitim', N'(485)  13-1 38', N'(026)  73-0 91', N'(974)  75-8 73', N'despinheira6@usatoday.com', N'(431)  49-1 73', N'ANKARA', N'SINCAN', N'Sincan', N'maltepe mahallesi 454.sokak no 34', N'', N'', N'')
INSERT [dbo].[TBL_FIRMALAR] ([ID], [Ad], [YetkiliStatu], [YetkiliAdSoyad], [YetkiliTc], [Sektor], [Telefon1], [Telefon2], [Telefon3], [Mail], [Fax], [Sehir], [Ilce], [VergiDaire], [Adres], [OzelKod1], [OzelKod2], [OzelKod3]) VALUES (8, N'Oto Selim', N'Müdür', N'Fatma Selim', N'47041343536', N'Otomotiv', N'(644)  57-0 10', N'(418)  64-0 63', N'(748)  48-3 60', N'gkiloh7@psu.edu', N'(559)  63-4 37', N'MUGLA', N'KÖYCEGIZ', N'Mugla', N'köycegiz mahallesi 454.sokak no 34', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TBL_FIRMALAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_GIDERLER] ON 

INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (1, N'Ekim', N'2024', CAST(131.21 AS Decimal(18, 2)), CAST(285.99 AS Decimal(18, 2)), CAST(1350.64 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(368.51 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (2, N'Ekim', N'2023', CAST(393.86 AS Decimal(18, 2)), CAST(307.61 AS Decimal(18, 2)), CAST(940.11 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(187.22 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (3, N'Temmuz', N'2024', CAST(465.08 AS Decimal(18, 2)), CAST(257.39 AS Decimal(18, 2)), CAST(633.73 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(230.63 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (4, N'Subat', N'2022', CAST(253.50 AS Decimal(18, 2)), CAST(90.28 AS Decimal(18, 2)), CAST(1074.67 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(485.39 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (5, N'Mayis', N'2022', CAST(206.70 AS Decimal(18, 2)), CAST(371.81 AS Decimal(18, 2)), CAST(1149.18 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(384.25 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (6, N'Kasim', N'2022', CAST(366.00 AS Decimal(18, 2)), CAST(347.69 AS Decimal(18, 2)), CAST(703.12 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(409.09 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (7, N'Mayis', N'2024', CAST(212.08 AS Decimal(18, 2)), CAST(190.34 AS Decimal(18, 2)), CAST(500.06 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(200.77 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (8, N'Kasim', N'2022', CAST(421.70 AS Decimal(18, 2)), CAST(320.48 AS Decimal(18, 2)), CAST(1489.59 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(255.64 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (9, N'Mart', N'2023', CAST(487.53 AS Decimal(18, 2)), CAST(192.75 AS Decimal(18, 2)), CAST(1376.32 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(306.76 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (10, N'Agustos', N'2024', CAST(146.42 AS Decimal(18, 2)), CAST(292.37 AS Decimal(18, 2)), CAST(1778.43 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(414.04 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (11, N'Aralik', N'2024', CAST(215.60 AS Decimal(18, 2)), CAST(292.02 AS Decimal(18, 2)), CAST(1181.42 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(163.41 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (12, N'Subat', N'2022', CAST(232.30 AS Decimal(18, 2)), CAST(296.16 AS Decimal(18, 2)), CAST(916.29 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(412.41 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (13, N'Haziran', N'2022', CAST(423.75 AS Decimal(18, 2)), CAST(112.64 AS Decimal(18, 2)), CAST(838.30 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(362.51 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (14, N'Aralik', N'2022', CAST(371.59 AS Decimal(18, 2)), CAST(352.00 AS Decimal(18, 2)), CAST(1056.49 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(97.12 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (15, N'Ekim', N'2021', CAST(462.30 AS Decimal(18, 2)), CAST(221.82 AS Decimal(18, 2)), CAST(1016.86 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(40.81 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (16, N'Ekim', N'2021', CAST(230.47 AS Decimal(18, 2)), CAST(299.06 AS Decimal(18, 2)), CAST(910.73 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(109.03 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (17, N'Agustos', N'2021', CAST(488.95 AS Decimal(18, 2)), CAST(65.68 AS Decimal(18, 2)), CAST(870.79 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(316.57 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (18, N'Eylül', N'2022', CAST(178.76 AS Decimal(18, 2)), CAST(192.48 AS Decimal(18, 2)), CAST(792.96 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(303.39 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (19, N'Ekim', N'2023', CAST(354.46 AS Decimal(18, 2)), CAST(201.30 AS Decimal(18, 2)), CAST(1610.39 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(446.94 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (20, N'Agustos', N'2022', CAST(344.70 AS Decimal(18, 2)), CAST(267.28 AS Decimal(18, 2)), CAST(1923.23 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(487.55 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (21, N'Kasim', N'2024', CAST(195.02 AS Decimal(18, 2)), CAST(370.31 AS Decimal(18, 2)), CAST(1775.13 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(321.92 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (22, N'Eylül', N'2021', CAST(318.93 AS Decimal(18, 2)), CAST(326.91 AS Decimal(18, 2)), CAST(1093.91 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(384.08 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (23, N'Haziran', N'2024', CAST(312.18 AS Decimal(18, 2)), CAST(83.58 AS Decimal(18, 2)), CAST(977.91 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(82.28 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (24, N'Kasim', N'2023', CAST(226.99 AS Decimal(18, 2)), CAST(190.72 AS Decimal(18, 2)), CAST(1136.57 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(227.97 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (25, N'Haziran', N'2023', CAST(485.36 AS Decimal(18, 2)), CAST(68.26 AS Decimal(18, 2)), CAST(1433.63 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(360.87 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (26, N'Aralik', N'2024', CAST(372.56 AS Decimal(18, 2)), CAST(77.56 AS Decimal(18, 2)), CAST(795.98 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(151.23 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (27, N'Temmuz', N'2024', CAST(301.42 AS Decimal(18, 2)), CAST(63.91 AS Decimal(18, 2)), CAST(1688.91 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(225.61 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (28, N'Haziran', N'2021', CAST(137.97 AS Decimal(18, 2)), CAST(398.00 AS Decimal(18, 2)), CAST(1746.85 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(96.38 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (29, N'Temmuz', N'2023', CAST(203.63 AS Decimal(18, 2)), CAST(268.67 AS Decimal(18, 2)), CAST(1277.15 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(37.55 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (30, N'Mayis', N'2023', CAST(372.26 AS Decimal(18, 2)), CAST(205.10 AS Decimal(18, 2)), CAST(752.98 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(479.24 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (31, N'Ocak', N'2023', CAST(469.16 AS Decimal(18, 2)), CAST(161.68 AS Decimal(18, 2)), CAST(956.80 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(49.08 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (32, N'Nisan', N'2024', CAST(254.72 AS Decimal(18, 2)), CAST(381.10 AS Decimal(18, 2)), CAST(1181.17 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(189.79 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (33, N'Aralik', N'2024', CAST(433.00 AS Decimal(18, 2)), CAST(199.51 AS Decimal(18, 2)), CAST(1863.25 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(165.52 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (34, N'Kasim', N'2022', CAST(159.33 AS Decimal(18, 2)), CAST(355.53 AS Decimal(18, 2)), CAST(1325.24 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(296.82 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (35, N'Subat', N'2021', CAST(487.74 AS Decimal(18, 2)), CAST(115.24 AS Decimal(18, 2)), CAST(1751.16 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(121.86 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (36, N'Mart', N'2024', CAST(484.23 AS Decimal(18, 2)), CAST(215.35 AS Decimal(18, 2)), CAST(1408.53 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(53.72 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (37, N'Nisan', N'2021', CAST(392.75 AS Decimal(18, 2)), CAST(379.58 AS Decimal(18, 2)), CAST(1054.47 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(329.38 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (38, N'Eylül', N'2022', CAST(246.72 AS Decimal(18, 2)), CAST(128.91 AS Decimal(18, 2)), CAST(768.61 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(371.23 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (39, N'Nisan', N'2024', CAST(261.31 AS Decimal(18, 2)), CAST(110.42 AS Decimal(18, 2)), CAST(1315.58 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(156.88 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (40, N'Nisan', N'2024', CAST(378.72 AS Decimal(18, 2)), CAST(88.17 AS Decimal(18, 2)), CAST(501.91 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(449.83 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (41, N'Mart', N'2021', CAST(139.53 AS Decimal(18, 2)), CAST(256.91 AS Decimal(18, 2)), CAST(1817.42 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(145.89 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (42, N'Eylül', N'2021', CAST(417.93 AS Decimal(18, 2)), CAST(123.20 AS Decimal(18, 2)), CAST(1875.90 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(407.06 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (43, N'Subat', N'2024', CAST(332.73 AS Decimal(18, 2)), CAST(138.47 AS Decimal(18, 2)), CAST(1197.48 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(164.31 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (44, N'Kasim', N'2024', CAST(498.16 AS Decimal(18, 2)), CAST(240.73 AS Decimal(18, 2)), CAST(1681.01 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(80.98 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (45, N'Eylül', N'2023', CAST(440.52 AS Decimal(18, 2)), CAST(56.24 AS Decimal(18, 2)), CAST(628.27 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(346.38 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (46, N'Temmuz', N'2023', CAST(187.30 AS Decimal(18, 2)), CAST(376.56 AS Decimal(18, 2)), CAST(783.70 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(271.88 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (47, N'Ocak', N'2021', CAST(406.98 AS Decimal(18, 2)), CAST(380.15 AS Decimal(18, 2)), CAST(1478.34 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(73.02 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (48, N'Mart', N'2022', CAST(244.67 AS Decimal(18, 2)), CAST(366.60 AS Decimal(18, 2)), CAST(894.61 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(216.82 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (49, N'Mart', N'2022', CAST(481.76 AS Decimal(18, 2)), CAST(68.56 AS Decimal(18, 2)), CAST(974.17 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(28.37 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (50, N'Mart', N'2024', CAST(278.68 AS Decimal(18, 2)), CAST(111.63 AS Decimal(18, 2)), CAST(737.13 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(171.08 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (51, N'Temmuz', N'2023', CAST(374.98 AS Decimal(18, 2)), CAST(75.08 AS Decimal(18, 2)), CAST(1593.79 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(163.09 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (52, N'Nisan', N'2022', CAST(222.78 AS Decimal(18, 2)), CAST(221.16 AS Decimal(18, 2)), CAST(1302.90 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(429.54 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (53, N'Kasim', N'2023', CAST(387.01 AS Decimal(18, 2)), CAST(372.75 AS Decimal(18, 2)), CAST(1655.69 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(162.44 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (54, N'Nisan', N'2022', CAST(436.99 AS Decimal(18, 2)), CAST(270.20 AS Decimal(18, 2)), CAST(605.95 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(374.29 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (55, N'Kasim', N'2023', CAST(490.63 AS Decimal(18, 2)), CAST(137.31 AS Decimal(18, 2)), CAST(656.78 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(301.43 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (56, N'Eylül', N'2024', CAST(214.53 AS Decimal(18, 2)), CAST(116.53 AS Decimal(18, 2)), CAST(1734.76 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(376.96 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (57, N'Mayis', N'2023', CAST(462.11 AS Decimal(18, 2)), CAST(372.23 AS Decimal(18, 2)), CAST(1258.82 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(31.33 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (58, N'Subat', N'2022', CAST(208.27 AS Decimal(18, 2)), CAST(61.32 AS Decimal(18, 2)), CAST(757.06 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(484.96 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (59, N'Eylül', N'2023', CAST(356.41 AS Decimal(18, 2)), CAST(76.58 AS Decimal(18, 2)), CAST(1096.95 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(494.06 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (60, N'Nisan', N'2024', CAST(456.83 AS Decimal(18, 2)), CAST(221.27 AS Decimal(18, 2)), CAST(677.01 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(404.29 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (61, N'Kasim', N'2022', CAST(302.33 AS Decimal(18, 2)), CAST(75.64 AS Decimal(18, 2)), CAST(977.32 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(452.79 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (62, N'Agustos', N'2024', CAST(433.68 AS Decimal(18, 2)), CAST(229.63 AS Decimal(18, 2)), CAST(1938.58 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(159.03 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (63, N'Kasim', N'2022', CAST(203.00 AS Decimal(18, 2)), CAST(107.84 AS Decimal(18, 2)), CAST(1564.99 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(288.13 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (64, N'Mart', N'2024', CAST(361.06 AS Decimal(18, 2)), CAST(286.77 AS Decimal(18, 2)), CAST(1484.34 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(194.64 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (65, N'Agustos', N'2024', CAST(459.50 AS Decimal(18, 2)), CAST(329.54 AS Decimal(18, 2)), CAST(912.48 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(57.87 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (66, N'Eylül', N'2024', CAST(132.13 AS Decimal(18, 2)), CAST(161.27 AS Decimal(18, 2)), CAST(855.43 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(152.38 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (67, N'Mayis', N'2024', CAST(318.64 AS Decimal(18, 2)), CAST(387.02 AS Decimal(18, 2)), CAST(703.30 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(496.54 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (68, N'Nisan', N'2023', CAST(307.89 AS Decimal(18, 2)), CAST(228.41 AS Decimal(18, 2)), CAST(1414.27 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(369.42 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (69, N'Mayis', N'2024', CAST(382.84 AS Decimal(18, 2)), CAST(154.37 AS Decimal(18, 2)), CAST(991.06 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(84.99 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (70, N'Aralik', N'2024', CAST(382.85 AS Decimal(18, 2)), CAST(161.67 AS Decimal(18, 2)), CAST(560.19 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(320.82 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (71, N'Mayis', N'2022', CAST(155.07 AS Decimal(18, 2)), CAST(259.40 AS Decimal(18, 2)), CAST(1244.60 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(284.01 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (72, N'Ekim', N'2022', CAST(356.61 AS Decimal(18, 2)), CAST(238.10 AS Decimal(18, 2)), CAST(1262.74 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(69.87 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (73, N'Subat', N'2022', CAST(424.85 AS Decimal(18, 2)), CAST(274.42 AS Decimal(18, 2)), CAST(1104.85 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(196.23 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (74, N'Kasim', N'2021', CAST(224.78 AS Decimal(18, 2)), CAST(286.93 AS Decimal(18, 2)), CAST(552.20 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(324.23 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (75, N'Agustos', N'2022', CAST(469.28 AS Decimal(18, 2)), CAST(140.98 AS Decimal(18, 2)), CAST(1722.86 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(154.28 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (76, N'Nisan', N'2022', CAST(320.79 AS Decimal(18, 2)), CAST(72.90 AS Decimal(18, 2)), CAST(846.66 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(117.50 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (77, N'Ekim', N'2021', CAST(219.34 AS Decimal(18, 2)), CAST(66.26 AS Decimal(18, 2)), CAST(1276.29 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(472.77 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (78, N'Temmuz', N'2023', CAST(238.24 AS Decimal(18, 2)), CAST(171.12 AS Decimal(18, 2)), CAST(510.12 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(62.72 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (79, N'Eylül', N'2024', CAST(113.11 AS Decimal(18, 2)), CAST(52.06 AS Decimal(18, 2)), CAST(577.63 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(30.48 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (80, N'Ekim', N'2022', CAST(278.95 AS Decimal(18, 2)), CAST(347.72 AS Decimal(18, 2)), CAST(1209.33 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(385.58 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (81, N'Agustos', N'2022', CAST(125.88 AS Decimal(18, 2)), CAST(269.74 AS Decimal(18, 2)), CAST(820.05 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(182.28 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (82, N'Mart', N'2022', CAST(255.91 AS Decimal(18, 2)), CAST(181.99 AS Decimal(18, 2)), CAST(1952.89 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(197.82 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (83, N'Eylül', N'2021', CAST(277.94 AS Decimal(18, 2)), CAST(119.90 AS Decimal(18, 2)), CAST(1042.11 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(422.17 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (84, N'Mayis', N'2021', CAST(247.17 AS Decimal(18, 2)), CAST(193.98 AS Decimal(18, 2)), CAST(730.59 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(285.52 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (85, N'Eylül', N'2022', CAST(207.63 AS Decimal(18, 2)), CAST(108.55 AS Decimal(18, 2)), CAST(801.49 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(495.12 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (86, N'Ocak', N'2024', CAST(353.58 AS Decimal(18, 2)), CAST(55.66 AS Decimal(18, 2)), CAST(1265.04 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(237.60 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (87, N'Ocak', N'2021', CAST(157.98 AS Decimal(18, 2)), CAST(195.53 AS Decimal(18, 2)), CAST(811.06 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(19.49 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (88, N'Subat', N'2022', CAST(265.02 AS Decimal(18, 2)), CAST(325.16 AS Decimal(18, 2)), CAST(1057.14 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(16.76 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (89, N'Ocak', N'2021', CAST(475.74 AS Decimal(18, 2)), CAST(109.22 AS Decimal(18, 2)), CAST(1523.90 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(30.52 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (90, N'Ekim', N'2024', CAST(473.10 AS Decimal(18, 2)), CAST(84.92 AS Decimal(18, 2)), CAST(1592.69 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(360.80 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (91, N'Ocak', N'2023', CAST(415.16 AS Decimal(18, 2)), CAST(227.21 AS Decimal(18, 2)), CAST(567.64 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(211.33 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (92, N'Ekim', N'2022', CAST(345.52 AS Decimal(18, 2)), CAST(159.77 AS Decimal(18, 2)), CAST(625.20 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(27.04 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (93, N'Kasim', N'2021', CAST(104.32 AS Decimal(18, 2)), CAST(365.53 AS Decimal(18, 2)), CAST(579.04 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(193.77 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (94, N'Mart', N'2022', CAST(411.05 AS Decimal(18, 2)), CAST(288.89 AS Decimal(18, 2)), CAST(1285.19 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(368.77 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (95, N'Aralik', N'2022', CAST(284.42 AS Decimal(18, 2)), CAST(134.42 AS Decimal(18, 2)), CAST(1760.83 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(67.58 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (96, N'Ocak', N'2023', CAST(207.68 AS Decimal(18, 2)), CAST(318.39 AS Decimal(18, 2)), CAST(1997.75 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(410.04 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (97, N'Temmuz', N'2024', CAST(316.21 AS Decimal(18, 2)), CAST(221.77 AS Decimal(18, 2)), CAST(1555.89 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(445.41 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (98, N'Mart', N'2023', CAST(459.35 AS Decimal(18, 2)), CAST(295.55 AS Decimal(18, 2)), CAST(1823.14 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(181.94 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (99, N'Ekim', N'2024', CAST(430.69 AS Decimal(18, 2)), CAST(54.05 AS Decimal(18, 2)), CAST(511.98 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(122.86 AS Decimal(18, 2)), NULL)
GO
INSERT [dbo].[TBL_GIDERLER] ([ID], [Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Ekstra], [Notlar]) VALUES (100, N'Subat', N'2024', CAST(311.23 AS Decimal(18, 2)), CAST(111.72 AS Decimal(18, 2)), CAST(868.66 AS Decimal(18, 2)), CAST(249.59 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(374.95 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[TBL_GIDERLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_ILCELER] ON 

INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (4, N'KARAISALI', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (5, N'KARATAS', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (8, N'SAIMBEYLI', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (9, N'TUFANBEYLI', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (11, N'YÜREGIR', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (12, N'ALADAG', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (13, N'IMAMOGLU', 1)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (15, N'BESNI', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (16, N'ÇELIKHAN', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (18, N'GÖLBASI', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (21, N'SINCIK', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (22, N'TUT', 2)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (24, N'BOLVADIN', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (25, N'ÇAY', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (27, N'DINAR', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (28, N'EMIRDAG', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (29, N'IHSANIYE', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (31, N'SINANPASA', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (32, N'SULDANDAGI', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (33, N'SUHUT', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (34, N'BASMAKÇI', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (36, N'ISCEHISAR', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (37, N'ÇOBANLAR', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (38, N'EVCILER', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (40, N'KIZILÖREN', 3)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (42, N'ORTAKÖY', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (43, N'AGAÇÖREN', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (44, N'GÜZELYURT', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (45, N'SARIYAHSI', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (46, N'ESKIL', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (47, N'GÜLAGAÇ', 68)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (49, N'GÖYNÜÇEK', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (50, N'GÜMÜSHACIKÖYÜ', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (51, N'MERZIFON', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (53, N'TASOVA', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (54, N'HAMAMÖZÜ', 5)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (55, N'ALTINDAG', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (57, N'BALA', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (59, N'ÇAMLIDERE', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (60, N'ÇANKAYA', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (61, N'ÇUBUK', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (62, N'ELMADAG', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (63, N'GÜDÜL', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (65, N'KALECIK', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (69, N'SEREFLIKOÇHISAR', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (70, N'YENIMAHALLE', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (71, N'GÖLBASI', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (72, N'KEÇIÖREN', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (74, N'SINCAN', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (77, N'ETIMESGUT', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (79, N'ANSEKI', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (81, N'ANTALYA MERKEZI', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (83, N'FINIKE', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (84, N'GAZIPASA', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (85, N'GÜNDOGMUS', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (86, N'KAS', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (87, N'KORKUTELI', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (90, N'SERIK', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (92, N'IBRADI', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (95, N'GÖLE', 75)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (96, N'ÇILDIR', 75)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (100, N'ARDANUÇ', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (101, N'ARHAVI', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (102, N'ARTVIN MERKEZ', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (103, N'BORÇKA', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (105, N'SAVSAT', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (106, N'YUSUFELI', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (109, N'BOZDOGAN', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (110, N'ÇINE', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (111, N'GERMENCIK', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (113, N'KOÇARLI', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (114, N'KUSADASI', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (116, N'NAZILLI', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (117, N'SÖKE', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (118, N'SULTANHISAR', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (119, N'YENIPAZAR', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (121, N'INCIRLIOVA', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (123, N'KÖSK', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (124, N'DIDIM', 9)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (125, N'AGRI MERKEZ', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (126, N'DIYADIN', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (127, N'DOGUBEYAZIT', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (128, N'ELESKIRT', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (131, N'TASLIÇAY', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (134, N'BALIKESIR MERKEZ', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (137, N'BIGADIÇ', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (138, N'BURHANIYE', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (140, N'EDREMIT', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (142, N'GÖNEN', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (144, N'IVRINDI', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (147, N'SAVASTEPE', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (153, N'KURUCASILE', 74)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (157, N'BESIRI', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (158, N'GERCÜS', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (160, N'SASON', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (164, N'DEMIRÖZÜ', 69)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (167, N'GÖYNÜK', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (172, N'DÖRTDIVAN', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (173, N'YENIÇAGA', 14)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (174, N'AGLASUN', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (177, N'GÖLHISAR', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (178, N'TEFENNI', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (179, N'YESILOVA', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (183, N'ÇAVDIR', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (184, N'ÇELTIKÇI', 15)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (185, N'GEMLIK', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (186, N'INEGÖL', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (187, N'IZNIK', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (189, N'KELES', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (191, N'MUSTAFA K. PASA', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (192, N'ORHANELI', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (193, N'ORHANGAZI', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (194, N'YENISEHIR', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (195, N'BÜYÜK ORHAN', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (197, N'NÜLIFER', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (198, N'OSMAN GAZI', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (200, N'GÜRSU', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (202, N'BILECIK MERKEZ', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (203, N'BOZÜYÜK', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (204, N'GÖLPAZARI', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (205, N'OSMANELI', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (206, N'PAZARYERI', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (207, N'SÖGÜT', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (208, N'YENIPAZAR', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (209, N'INHISAR', 11)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (210, N'BINGÖL MERKEZ', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (211, N'GENÇ', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (213, N'KIGI', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (217, N'YEDISU', 12)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (218, N'ADILCEVAZ', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (220, N'BITLIS MERKEZ', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (221, N'HIZAN', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (222, N'MUTKI', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (224, N'GÜROYMAK', 13)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (225, N'DENIZLI MERKEZ', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (228, N'ÇAL', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (229, N'ÇAMELI', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (230, N'ÇARDAK', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (231, N'ÇIVRIL', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (232, N'GÜNEY', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (233, N'KALE', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (234, N'SARAYKÖY', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (236, N'BABADAG', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (237, N'BEKILLI', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (239, N'SERINHISAR', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (240, N'AKKÖY', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (242, N'BEYAGAÇ', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (244, N'DÜZCE MERKEZ', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (245, N'AKÇAKOCA', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (246, N'YIGILCA', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (247, N'CUMAYERI', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (248, N'GÖLYAKA', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (249, N'ÇILIMLI', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (250, N'GÜMÜSOVA', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (251, N'KAYNASLI', 81)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (252, N'DIYARBAKIR MERKEZ', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (253, N'BISMIL', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (254, N'ÇERMIK', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (255, N'ÇINAR', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (256, N'ÇÜNGÜS', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (257, N'DICLE', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (258, N'ERGANI', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (259, N'HANI', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (261, N'KULP', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (262, N'LICE', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (263, N'SILVAN', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (264, N'EGIL', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (265, N'KOCAKÖY', 21)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (266, N'EDIRNE MERKEZ', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (269, N'IPSALA', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (270, N'KESAN', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (271, N'LALAPASA', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (272, N'MERIÇ', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (273, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (274, N'SÜLOGLU', 22)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (275, N'ELAZIG MERKEZ', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (276, N'AGIN', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (277, N'BASKIL', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (278, N'KARAKOÇAN', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (281, N'PALU', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (282, N'SIVRICE', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (287, N'PALANDÖKEN', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (288, N'ASKALE', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (289, N'ÇAT', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (293, N'ISPIR', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (297, N'PASINLER', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (298, N'SENKAYA', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (301, N'KARAÇOBAN', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (305, N'KÖPRÜKÖY', 25)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (306, N'ÇAYIRLI', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (307, N'ERZINCAN MERKEZ', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (308, N'ILIÇ', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (310, N'KEMALIYE', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (311, N'REFAHIYE', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (313, N'OTLUKBELI', 24)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (314, N'ESKISEHIR MERKEZ', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (315, N'ÇIFTELER', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (316, N'MAHMUDIYE', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (317, N'MIHALIÇLIK', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (319, N'SEYITGAZI', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (320, N'SIVRIHISAR', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (322, N'BEYLIKOVA', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (323, N'INÖNÜ', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (324, N'GÜNYÜZÜ', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (325, N'HAN', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (326, N'MIHALGAZI', 26)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (328, N'ISLAHIYE', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (329, N'NIZIP', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (330, N'OGUZELI', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (331, N'YAVUZELI', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (332, N'SAHINBEY', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (333, N'SEHIT KAMIL', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (334, N'KARKAMIS', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (335, N'NURDAGI', 27)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (336, N'GÜMÜSHANE MERKEZ', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (337, N'KELKIT', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (338, N'SIRAN', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (340, N'KÖSE', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (341, N'KÜRTÜN', 29)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (344, N'DERELI', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (345, N'ESPIYE', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (346, N'EYNESIL', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (347, N'GIRESUN MERKEZ', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (348, N'GÖRELE', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (349, N'KESAP', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (350, N'SEBINKARAHISAR', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (351, N'TIREBOLU', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (352, N'PIPAZIZ', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (353, N'YAGLIDERE', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (354, N'ÇAMOLUK', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (355, N'ÇANAKÇI', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (356, N'DOGANKENT', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (357, N'GÜCE', 28)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (358, N'HAKKARI MERKEZ', 30)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (359, N'ÇUKURCA', 30)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (360, N'SEMDINLI', 30)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (361, N'YÜKSEKOVA', 30)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (362, N'ALTINÖZÜ', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (363, N'DÖRTYOL', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (366, N'ISKENDERUN', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (369, N'SAMANDAG', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (370, N'YAYLADAG', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (371, N'ERZIN', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (376, N'KEÇIBORLU', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (377, N'EGIRDIR', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (379, N'SINIRKENT', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (381, N'YALVAÇ', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (383, N'GÖNEN', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (384, N'YENISAR BADEMLI', 32)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (385, N'IGDIR MERKEZ', 76)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (389, N'AFSIN', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (391, N'ELBISTAN', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (392, N'GÖKSUN', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (393, N'KAHRAMANMARAS MERKEZ', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (395, N'TÜRKOGLU', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (396, N'ÇAGLAYANCERIT', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (397, N'EKINÖZÜ', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (399, N'EFLANI', 78)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (400, N'ESKIPAZAR', 78)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (401, N'KARABÜK MERKEZ', 78)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (404, N'YENICE', 78)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (408, N'KAZIMKARABEKIR', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (409, N'BASYAYLA', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (410, N'SARIVELILER', 70)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (412, N'ARPAÇAY', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (413, N'DIGOR', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (414, N'KAGIZMAN', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (415, N'SARIKAMIS', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (416, N'SELIM', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (421, N'ARAÇ', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (424, N'CIDE', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (425, N'ÇATALZEYTIN', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (427, N'DEVREKANI', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (428, N'INEBOLU', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (429, N'KÜRE', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (430, N'TASKÖPRÜ', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (432, N'IHSANGAZI', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (433, N'PINARBASI', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (434, N'SENPAZAR', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (435, N'AGLI', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (436, N'DOGANYURT', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (437, N'HANÖNÜ', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (438, N'SEYDILER', 37)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (439, N'BÜNYAN', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (440, N'DEVELI', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (441, N'FELAHIYE', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (442, N'INCESU', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (443, N'PINARBASI', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (444, N'SARIOGLAN', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (448, N'YESILHISAR', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (449, N'AKKISLA', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (451, N'KOCASINAN', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (452, N'MELIKGAZI', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (454, N'ÖZVATAN', 38)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (455, N'DERICE', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (456, N'KESKIN', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (459, N'BAHSILI', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (460, N'BALISEYH', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (461, N'ÇELEBI', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (462, N'KARAKEÇILI', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (463, N'YAHSIHAN', 71)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (464, N'KIRKKLARELI MERKEZ', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (465, N'BABAESKI', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (466, N'DEMIRKÖY', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (467, N'KOFÇAY', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (468, N'LÜLEBURGAZ', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (469, N'VIZE', 39)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (470, N'KIRSEHIR MERKEZ', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (471, N'ÇIÇEKDAGI', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (475, N'AKÇAKENT', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (477, N'KOCAELI MERKEZ', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (479, N'GÖLCÜK', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (481, N'KARAMÜRSEL', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (482, N'KÖRFEZ', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (483, N'DERINCE', 41)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (485, N'AKSEHIR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (486, N'BEYSEHIR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (488, N'CIHANBEYLI', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (489, N'ÇUMRA', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (490, N'DOGANHISAR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (491, N'EREGLI', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (492, N'HADIM', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (496, N'KULU', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (497, N'SARAYÖNÜ', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (498, N'SEYDISEHIR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (500, N'AKÖREN', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (501, N'ALTINEKIN', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (503, N'HÜYÜK', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (506, N'SELÇUKLU', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (507, N'TASKENT', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (509, N'ÇELTIK', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (511, N'EMIRGAZI', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (512, N'GÜNEYSINIR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (514, N'TUZLUKÇU', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (515, N'YALIHÜYÜK', 42)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (517, N'ALTINTAS', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (518, N'DOMANIÇ', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (519, N'EMET', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (520, N'GEDIZ', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (521, N'SIMAV', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (522, N'TAVSANLI', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (525, N'HISARCIK', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (526, N'SAPHANE', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (527, N'ÇAVDARHISAR', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (529, N'KILIS MERKEZ', 79)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (530, N'ELBEYLI', 79)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (531, N'MUSABEYLI', 79)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (532, N'POLATELI', 79)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (534, N'AKÇADAG', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (535, N'ARAPGIR', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (538, N'DOGANSEHIR', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (539, N'HEKIMHAN', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (540, N'PÜTÜRGE', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (541, N'YESILYURT', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (542, N'BATTALGAZI', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (543, N'DOGANYOL', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (544, N'KALE', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (547, N'AKHISAR', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (548, N'ALASEHIR', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (549, N'DEMIRCI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (550, N'GÖRDES', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (551, N'KIRKAGAÇ', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (552, N'KULA', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (553, N'MANISA MERKEZ', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (554, N'SALIHLI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (555, N'SARIGÖL', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (557, N'SELENDI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (560, N'AHMETLI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (561, N'GÖLMARMARA', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (562, N'KÖPRÜBASI', 45)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (563, N'DERIK', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (565, N'MARDIN MERKEZ', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (566, N'MAZIDAGI', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (567, N'MIDYAT', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (568, N'NUSAYBIN', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (569, N'ÖMERLI', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (571, N'YESILLI', 47)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (572, N'MERSIN MERKEZ', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (574, N'ERDEMLI', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (575, N'GÜLNAR', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (576, N'MUT', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (577, N'SILIFKE', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (581, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (583, N'DATÇA', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (584, N'FETHIYE', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (585, N'KÖYCEGIZ', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (586, N'MARMARIS', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (587, N'MILAS', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (588, N'MUGLA MERKEZ', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (589, N'ULA', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (590, N'YATAGAN', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (595, N'MALAZGIRT', 49)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (596, N'MUS MERKEZ', 49)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (598, N'HASKÖY', 49)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (600, N'NEVSEHIR MERKEZ', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (602, N'DERINKUYU', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (603, N'GÜLSEHIR', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (604, N'HACIBEKTAS', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (606, N'ÜRGÜP', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (607, N'ACIGÖL', 50)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (608, N'NIGDE MERKEZ', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (609, N'BOR', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (610, N'ÇAMARDI', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (611, N'ULUKISLA', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (612, N'ALTUNHISAR', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (613, N'ÇIFTLIK', 51)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (614, N'AKKUS', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (617, N'GÖLKÖY', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (620, N'MESUDIYE', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (622, N'PERSEMBE', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (624, N'ÜNYE', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (625, N'GÜLYALI', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (626, N'GÜRGENTEPE', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (627, N'ÇAMAS', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (628, N'ÇATALPINAR', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (629, N'ÇAYBASI', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (630, N'IKIZCE', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (631, N'KABADÜZ', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (632, N'KABATAS', 52)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (633, N'BAHÇE', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (634, N'KADIRLI', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (635, N'OSMANIYE MERKEZ', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (636, N'DÜZIÇI', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (637, N'HASANBEYLI', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (638, N'SUMBAS', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (640, N'RIZE MERKEZ', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (641, N'ARDESEN', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (642, N'ÇAMLIHEMSIN', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (643, N'ÇAYELI', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (645, N'IKIZDERE', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (648, N'GÜNEYSU', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (650, N'HEMSIN', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (651, N'IYIDERE', 53)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (660, N'FERIZLI', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (661, N'KARAPÜRÇEK', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (662, N'SÖGÜTLÜ', 54)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (663, N'ALAÇAM', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (665, N'ÇARSAMBA', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (668, N'LADIK', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (670, N'TERME', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (671, N'VEZIRKÖPRÜ', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (675, N'TEKKEKÖY', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (680, N'SINOP MERKEZ', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (681, N'DURAGAN', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (684, N'TÜRKELI', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (685, N'DIKMEN', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (686, N'SARAYDÜZÜ', 57)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (687, N'DIVRIGI', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (689, N'GÜRÜN', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (690, N'HAFIK', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (691, N'IMRANLI', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (693, N'KOYUL HISAR', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (694, N'SIVAS MERKEZ', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (695, N'SU SEHRI', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (696, N'SARKISLA', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (697, N'YILDIZELI', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (701, N'DOGANSAR', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (702, N'GÜLOVA', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (703, N'ULAS', 58)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (707, N'PERVARI', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (708, N'SIIRT MERKEZ', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (709, N'SIRVARI', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (711, N'TEKIRDAG MERKEZ', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (712, N'ÇERKEZKÖY', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (713, N'ÇORLU', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (718, N'SARKÖY', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (719, N'MARAMARAEREGLISI', 59)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (724, N'NIKSAR', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (725, N'RESADIYE', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (727, N'ZILE', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (729, N'YESILYURT', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (730, N'BASÇIFTLIK', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (733, N'AKÇAABAT', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (735, N'ARSIN', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (736, N'ÇAYKARA', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (737, N'MAÇKA', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (738, N'OF', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (739, N'SÜRMENE', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (741, N'VAKFIKEBIR', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (743, N'BESIKDÜZÜ', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (744, N'SALPAZARI', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (745, N'ÇARSIBASI', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (747, N'DÜZKÖY', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (749, N'KÖPRÜBASI', 61)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (750, N'TUNCELI MERKEZ', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (751, N'ÇEMISGEZEK', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (753, N'MAZGIRT', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (754, N'NAZIMIYE', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (757, N'PÜLÜMÜR', 62)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (759, N'ESME', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (761, N'SIVASLI', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (763, N'USAK MERKEZ', 64)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (764, N'BASKALE', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (766, N'EDREMIT', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (767, N'ÇATAK', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (768, N'ERCIS', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (769, N'GEVAS', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (770, N'GÜRPINAR', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (771, N'MURADIYE', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (772, N'ÖZALP', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (773, N'BAHÇESARAY', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (774, N'ÇALDIRAN', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (779, N'ÇINARCIK', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (780, N'ÇIFTLIKKÖY', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (782, N'AKDAGMADENI', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (783, N'BOGAZLIYAN', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (785, N'ÇAYIRALAN', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (786, N'ÇEKEREK', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (789, N'SEFAATLI', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (790, N'YERKÖY', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (791, N'KADISEHRI', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (793, N'YENIFAKILI', 66)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (794, N'ÇAYCUMA', 67)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (797, N'EREGLI', 67)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (802, N'BAYRAMIÇ', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (803, N'BIGA', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (805, N'ÇAN', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (807, N'EZINE', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (808, N'LAPSEKI', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (809, N'YENICE', 17)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (811, N'ÇERKES', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (812, N'ELDIVAN', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (814, N'KURSUNLU', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (816, N'SABANÖZÜ', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (820, N'BAYRAMÖREN', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (824, N'ÇORUM MERKEZ', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (825, N'IKSIPLI', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (827, N'MECITÖZÜ', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (828, N'ORTAKÖY', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (832, N'LAÇIN', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (833, N'OGUZLAR', 19)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (835, N'BAKIRKÖY', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (836, N'BESIKTAS', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (838, N'BEYOGLU', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (839, N'ÇATALCA', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (840, N'EMINÖNÜ', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (841, N'EYÜP', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (842, N'FATIH', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (843, N'GAZIOSMANPASA', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (844, N'KADIKÖY', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (847, N'SILIVRI', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (848, N'SILE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (849, N'SISLI', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (850, N'ÜSKÜDAR', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (851, N'ZEYTINBURNU', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (853, N'KAGITHANE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (855, N'PENDIK', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (856, N'ÜMRANIYE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (857, N'BAYRAMPASA', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (859, N'BAGCILAR', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (860, N'BAHÇELIEVLER', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (861, N'GÜNGÖREN', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (863, N'SULTANBEYLI', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (866, N'ALIAGA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (870, N'ÇESME', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (871, N'DIKILI', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (872, N'FOÇA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (874, N'KARSIYAKA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (875, N'KEMALPASA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (877, N'KIRAZ', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (879, N'ÖDEMIS', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (880, N'SEFERIHISAR', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (881, N'SELÇUK', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (882, N'TIRE', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (884, N'URLA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (885, N'BEYDAG', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (889, N'BALÇOVA', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (890, N'ÇIGLI', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (891, N'GAZIEMIR', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (893, N'GÜZELBAHÇE', 35)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (894, N'SANLIURFA MERKEZ', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (895, N'AKÇAKALE', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (896, N'BIRECIK', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (899, N'HALFETI', 63)
GO
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (900, N'HILVAN', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (901, N'SIVEREK', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (902, N'SURUÇ', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (903, N'VIRANSEHIR', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (905, N'BEYTÜSSEBAP', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (906, N'SIRNAK MERKEZ', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (907, N'CIZRE', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (908, N'IDIL', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (909, N'SILOPI', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[TBL_ILCELER] ([ID], [Ilce], [Sehir]) VALUES (911, N'GÜÇLÜKONAK', 73)
SET IDENTITY_INSERT [dbo].[TBL_ILCELER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_ILLER] ON 

INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (1, N'ADANA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (3, N'AFYON')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (4, N'AGRI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (5, N'AMASYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (6, N'ANKARA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (7, N'ANTALYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (8, N'ARTVIN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (9, N'AYDIN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (10, N'BALIKESIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (11, N'BILECIK')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (12, N'BINGÖL')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (13, N'BITLIS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (14, N'BOLU')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (15, N'BURDUR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (16, N'BURSA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (19, N'ÇORUM')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (20, N'DENIZLI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (21, N'DIYARBAKIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (22, N'EDIRNE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (23, N'ELAZIG')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (24, N'ERZINCAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (25, N'ERZURUM')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (26, N'ESKISEHIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (27, N'GAZIANTEP')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (28, N'GIRESUN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (29, N'GÜMÜSHANE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (30, N'HAKKARI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (31, N'HATAY')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (32, N'ISPARTA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (33, N'IÇEL')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (34, N'ISTANBUL')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (35, N'IZMIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (36, N'KARS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (38, N'KAYSERI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (39, N'KIRKLARELI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (40, N'KIRSEHIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (41, N'KOCAELI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (42, N'KONYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (44, N'MALATYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (45, N'MANISA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (46, N'KAHRAMANMARAS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (47, N'MARDIN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (48, N'MUGLA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (49, N'MUS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (50, N'NEVSEHIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (51, N'NIGDE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (52, N'ORDU')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (53, N'RIZE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (54, N'SAKARYA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (55, N'SAMSUN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (56, N'SIIRT')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (57, N'SINOP')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (58, N'SIVAS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (59, N'TEKIRDAG')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (60, N'TOKAT')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (61, N'TRABZON')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (62, N'TUNCELI')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (63, N'SANLIURFA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (64, N'USAK')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (65, N'VAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (66, N'YOZGAT')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (68, N'AKSARAY')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (69, N'BAYBURT')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (70, N'KARAMAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (72, N'BATMAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (73, N'SIRNAK')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (74, N'BARTIN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (76, N'IGDIR')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (77, N'YALOVA')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (78, N'KARABÜK')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (79, N'KILIS')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (80, N'OSMANIYE')
INSERT [dbo].[TBL_ILLER] ([ID], [Sehir]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[TBL_ILLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_KODLAR] ON 

INSERT [dbo].[TBL_KODLAR] ([ID], [FirmaKod1], [FirmaKod2], [FirmaKod3]) VALUES (1, N'Sektör bazinda raporlama almak için kullanacagimiz kodlardir.  Firma sektörünün sessiz farflerini yazarak firma ismine de bir sayi degeri verilerek en fazla 10 karakter uzunlugunda kodlar olusturulur ', N'', NULL)
SET IDENTITY_INSERT [dbo].[TBL_KODLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_MUSTERIHAREKETLER] ON 

INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (1, 25, 5, 7, 23, CAST(1528.80 AS Decimal(18, 2)), CAST(7644.00 AS Decimal(18, 2)), 1, N'12.12.2022', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (2, 10, 1, 7, 23, CAST(988.80 AS Decimal(18, 2)), CAST(988.80 AS Decimal(18, 2)), 1, N'12.12.2022', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (3, 54, 4, 7, 1, CAST(835.20 AS Decimal(18, 2)), CAST(3340.80 AS Decimal(18, 2)), 5, N'19.01.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (4, 55, 4, 7, 1, CAST(729.60 AS Decimal(18, 2)), CAST(2918.40 AS Decimal(18, 2)), 5, N'19.01.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (5, 32, 2, 7, 8, CAST(1233.60 AS Decimal(18, 2)), CAST(2467.20 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (6, 16, 6, 7, 8, CAST(1160.40 AS Decimal(18, 2)), CAST(6962.40 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (7, 2, 1, 1, 2, CAST(1380.00 AS Decimal(18, 2)), CAST(1380.00 AS Decimal(18, 2)), 12, N'05.04.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (8, 2, 1, 1, 2, CAST(1380.00 AS Decimal(18, 2)), CAST(1380.00 AS Decimal(18, 2)), 12, N'05.04.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (9, 25, 4, 7, 4, CAST(1528.80 AS Decimal(18, 2)), CAST(6115.20 AS Decimal(18, 2)), 9, N'17.11.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (10, 66, 5, 15, 32, CAST(676.80 AS Decimal(18, 2)), CAST(3384.00 AS Decimal(18, 2)), 4, N'18.01.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (11, 25, 4, 15, 21, CAST(1528.80 AS Decimal(18, 2)), CAST(6115.20 AS Decimal(18, 2)), 1, N'12.12.2022', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (12, 25, 2, 15, 21, CAST(1528.80 AS Decimal(18, 2)), CAST(3057.60 AS Decimal(18, 2)), 2, N'25.12.2022', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (13, 36, 4, 15, 21, CAST(1593.60 AS Decimal(18, 2)), CAST(6374.40 AS Decimal(18, 2)), 1, N'12.12.2022', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (14, 42, 1, 5, 5, CAST(642.00 AS Decimal(18, 2)), CAST(642.00 AS Decimal(18, 2)), 11, N'26.04.2023', NULL)
INSERT [dbo].[TBL_MUSTERIHAREKETLER] ([HareketID], [UrunID], [Adet], [Personel], [Musteri], [Fiyat], [Toplam], [FaturaID], [Tarih], [Notlar]) VALUES (15, 42, 5, 5, 5, CAST(642.00 AS Decimal(18, 2)), CAST(3210.00 AS Decimal(18, 2)), 11, N'26.04.2023', NULL)
SET IDENTITY_INSERT [dbo].[TBL_MUSTERIHAREKETLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_MUSTERILER] ON 

INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (1, N'Haydar', N'Baturalp', N'(052) 2 7-76 8', N'(054) 9 3-44 7', N'56569822', N'Haydar33@yahoo.com', N'ISTANBUL', N'SARIYER', N'Suite 286', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (2, N'Vahâ', N'Avan', N'(0590) 040 61 20', N'(0508) 627 45 26', N'46362574', N'Vaha.Avan8@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 817', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (3, N'Latife', N'Mayhos', N'(0556) 875 85 28', N'(0569) 553 28 48', N'94419205', N'Latife.Mayhos@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 578', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (4, N'Nusret', N'Oraloglu', N'(0520) 127 09 12', N'(0520) 759 60 17', N'22189835', N'Nusret50@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 512', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (5, N'Selen', N'Bademci', N'(0541) 240 70 68', N'(0543) 700 19 59', N'95152658', N'Selen9@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 462', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (7, N'Günes', N'Çetiner', N'(0529) 028 54 04', N'(0597) 381 68 63', N'47758688', N'Gunes_Cetiner41@hotmail.com', N'ISTANBUL', N'TUZLA', N'Suite 776', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (8, N'Pakize', N'Erdogan', N'(050) 3 1-02 5', N'(057) 6 4-00 1', N'13703591', N'Pakize_Erdogan@gmail.com', N'ISTANBUL', N'SARIYER', N'Suite 521', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (9, N'Hilmi', N'Balci', N'(0599) 427 22 16', N'(0535) 099 39 86', N'42639598', N'Hilmi23@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 819', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (10, N'Balin', N'Babaoglu', N'(0598) 524 69 14', N'(0540) 028 38 30', N'80526808', N'Bal8hn.Babaoglu@yahoo.com', N'ISTANBUL', N'ÜMRANIYE', N'Suite 242', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (12, N'Destan', N'Balaban', N'(0599) 572 19 62', N'(0549) 619 76 28', N'50585355', N'Destan.Balaban@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 548', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (13, N'Kerim', N'Hakyemez', N'(0505) 001 16 01', N'(0565) 745 93 78', N'39199514', N'Kerim.Hakyemez17@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 788', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (14, N'Anar', N'Avan', N'(059) 7 0-38 3', N'(057) 8 3-77 6', N'58269615', N'Anar.Avan77@hotmail.com', N'ISTANBUL', N'TUZLA', N'Suite 859', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (15, N'Yener', N'Egeli', N'(057) 9 7-05 8', N'(051) 6 9-83 0', N'90483435', N'Yener54@gmail.com', N'ISTANBUL', N'SARIYER', N'Apt. 651', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (16, N'Itir', N'Özbir', N'(0596) 023 08 33', N'(0591) 856 44 48', N'01115037', N'It8hr.Ozbir80@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Suite 796', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (17, N'Kerem', N'Korol', N'(0539) 677 85 48', N'(0545) 007 69 89', N'11992444', N'Kerem_Korol66@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 213', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (18, N'Ela', N'Akbulut', N'(0537) 552 53 90', N'(0590) 045 87 97', N'17267339', N'Ela90@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 649', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (19, N'Eda', N'Adan', N'(0531) 489 80 17', N'(0555) 919 68 08', N'60113993', N'Eda.Adan95@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 989', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (20, N'Nihal', N'Dagdas', N'(0586) 333 89 62', N'(0557) 491 12 89', N'51991638', N'Nihal_Dagdas@hotmail.com', N'ISTANBUL', N'ÜMRANIYE', N'Suite 394', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (21, N'Tülin', N'Adal', N'(0525) 236 10 23', N'(0542) 985 00 64', N'06087845', N'Tulin_Adal@gmail.com', N'ISTANBUL', N'TUZLA', N'Suite 582', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (22, N'Isiner', N'Yesilkaya', N'(0590) 463 87 22', N'(0595) 587 47 30', N'55641858', N'Is8hner.Yesilkaya96@hotmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Apt. 714', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (23, N'Denizalp', N'Adan', N'(0571) 631 85 18', N'(0564) 819 47 50', N'22099873', N'Denizalp77@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 449', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (24, N'Bagdagül', N'Köylüoglu', N'(0542) 742 67 80', N'(0536) 084 39 95', N'62119923', N'Bagdagul.Koyluoglu83@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 810', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (25, N'Ümmiye', N'Körmükçü', N'(0554) 780 17 43', N'(0543) 238 22 83', N'17886242', N'Ummiye22@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 369', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (26, N'Ahsen', N'Nalbantoglu', N'(0572) 224 34 23', N'(0596) 887 83 37', N'78349450', N'Ahsen.Nalbantoglu@gmail.com', N'ISTANBUL', N'BEYOGLU', N'Suite 419', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (27, N'Almila', N'Tekand', N'(0532) 964 33 33', N'(0511) 406 71 20', N'61019444', N'Almila94@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 837', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (30, N'Türkan', N'Sayginer', N'(0544) 535 09 61', N'(0597) 729 61 84', N'20835021', N'Turkan.Sayg8hner33@yahoo.com', N'ISTANBUL', N'ÜMRANIYE', N'Apt. 132', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (31, N'Tülin', N'Pekkan', N'(0521) 618 28 19', N'(0566) 447 43 18', N'27440676', N'Tulin14@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 378', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (32, N'Nesrin', N'Ilicali', N'(0503) 466 18 00', N'(0559) 318 79 92', N'52999786', N'Nesrin.Il8hcal8h5@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 902', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (33, N'Cansel', N'Poyrazoglu', N'(0593) 063 89 90', N'(0541) 176 12 44', N'80578600', N'Cansel_Poyrazoglu57@hotmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Suite 292', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (35, N'Dolunay', N'Sinanoglu', N'(0514) 990 89 04', N'(0507) 358 22 71', N'48465528', N'Dolunay94@hotmail.com', N'ISTANBUL', N'TUZLA', N'Apt. 852', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (36, N'Fahriye', N'Atan', N'(0571) 890 29 39', N'(0584) 667 98 48', N'62033877', N'Fahriye.Atan9@hotmail.com', N'ISTANBUL', N'SARIYER', N'Apt. 789', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (37, N'Isilay', N'Arslanoglu', N'(0501) 519 14 64', N'(0561) 479 31 80', N'79441972', N'Is8hlay.Arslanoglu91@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 516', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (38, N'Günsel', N'Sayginer', N'(0548) 476 98 20', N'(0592) 114 18 51', N'58265781', N'Gunsel_Sayg8hner@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 970', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (39, N'Ceylinaz', N'Kiliççi', N'(0530) 918 82 72', N'(0531) 762 04 70', N'79964444', N'Ceylinaz.K8hl8hcc8h71@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 841', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (40, N'Çagri', N'Aksit', N'(0562) 309 70 07', N'(0557) 645 82 33', N'98746741', N'Cagr8h_Aksit@hotmail.com', N'ISTANBUL', N'ÜMRANIYE', N'Suite 152', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (41, N'Çaglar', N'Kuday', N'(0528) 437 33 16', N'(0587) 274 68 64', N'94940588', N'Caglar91@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 473', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (42, N'Inci', N'Polat', N'(0594) 400 07 27', N'(0558) 635 32 92', N'54676767', N'Inci_Polat@hotmail.com', N'ISTANBUL', N'TUZLA', N'Suite 465', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (43, N'Handan', N'Tüzün', N'(0592) 751 06 91', N'(0551) 139 64 60', N'40407064', N'Handan43@hotmail.com', N'ISTANBUL', N'SARIYER', N'Suite 770', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (44, N'Çetin', N'Alyanak', N'(0590) 620 72 77', N'(0524) 601 71 84', N'99091112', N'Cetin.Alyanak97@yahoo.com', N'ISTANBUL', N'ÜSKÜDAR', N'Apt. 447', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (45, N'Ayren', N'Tüzün', N'(0569) 553 89 61', N'(0511) 221 29 93', N'29812272', N'Ayren_Tuzun11@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 815', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (46, N'Görkem', N'Akman', N'(0527) 088 62 62', N'(0544) 395 45 00', N'07922248', N'Gorkem.Akman65@yahoo.com', N'ISTANBUL', N'BEYOGLU', N'Suite 521', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (47, N'Dâver', N'Çevik', N'(0508) 184 47 71', N'(0512) 178 67 13', N'68564266', N'Daver87@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 775', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (48, N'Niyazi', N'Yalçin', N'(0533) 633 61 54', N'(0537) 730 21 40', N'42305475', N'Niyazi32@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 985', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (49, N'Fatos', N'Ayverdi', N'(0530) 048 09 70', N'(0571) 494 66 33', N'71623831', N'Fatos54@yahoo.com', N'ISTANBUL', N'TUZLA', N'Apt. 999', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (50, N'Nisan', N'Elmastasoglu', N'(0547) 343 18 43', N'(0581) 181 85 56', N'54035008', N'Nisan93@gmail.com', N'ISTANBUL', N'SARIYER', N'Apt. 192', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (51, N'Dicle', N'Mertoglu', N'(0570) 430 86 53', N'(0511) 840 67 65', N'34705529', N'Dicle_Mertoglu46@gmail.com', N'ISTANBUL', N'BEYOGLU', N'Suite 925', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (52, N'Yosun', N'Akbulut', N'(0572) 929 84 66', N'(0590) 501 63 89', N'23320063', N'Yosun13@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 849', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (53, N'Sila', N'Özdenak', N'(0530) 165 53 53', N'(0559) 460 99 88', N'11399942', N'S8hla83@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 193', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (54, N'Recai', N'Gönültas', N'(0571) 898 01 93', N'(0519) 452 73 60', N'70136587', N'Recai30@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 307', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (55, N'Oksan', N'Dagdas', N'(0577) 514 00 61', N'(0519) 276 50 31', N'19277916', N'Oksan_Dagdas39@gmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Apt. 279', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (56, N'Füreyya', N'Nalbantoglu', N'(0597) 399 51 74', N'(0599) 045 03 29', N'82901724', N'Fureyya_Nalbantoglu@gmail.com', N'ISTANBUL', N'TUZLA', N'Suite 878', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (57, N'Amelya', N'Düsenkalkar', N'(0571) 623 44 02', N'(0533) 230 14 87', N'04377814', N'Amelya_Dusenkalkar37@yahoo.com', N'ISTANBUL', N'SARIYER', N'Apt. 309', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (58, N'Yaprak', N'Sepetçi', N'(0593) 646 38 39', N'(0582) 377 11 60', N'68317647', N'Yaprak.Sepetci@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 873', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (59, N'Aktekin', N'Sinanoglu', N'(0592) 673 61 62', N'(0594) 025 62 64', N'99268460', N'Aktekin.Sinanoglu37@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 457', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (60, N'Füruzan', N'Aybar', N'(0500) 409 15 58', N'(0530) 804 32 83', N'95521014', N'Furuzan69@yahoo.com', N'ISTANBUL', N'ÜMRANIYE', N'Suite 182', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (61, N'Rahim', N'Çatalbas', N'(0514) 633 66 31', N'(0550) 428 41 44', N'50075794', N'Rahim.Catalbas@gmail.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 439', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (62, N'Muaz', N'Elmastasoglu', N'(0520) 973 72 06', N'(0501) 488 13 59', N'45734976', N'Muaz_Elmastasoglu@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 648', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (63, N'Ayren', N'Topçuoglu', N'(0567) 674 69 53', N'(0544) 003 81 31', N'38604872', N'Ayren13@yahoo.com', N'ISTANBUL', N'TUZLA', N'Suite 747', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (64, N'Rabia', N'Barbarosoglu', N'(0572) 938 64 12', N'(0561) 847 05 52', N'17099235', N'Rabia.Barbarosoglu33@gmail.com', N'ISTANBUL', N'SARIYER', N'Suite 580', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (65, N'Ümmiye', N'Tunaboylu', N'(0563) 944 89 45', N'(0543) 045 06 11', N'82097395', N'Ummiye.Tunaboylu9@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 397', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (66, N'Behçet', N'Yalçin', N'(0548) 286 40 44', N'(0500) 910 93 11', N'79436941', N'Behcet_Yalc8hn10@gmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Apt. 305', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (67, N'Tarkan', N'Gönültas', N'(0505) 979 37 38', N'(0522) 811 79 95', N'47551383', N'Tarkan27@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 830', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (68, N'Arya', N'Abaci', N'(0522) 576 97 07', N'(0565) 461 43 33', N'45745188', N'Arya.Abac8h53@hotmail.com', N'ISTANBUL', N'EMINÖNÜ', N'Suite 936', N'EMINÖNÜ')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (69, N'Celasun', N'Kiraç ', N'(0537) 866 95 79', N'(0506) 061 17 50', N'60738459', N'Celasun_K8hrac83@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 548', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (71, N'Türkes', N'Kunter', N'(0592) 787 85 85', N'(0503) 307 82 17', N'23332407', N'Turkes_Kunter@hotmail.com', N'ISTANBUL', N'SARIYER', N'Suite 713', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (72, N'Taceddin', N'Akal', N'(0525) 399 69 24', N'(0533) 364 40 40', N'69313593', N'Taceddin_Akal27@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 158', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (73, N'Cevat', N'Çagiran', N'(0525) 769 26 26', N'(0550) 986 88 98', N'25598357', N'Cevat83@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 936', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (74, N'Rahmi', N'Baturalp', N'(0569) 491 85 50', N'(0592) 101 80 57', N'47478503', N'Rahmi.Baturalp9@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 575', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (75, N'Zübeyr', N'Özdogan', N'(0533) 703 21 89', N'(0551) 024 96 87', N'99515610', N'Zubeyr_Ozdogan@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 451', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (76, N'Fahrettin', N'Süleymanoglu', N'(0513) 535 15 49', N'(0519) 996 70 38', N'45301090', N'Fahrettin41@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 195', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (77, N'Rüya', N'Kumcuoglu', N'(0509) 890 00 29', N'(0505) 954 17 05', N'60557736', N'Ruya_Kumcuoglu54@hotmail.com', N'ISTANBUL', N'TUZLA', N'Suite 901', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (78, N'Ünseli', N'Erez', N'(0537) 293 48 75', N'(0534) 337 95 09', N'58706069', N'Unseli.Erez42@yahoo.com', N'ISTANBUL', N'SARIYER', N'Suite 938', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (80, N'Bedirhan', N'Yildirim ', N'(0558) 218 01 64', N'(0591) 900 11 78', N'38989885', N'Bedirhan_Y8hld8hr8hm@hotmail.com', N'ISTANBUL', N'ÜMRANIYE', N'Apt. 356', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (81, N'Adel', N'Tokgöz', N'(0533) 829 90 71', N'(0564) 806 14 71', N'45153901', N'Adel_Tokgoz53@yahoo.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 172', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (82, N'Tanyeli', N'Paksüt', N'(0518) 601 64 29', N'(0501) 314 64 17', N'98620909', N'Tanyeli10@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Suite 937', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (83, N'Aykal', N'Nalbantoglu', N'(0571) 160 52 81', N'(0599) 915 07 17', N'20514230', N'Aykal.Nalbantoglu56@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 328', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (84, N'Gülgün', N'Elmastasoglu', N'(0509) 566 05 53', N'(0596) 667 42 84', N'14041559', N'Gulgun71@gmail.com', N'ISTANBUL', N'TUZLA', N'Apt. 784', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (85, N'Asuela', N'Öztuna', N'(0517) 332 31 32', N'(0574) 537 17 05', N'65542093', N'Asuela.Oztuna69@yahoo.com', N'ISTANBUL', N'SARIYER', N'Suite 389', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (86, N'Batuhan', N'Menemencioglu', N'(0511) 446 90 24', N'(0584) 118 80 28', N'48643843', N'Batuhan_Menemencioglu@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Apt. 474', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (88, N'Zekeriyyâ', N'Yilmazer', N'(0592) 564 66 22', N'(0513) 089 59 84', N'37297671', N'Zekeriyya.Y8hlmazer87@gmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Suite 238', N'ÜSKÜDAR')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (89, N'Elvan', N'Kaya ', N'(0502) 161 54 64', N'(0533) 707 80 22', N'32448459', N'Elvan_Kaya39@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 404', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (90, N'Vahide', N'Sandalci', N'(0566) 782 88 69', N'(0526) 424 07 04', N'54331787', N'Vahide67@gmail.com', N'ISTANBUL', N'ÜMRANIYE', N'Suite 951', N'ÜMRANIYE')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (91, N'Gaye', N'Çamdali', N'(0527) 782 31 13', N'(0583) 091 87 22', N'11975792', N'Gaye45@hotmail.com', N'ISTANBUL', N'TUZLA', N'Suite 429', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (92, N'Yosun', N'Gürmen', N'(0506) 544 61 89', N'(0554) 891 55 72', N'85496782', N'Yosun97@yahoo.com', N'ISTANBUL', N'SARIYER', N'Suite 847', N'SARIYER')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (93, N'Songül', N'Abaci', N'(0535) 790 05 26', N'(0522) 614 51 58', N'16704267', N'Songul_Abac8h37@hotmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 687', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (94, N'Pelinsu', N'Özkök ', N'(0564) 737 39 93', N'(0519) 856 76 27', N'04084654', N'Pelinsu.Ozkok14@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 775', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (95, N'Davud', N'Alniaçik', N'(0598) 493 34 28', N'(0522) 548 21 04', N'98914562', N'Davud.Aln8hac8hk50@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 390', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (96, N'Sebnem', N'Özberk', N'(0579) 563 26 68', N'(0518) 034 83 37', N'65898221', N'Sebnem.Ozberk48@hotmail.com', N'ISTANBUL', N'BEYOGLU', N'Suite 419', N'BEYOGLU')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (97, N'Tunahan', N'Adan', N'(0525) 229 70 46', N'(0588) 799 57 86', N'23108475', N'Tunahan42@gmail.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 802', N'KADIKÖY')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (98, N'Aysar', N'Elmastasoglu', N'(0570) 544 84 60', N'(0524) 499 06 02', N'96564207', N'Aysar8@gmail.com', N'ISTANBUL', N'TUZLA', N'Suite 789', N'TUZLA')
INSERT [dbo].[TBL_MUSTERILER] ([ID], [Ad], [Soyad], [Telefon], [Telefon2], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [VergiDaire]) VALUES (99, N'Dilberay', N'Akaydin', N'(0547) 556 45 39', N'(0586) 465 91 60', N'17239619', N'Dilberay.Akayd8hn16@gmail.com', N'ISTANBUL', N'ÜSKÜDAR', N'Apt. 672', N'ÜSKÜDAR')
SET IDENTITY_INSERT [dbo].[TBL_MUSTERILER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_NOTLAR] ON 

INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (1, N'08.02.2024', N'11:00', N'Genel Toplanti', N'Toplanti 2. kat büyük salonda olacaktir', N'Mirza Kunt', N'Herkes')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (2, N'08.02.2024', N'14:00', N'Satin Alma Toplantisi', N'Son girisler hakkinda bilgilendirme toplantisi', N'Nihan Dagdas', N'Satin Alma Dep')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (3, N'10.02.2024', N'10:00', N'Aylik Etkinlik', N'Bina bahçesinde olacak etkinlige tüm çalisanlarimiz davetlidir', N'Figen Kavaklioglu', N'Herkes')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (4, N'10.02.2024', N'10:00', N'Aylik Etkinlik', N'Bina bahçesinde olacak etkinlige tüm çalisanlarimiz davetlidir', N'Figen Kavaklioglu', N'Herkes')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (5, N'12.02.2024', N'11:00', N'Genel Toplanti', N'Toplanti 2. kat büyük salonda olacaktir', N'Mirza Kunt', N'Herkes')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (6, N'20.02.2024', N'14:00', N'Satin Alma Toplantisi', N'Son girisler hakkinda bilgilendirme toplantisi', N'Nihan Dagdas', N'Satin Alma Dep')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (7, N'21.02.2024', N'10:00', N'Genel Toplanti', N'Son girisler hakkinda bilgilendirme toplantisi', N'Nihan Dagdas', N'Satin Alma Dep')
INSERT [dbo].[TBL_NOTLAR] ([ID], [Tarih], [Saat], [Baslik], [Detay], [Olusturan], [Hitap]) VALUES (8, N'28.02.2024', N'13:00', N'Final Okullari ile Toplanti', N'Firma Talebi', N'Nihan Dagdas', N'Satin Alma Dep')
SET IDENTITY_INSERT [dbo].[TBL_NOTLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_PERSONELLER] ON 

INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (1, N'Nesrin', N'Köybasi', N'( 05) 68 -698', N'19429368   ', N'Nesrin_Koybas8h@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Apt. 190', N'Muhasebe')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (4, N'Feyyaz', N'Öztonga', N'( 05) 39 -869', N'45877519   ', N'Feyyaz.Oztonga@gmail.com', N'ISTANBUL', N'KÜÇÜKÇEKMECE', N'Suite 788', N'Satis Danismani')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (5, N'Hazim', N'Elçiboga', N'( 05) 94 -514', N'93261425   ', N'Haz8hm_Elciboga78@yahoo.com', N'ISTANBUL', N'SILIVRI', N'Apt. 488', N'Güvenlik')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (6, N'Nihan', N'Dagdas', N'( 05) 72 -768', N'78358989   ', N'Nihan92@yahoo.com', N'ISTANBUL', N'BEYKOZ', N'Suite 173', N'Satis Temsilcisi')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (7, N'Çiler', N'Kasapoglu', N'( 05) 29 -556', N'33368515   ', N'Ciler60@gmail.com', N'ISTANBUL', N'KARTAL', N'Suite 856', N'Satis Temsilcisi')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (9, N'Zihnî', N'Limoncuoglu', N'( 05) 87 -718', N'01035813   ', N'Zihni.Limoncuoglu@gmail.com', N'ISTANBUL', N'BAKIRKÖY', N'Apt. 768', N'Muhasebe')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (10, N'Vehbi', N'Özdogan', N'( 05) 49 -057', N'17933011   ', N'Vehbi.Ozdogan@gmail.com', N'ISTANBUL', N'ZEYTINBURNU', N'Suite 299', N'Asçi')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (11, N'Serpil', N'Alpugan', N'( 05) 38 -844', N'97460026   ', N'Serpil.Alpugan40@hotmail.com', N'ISTANBUL', N'EYÜP', N'Suite 185', N'Sekreter')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (12, N'Mirza', N'Kunt', N'( 05) 88 -919', N'62535813   ', N'Mirza.Kunt42@yahoo.com', N'ISTANBUL', N'KADIKÖY', N'Suite 899', N'Sekreter')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (13, N'Hilal', N'Tanrikulu', N'( 05) 03 -386', N'41067502   ', N'Hilal37@hotmail.com', N'ISTANBUL', N'BESIKTAS', N'Suite 196', N'Satis Danismani')
INSERT [dbo].[TBL_PERSONELLER] ([ID], [Ad], [Soyad], [Telefon], [TCNo], [Mail], [Sehir], [Ilce], [Adres], [Gorev]) VALUES (15, N'Figen', N'Kavaklioglu', N'( 05) 28 -784', N'16713939   ', N'Figen91@gmail.com', N'ISTANBUL', N'SISLI', N'Suite 637', N'Satis Danismani')
SET IDENTITY_INSERT [dbo].[TBL_PERSONELLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_URUNLER] ON 

INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (1, N'Çamasir Makinesi', N'Bosch', N'JKL321', N'2021', 5, CAST(1268.00 AS Decimal(18, 2)), CAST(1521.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (2, N'Firin', N'Bosch', N'XYZ456', N'2021', 0, CAST(1150.00 AS Decimal(18, 2)), CAST(1380.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (3, N'Televizyon', N'GE', N'789GHI', N'2024', 5, CAST(834.00 AS Decimal(18, 2)), CAST(1000.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (4, N'Buzdolabi', N'Samsung', N'789GHI', N'2024', 5, CAST(998.00 AS Decimal(18, 2)), CAST(1197.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (5, N'Firin', N'Haier', N'XYZ456', N'2021', 5, CAST(1962.00 AS Decimal(18, 2)), CAST(2354.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (6, N'Televizyon', N'Samsung', N'SMSNG458', N'2022', 5, CAST(2580.00 AS Decimal(18, 2)), CAST(2958.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (7, N'Mikrodalga Firin', N'Electrolux', N'789GHI', N'2023', 5, CAST(774.00 AS Decimal(18, 2)), CAST(928.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (8, N'Mikrodalga Firin', N'KitchenAid', N'XYZ456', N'2021', 2, CAST(889.00 AS Decimal(18, 2)), CAST(1066.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (9, N'Firin', N'Bosch', N'ABC123', N'2024', 5, CAST(1537.00 AS Decimal(18, 2)), CAST(1844.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (10, N'Çamasir Makinesi', N'Samsung', N'JKL321', N'2019', 5, CAST(824.00 AS Decimal(18, 2)), CAST(988.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (11, N'Çamasir Makinesi', N'KitchenAid', N'XYZ456', N'2020', 5, CAST(1096.00 AS Decimal(18, 2)), CAST(1315.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (12, N'Firin', N'KitchenAid', N'789GHI', N'2022', 2, CAST(1213.00 AS Decimal(18, 2)), CAST(1455.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (13, N'Televizyon', N'Whirlpool', N'JKL321', N'2019', 5, CAST(659.00 AS Decimal(18, 2)), CAST(790.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (14, N'Çamasir Makinesi', N'GE', N'123DEF', N'2020', 5, CAST(1867.00 AS Decimal(18, 2)), CAST(2240.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (15, N'Firin', N'LG', N'123DEF', N'2018', 2, CAST(1167.00 AS Decimal(18, 2)), CAST(1400.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (16, N'Buzdolabi', N'Whirlpool', N'JKL321', N'2021', 5, CAST(967.00 AS Decimal(18, 2)), CAST(1160.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (17, N'Firin', N'GE', N'XYZ456', N'2021', 5, CAST(1224.00 AS Decimal(18, 2)), CAST(1468.80 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (18, N'Televizyon', N'Bosch', N'789GHI', N'2024', 5, CAST(1414.00 AS Decimal(18, 2)), CAST(1696.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (19, N'Mikrodalga Firin', N'Samsung', N'MCV32', N'2020', 4, CAST(852.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (20, N'Buzdolabi', N'Kenmore', N'123DEF', N'2024', 5, CAST(1563.00 AS Decimal(18, 2)), CAST(1875.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (21, N'Bulasik Makinesi', N'Maytag', N'123DEF', N'2022', 5, CAST(1566.00 AS Decimal(18, 2)), CAST(1879.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (22, N'Çamasir Makinesi', N'Haier', N'789GHI', N'2021', 5, CAST(836.00 AS Decimal(18, 2)), CAST(1003.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (23, N'Buzdolabi', N'Samsung', N'123DEF', N'2024', 5, CAST(1931.00 AS Decimal(18, 2)), CAST(2317.20 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (24, N'Mikrodalga Firin', N'Haier', N'JKL321', N'2019', 5, CAST(1132.00 AS Decimal(18, 2)), CAST(1358.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (25, N'Mikrodalga Firin', N'GE', N'JKL321', N'2022', -5, CAST(1274.00 AS Decimal(18, 2)), CAST(1528.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (26, N'Buzdolabi', N'Electrolux', N'ABC123', N'2020', 5, CAST(1089.00 AS Decimal(18, 2)), CAST(1306.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (27, N'Buzdolabi', N'Whirlpool', N'XYZ456', N'2019', 2, CAST(1262.00 AS Decimal(18, 2)), CAST(1514.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (28, N'Çamasir Makinesi', N'KitchenAid', N'789GHI', N'2024', 2, CAST(1259.00 AS Decimal(18, 2)), CAST(1510.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (29, N'Bulasik Makinesi', N'Bosch', N'123DEF', N'2022', 5, CAST(774.00 AS Decimal(18, 2)), CAST(928.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (30, N'Çamasir Makinesi', N'Samsung', N'ABC123', N'2024', 2, CAST(1691.00 AS Decimal(18, 2)), CAST(2029.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (31, N'Klima', N'Kenmore', N'XYZ456', N'2021', 2, CAST(552.00 AS Decimal(18, 2)), CAST(662.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (32, N'Bulasik Makinesi', N'Haier', N'789GHI', N'2022', 5, CAST(1028.00 AS Decimal(18, 2)), CAST(1233.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (33, N'Bulasik Makinesi', N'Kenmore', N'789GHI', N'2018', 5, CAST(1486.00 AS Decimal(18, 2)), CAST(1783.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (34, N'Bulasik Makinesi', N'Maytag', N'ABC123', N'2023', 2, CAST(1368.00 AS Decimal(18, 2)), CAST(1641.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (35, N'Klima', N'Bosch', N'XYZ456', N'2019', 5, CAST(635.00 AS Decimal(18, 2)), CAST(762.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (36, N'Bulasik Makinesi', N'Haier', N'XYZ456', N'2023', 1, CAST(1328.00 AS Decimal(18, 2)), CAST(1593.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (37, N'Bulasik Makinesi', N'KitchenAid', N'XYZ456', N'2019', 5, CAST(1121.00 AS Decimal(18, 2)), CAST(1345.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (38, N'Bulasik Makinesi', N'KitchenAid', N'789GHI', N'2018', 2, CAST(897.00 AS Decimal(18, 2)), CAST(1076.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (39, N'Bulasik Makinesi', N'Kenmore', N'ABC123', N'2022', 5, CAST(1292.00 AS Decimal(18, 2)), CAST(1550.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (40, N'Klima', N'Electrolux', N'XYZ456', N'2020', 2, CAST(961.00 AS Decimal(18, 2)), CAST(1153.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (41, N'Klima', N'Samsung', N'XYZ456', N'2023', 5, CAST(1233.00 AS Decimal(18, 2)), CAST(1479.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (42, N'Buzdolabi', N'Whirlpool', N'123DEF', N'2018', -1, CAST(535.00 AS Decimal(18, 2)), CAST(642.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (43, N'Klima', N'Bosch', N'XYZ456', N'2024', 5, CAST(1310.00 AS Decimal(18, 2)), CAST(1572.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (44, N'Firin', N'Haier', N'XYZ456', N'2018', 5, CAST(993.00 AS Decimal(18, 2)), CAST(1191.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (45, N'Buzdolabi', N'Samsung', N'123DEF', N'2022', 2, CAST(1542.00 AS Decimal(18, 2)), CAST(1850.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (46, N'Bulasik Makinesi', N'KitchenAid', N'ABC123', N'2022', 5, CAST(682.00 AS Decimal(18, 2)), CAST(818.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (47, N'Klima', N'Maytag', N'JKL321', N'2021', 2, CAST(1564.00 AS Decimal(18, 2)), CAST(1876.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (48, N'Firin', N'Electrolux', N'JKL321', N'2020', 2, CAST(1903.00 AS Decimal(18, 2)), CAST(2283.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (49, N'Bulasik Makinesi', N'Electrolux', N'789GHI', N'2019', 2, CAST(691.00 AS Decimal(18, 2)), CAST(829.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (50, N'Klima', N'Bosch', N'XYZ456', N'2020', 2, CAST(1205.00 AS Decimal(18, 2)), CAST(1446.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (51, N'Firin', N'GE', N'123DEF', N'2021', 2, CAST(1302.00 AS Decimal(18, 2)), CAST(1562.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (52, N'Firin', N'Electrolux', N'JKL321', N'2022', 5, CAST(1931.00 AS Decimal(18, 2)), CAST(2317.20 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (53, N'Buzdolabi', N'Haier', N'JKL321', N'2023', 5, CAST(1012.00 AS Decimal(18, 2)), CAST(1214.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (54, N'Klima', N'Electrolux', N'JKL321', N'2019', 5, CAST(696.00 AS Decimal(18, 2)), CAST(835.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (55, N'Bulasik Makinesi', N'Haier', N'XYZ456', N'2018', 5, CAST(608.00 AS Decimal(18, 2)), CAST(729.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (56, N'Firin', N'LG', N'123DEF', N'2018', 7, CAST(789.00 AS Decimal(18, 2)), CAST(946.80 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (57, N'Buzdolabi', N'Samsung', N'123DEF', N'2018', 5, CAST(1455.00 AS Decimal(18, 2)), CAST(1746.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (58, N'Firin', N'Haier', N'ABC123', N'2018', 2, CAST(1622.00 AS Decimal(18, 2)), CAST(1946.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (59, N'Bulasik Makinesi', N'Bosch', N'123DEF', N'2021', 5, CAST(1585.00 AS Decimal(18, 2)), CAST(1902.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (60, N'Çamasir Makinesi', N'Electrolux', N'ABC123', N'2020', 5, CAST(1954.00 AS Decimal(18, 2)), CAST(2344.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (61, N'Çamasir Makinesi', N'Bosch', N'XYZ456', N'2020', 5, CAST(1893.00 AS Decimal(18, 2)), CAST(2271.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (62, N'Bulasik Makinesi', N'KitchenAid', N'789GHI', N'2022', 5, CAST(1795.00 AS Decimal(18, 2)), CAST(2154.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (63, N'Firin', N'Maytag', N'789GHI', N'2020', 2, CAST(1580.00 AS Decimal(18, 2)), CAST(1896.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (64, N'Buzdolabi', N'Samsung', N'XYZ456', N'2024', 5, CAST(844.00 AS Decimal(18, 2)), CAST(1012.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (65, N'Firin', N'KitchenAid', N'789GHI', N'2024', 5, CAST(1622.00 AS Decimal(18, 2)), CAST(1946.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (66, N'Bulasik Makinesi', N'LG', N'JKL321', N'2023', -3, CAST(564.00 AS Decimal(18, 2)), CAST(676.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (67, N'Çamasir Makinesi', N'Maytag', N'123DEF', N'2019', 5, CAST(1483.00 AS Decimal(18, 2)), CAST(1779.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (68, N'Çamasir Makinesi', N'LG', N'XYZ456', N'2020', 5, CAST(664.00 AS Decimal(18, 2)), CAST(796.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (69, N'Çamasir Makinesi', N'Bosch', N'789GHI', N'2018', 5, CAST(616.00 AS Decimal(18, 2)), CAST(739.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (70, N'Buzdolabi', N'Bosch', N'ABC123', N'2018', 3, CAST(1890.00 AS Decimal(18, 2)), CAST(2268.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (71, N'Firin', N'Maytag', N'JKL321', N'2020', 5, CAST(725.00 AS Decimal(18, 2)), CAST(870.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (72, N'Bulasik Makinesi', N'Maytag', N'XYZ456', N'2022', 8, CAST(1628.00 AS Decimal(18, 2)), CAST(1953.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (73, N'Çamasir Makinesi', N'Maytag', N'JKL321', N'2019', 5, CAST(1192.00 AS Decimal(18, 2)), CAST(1430.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (74, N'Buzdolabi', N'Kenmore', N'789GHI', N'2023', 5, CAST(1290.00 AS Decimal(18, 2)), CAST(1548.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (75, N'Klima', N'GE', N'JKL321', N'2022', 5, CAST(1112.00 AS Decimal(18, 2)), CAST(1334.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (76, N'Buzdolabi', N'Bosch', N'ABC123', N'2022', 5, CAST(1218.00 AS Decimal(18, 2)), CAST(1461.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (77, N'Bulasik Makinesi', N'Haier', N'XYZ456', N'2019', 5, CAST(1990.00 AS Decimal(18, 2)), CAST(2388.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (78, N'Buzdolabi', N'Samsung', N'JKL321', N'2024', 5, CAST(634.00 AS Decimal(18, 2)), CAST(760.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (79, N'Bulasik Makinesi', N'GE', N'JKL321', N'2018', 2, CAST(618.00 AS Decimal(18, 2)), CAST(741.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (80, N'Firin', N'LG', N'123DEF', N'2024', 2, CAST(1400.00 AS Decimal(18, 2)), CAST(1680.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (81, N'Klima', N'KitchenAid', N'ABC123', N'2021', 2, CAST(1249.00 AS Decimal(18, 2)), CAST(1498.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (82, N'Klima', N'Whirlpool', N'789GHI', N'2021', 2, CAST(976.00 AS Decimal(18, 2)), CAST(1171.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (83, N'Buzdolabi', N'Samsung', N'ABC123', N'2024', 5, CAST(1288.00 AS Decimal(18, 2)), CAST(1545.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (84, N'Çamasir Makinesi', N'Haier', N'123DEF', N'2018', 5, CAST(1909.00 AS Decimal(18, 2)), CAST(2290.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (85, N'Bulasik Makinesi', N'Samsung', N'789GHI', N'2024', 5, CAST(1230.00 AS Decimal(18, 2)), CAST(1476.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (86, N'Firin', N'KitchenAid', N'789GHI', N'2021', 2, CAST(1987.00 AS Decimal(18, 2)), CAST(2384.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (87, N'Buzdolabi', N'Maytag', N'XYZ456', N'2019', 5, CAST(1572.00 AS Decimal(18, 2)), CAST(1886.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (88, N'Çamasir Makinesi', N'Whirlpool', N'789GHI', N'2020', 5, CAST(1159.00 AS Decimal(18, 2)), CAST(1390.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (89, N'Firin', N'Bosch', N'789GHI', N'2020', 5, CAST(1692.00 AS Decimal(18, 2)), CAST(2030.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (90, N'Firin', N'LG', N'ABC123', N'2021', 5, CAST(561.00 AS Decimal(18, 2)), CAST(673.20 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (91, N'Çamasir Makinesi', N'Whirlpool', N'123DEF', N'2021', 2, CAST(1260.00 AS Decimal(18, 2)), CAST(1512.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (92, N'Klima', N'KitchenAid', N'123DEF', N'2023', 2, CAST(503.00 AS Decimal(18, 2)), CAST(603.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (93, N'Çamasir Makinesi', N'Whirlpool', N'ABC123', N'2020', 5, CAST(1839.00 AS Decimal(18, 2)), CAST(2206.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (94, N'Firin', N'GE', N'JKL321', N'2020', 5, CAST(1600.00 AS Decimal(18, 2)), CAST(1920.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (95, N'Buzdolabi', N'Electrolux', N'XYZ456', N'2019', 5, CAST(1130.00 AS Decimal(18, 2)), CAST(1356.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (96, N'Bulasik Makinesi', N'Haier', N'789GHI', N'2024', 5, CAST(1776.00 AS Decimal(18, 2)), CAST(2131.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (97, N'Bulasik Makinesi', N'Electrolux', N'789GHI', N'2024', 5, CAST(1340.00 AS Decimal(18, 2)), CAST(1608.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (98, N'Çamasir Makinesi', N'Samsung', N'XYZ456', N'2020', 1, CAST(1691.00 AS Decimal(18, 2)), CAST(2029.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (99, N'Çamasir Makinesi', N'Bosch', N'ABC123', N'2023', 2, CAST(904.00 AS Decimal(18, 2)), CAST(1084.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
GO
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (100, N'Çamasir Makinesi', N'Maytag', N'789GHI', N'2020', 1, CAST(1352.00 AS Decimal(18, 2)), CAST(1622.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (101, N'Çamasir Makinesi', N'Haier', N'JKL321', N'2020', 5, CAST(1002.00 AS Decimal(18, 2)), CAST(1202.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (102, N'Bulasik Makinesi', N'Haier', N'ABC123', N'2021', 2, CAST(1001.00 AS Decimal(18, 2)), CAST(1201.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (103, N'Firin', N'Bosch', N'XYZ456', N'2021', 2, CAST(554.00 AS Decimal(18, 2)), CAST(664.80 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (104, N'Çamasir Makinesi', N'Whirlpool', N'XYZ456', N'2018', 5, CAST(1634.00 AS Decimal(18, 2)), CAST(1960.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (105, N'Mikrodalga Firin', N'Maytag', N'ABC123', N'2020', 5, CAST(1266.00 AS Decimal(18, 2)), CAST(1519.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (106, N'Çamasir Makinesi', N'Kenmore', N'789GHI', N'2022', 5, CAST(1209.00 AS Decimal(18, 2)), CAST(1450.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (107, N'Bulasik Makinesi', N'Whirlpool', N'ABC123', N'2021', 2, CAST(1378.00 AS Decimal(18, 2)), CAST(1653.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (108, N'Çamasir Makinesi', N'Bosch', N'JKL321', N'2024', 2, CAST(670.00 AS Decimal(18, 2)), CAST(804.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (109, N'Çamasir Makinesi', N'LG', N'XYZ456', N'2019', 5, CAST(1996.00 AS Decimal(18, 2)), CAST(2395.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (110, N'Çamasir Makinesi', N'Kenmore', N'789GHI', N'2020', 5, CAST(738.00 AS Decimal(18, 2)), CAST(885.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (111, N'Buzdolabi', N'Whirlpool', N'JKL321', N'2021', 5, CAST(1693.00 AS Decimal(18, 2)), CAST(2031.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (112, N'Elektrikli Süpürge', N'GE', N'ABC123', N'2022', 2, CAST(1408.00 AS Decimal(18, 2)), CAST(1689.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (113, N'Mikrodalga Firin', N'Electrolux', N'789GHI', N'2018', 5, CAST(981.00 AS Decimal(18, 2)), CAST(1177.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (114, N'Robot Süpürge', N'Bosch', N'123DEF', N'2019', 5, CAST(714.00 AS Decimal(18, 2)), CAST(856.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (115, N'Buzdolabi', N'Maytag', N'XYZ456', N'2019', 2, CAST(637.00 AS Decimal(18, 2)), CAST(764.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (116, N'Mikrodalga Firin', N'Kenmore', N'123DEF', N'2023', 2, CAST(595.00 AS Decimal(18, 2)), CAST(714.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (117, N'Bulasik Makinesi', N'Haier', N'ABC123', N'2018', 2, CAST(1342.00 AS Decimal(18, 2)), CAST(1610.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (118, N'Bulasik Makinesi', N'Bosch', N'789GHI', N'2022', 5, CAST(928.00 AS Decimal(18, 2)), CAST(1113.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (119, N'Mikrodalga Firin', N'GE', N'XYZ456', N'2020', 2, CAST(685.00 AS Decimal(18, 2)), CAST(822.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (120, N'Elektrikli Süpürge', N'Whirlpool', N'ABC123', N'2024', 5, CAST(1331.00 AS Decimal(18, 2)), CAST(1597.20 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (121, N'Bulasik Makinesi', N'Kenmore', N'ABC123', N'2020', 5, CAST(1704.00 AS Decimal(18, 2)), CAST(2044.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (122, N'Elektrikli Süpürge', N'Samsung', N'ABC123', N'2022', 2, CAST(968.00 AS Decimal(18, 2)), CAST(1161.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (123, N'Robot Süpürge', N'Whirlpool', N'JKL321', N'2023', 5, CAST(646.00 AS Decimal(18, 2)), CAST(775.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (124, N'Robot Süpürge', N'Samsung', N'789GHI', N'2023', 5, CAST(1420.00 AS Decimal(18, 2)), CAST(1704.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (125, N'Robot Süpürge', N'Bosch', N'JKL321', N'2019', 5, CAST(757.00 AS Decimal(18, 2)), CAST(908.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (126, N'Buzdolabi', N'Whirlpool', N'123DEF', N'2018', 2, CAST(1772.00 AS Decimal(18, 2)), CAST(2126.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (127, N'Mikrodalga Firin', N'Haier', N'JKL321', N'2024', 5, CAST(824.00 AS Decimal(18, 2)), CAST(988.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (128, N'Mikrodalga Firin', N'Kenmore', N'123DEF', N'2024', 2, CAST(748.00 AS Decimal(18, 2)), CAST(897.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (129, N'Elektrikli Süpürge', N'KitchenAid', N'JKL321', N'2024', 5, CAST(1687.00 AS Decimal(18, 2)), CAST(2024.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (130, N'Buzdolabi', N'Maytag', N'789GHI', N'2019', 5, CAST(587.00 AS Decimal(18, 2)), CAST(704.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (131, N'Elektrikli Süpürge', N'Bosch', N'JKL321', N'2022', 5, CAST(1210.00 AS Decimal(18, 2)), CAST(1452.00 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (132, N'Bulasik Makinesi', N'Kenmore', N'123DEF', N'2020', 2, CAST(959.00 AS Decimal(18, 2)), CAST(1150.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (133, N'Elektrikli Süpürge', N'Samsung', N'JKL321', N'2024', 5, CAST(509.00 AS Decimal(18, 2)), CAST(610.80 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (134, N'Airfryer', N'GE', N'789GHI', N'2024', 2, CAST(1838.00 AS Decimal(18, 2)), CAST(2205.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (135, N'Airfryer', N'GE', N'JKL321', N'2020', 5, CAST(1695.00 AS Decimal(18, 2)), CAST(2034.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (136, N'Kahve Makinesi', N'KitchenAid', N'789GHI', N'2022', 2, CAST(1660.00 AS Decimal(18, 2)), CAST(1992.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (137, N'Kahve Makinesi', N'GE', N'JKL321', N'2022', 2, CAST(1156.00 AS Decimal(18, 2)), CAST(1387.20 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (138, N'Kahve Makinesi', N'LG', N'789GHI', N'2024', 5, CAST(799.00 AS Decimal(18, 2)), CAST(958.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (139, N'Airfryer', N'Samsung', N'JKL321', N'2019', 2, CAST(1863.00 AS Decimal(18, 2)), CAST(2235.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (140, N'Bulasik Makinesi', N'KitchenAid', N'123DEF', N'2023', 2, CAST(1655.00 AS Decimal(18, 2)), CAST(1986.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (141, N'Airfryer', N'KitchenAid', N'JKL321', N'2022', 5, CAST(1330.00 AS Decimal(18, 2)), CAST(1596.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (142, N'Airfryer', N'Kenmore', N'123DEF', N'2022', 5, CAST(1192.00 AS Decimal(18, 2)), CAST(1430.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (143, N'Robot Süpürge', N'LG', N'ABC123', N'2022', 2, CAST(751.00 AS Decimal(18, 2)), CAST(901.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (144, N'Bulasik Makinesi', N'Samsung', N'JKL321', N'2020', 2, CAST(557.00 AS Decimal(18, 2)), CAST(668.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (145, N'Elektrikli Süpürge', N'GE', N'ABC123', N'2018', 5, CAST(1118.00 AS Decimal(18, 2)), CAST(1341.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (146, N'Kahve Makinesi', N'Whirlpool', N'ABC123', N'2019', 5, CAST(505.00 AS Decimal(18, 2)), CAST(606.00 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (147, N'Airfryer', N'Bosch', N'JKL321', N'2022', 2, CAST(1138.00 AS Decimal(18, 2)), CAST(1365.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (148, N'Bulasik Makinesi', N'Whirlpool', N'JKL321', N'2018', 2, CAST(1613.00 AS Decimal(18, 2)), CAST(1935.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (149, N'Kahve Makinesi', N'LG', N'123DEF', N'2022', 5, CAST(1901.00 AS Decimal(18, 2)), CAST(2281.20 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (150, N'Bulasik Makinesi', N'Whirlpool', N'123DEF', N'2018', 5, CAST(1144.00 AS Decimal(18, 2)), CAST(1372.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (151, N'Elektrikli Süpürge', N'Electrolux', N'JKL321', N'2019', 5, CAST(1338.00 AS Decimal(18, 2)), CAST(1605.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (152, N'Elektrikli Süpürge', N'Kenmore', N'XYZ456', N'2021', 5, CAST(1426.00 AS Decimal(18, 2)), CAST(1711.20 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (153, N'Tost Makinesi', N'Haier', N'JKL321', N'2020', 2, CAST(1028.00 AS Decimal(18, 2)), CAST(1233.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (154, N'Kahve Makinesi', N'GE', N'789GHI', N'2023', 5, CAST(1494.00 AS Decimal(18, 2)), CAST(1792.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (155, N'Elektrikli Süpürge', N'Haier', N'123DEF', N'2022', 5, CAST(1746.00 AS Decimal(18, 2)), CAST(2095.20 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (156, N'Airfryer', N'Bosch', N'123DEF', N'2021', 5, CAST(1641.00 AS Decimal(18, 2)), CAST(1969.20 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (157, N'Televizyon', N'GE', N'123DEF', N'2022', 2, CAST(1154.00 AS Decimal(18, 2)), CAST(1384.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (158, N'Tost Makinesi', N'Kenmore', N'123DEF', N'2023', 5, CAST(816.00 AS Decimal(18, 2)), CAST(979.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (159, N'Airfryer', N'Kenmore', N'789GHI', N'2020', 6, CAST(1595.00 AS Decimal(18, 2)), CAST(1914.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (160, N'Mikrodalga Firin', N'Electrolux', N'XYZ456', N'2021', 2, CAST(699.00 AS Decimal(18, 2)), CAST(838.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (161, N'Buzdolabi', N'KitchenAid', N'JKL321', N'2023', 2, CAST(1442.00 AS Decimal(18, 2)), CAST(1730.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (162, N'Mikrodalga Firin', N'Bosch', N'JKL321', N'2022', 5, CAST(1200.00 AS Decimal(18, 2)), CAST(1440.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (163, N'Televizyon', N'GE', N'123DEF', N'2018', 5, CAST(1405.00 AS Decimal(18, 2)), CAST(1686.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (164, N'Mikrodalga Firin', N'LG', N'XYZ456', N'2023', 5, CAST(1397.00 AS Decimal(18, 2)), CAST(1676.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (165, N'Tost Makinesi', N'Bosch', N'123DEF', N'2022', 5, CAST(1716.00 AS Decimal(18, 2)), CAST(2059.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (166, N'Televizyon', N'Samsung', N'XYZ456', N'2022', 5, CAST(964.00 AS Decimal(18, 2)), CAST(1156.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (167, N'Mikrodalga Firin', N'Maytag', N'123DEF', N'2018', 5, CAST(712.00 AS Decimal(18, 2)), CAST(854.40 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (168, N'Tost Makinesi', N'Samsung', N'XYZ456', N'2018', 2, CAST(1185.00 AS Decimal(18, 2)), CAST(1422.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (169, N'Mikrodalga Firin', N'KitchenAid', N'JKL321', N'2020', 2, CAST(1995.00 AS Decimal(18, 2)), CAST(2394.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (170, N'Buzdolabi', N'GE', N'123DEF', N'2024', 5, CAST(1209.00 AS Decimal(18, 2)), CAST(1450.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (171, N'Buzdolabi', N'Whirlpool', N'123DEF', N'2021', 5, CAST(1499.00 AS Decimal(18, 2)), CAST(1798.80 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (172, N'Mikrodalga Firin', N'LG', N'123DEF', N'2018', 5, CAST(1743.00 AS Decimal(18, 2)), CAST(2091.60 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (173, N'Ankastre Ocak', N'GE', N'JKL321', N'2024', 5, CAST(1658.00 AS Decimal(18, 2)), CAST(1989.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (174, N'Ankastre Ocak', N'Bosch', N'XYZ456', N'2018', 5, CAST(1889.00 AS Decimal(18, 2)), CAST(2266.80 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (175, N'Tost Makinesi', N'Maytag', N'ABC123', N'2021', 5, CAST(1305.00 AS Decimal(18, 2)), CAST(1566.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (176, N'Televizyon', N'Electrolux', N'ABC123', N'2022', 2, CAST(795.00 AS Decimal(18, 2)), CAST(954.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (177, N'Mikrodalga Firin', N'Kenmore', N'XYZ456', N'2020', 5, CAST(1800.00 AS Decimal(18, 2)), CAST(2160.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (178, N'Tost Makinesi', N'KitchenAid', N'JKL321', N'2023', 5, CAST(568.00 AS Decimal(18, 2)), CAST(681.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (179, N'Televizyon', N'Bosch', N'123DEF', N'2018', 5, CAST(1599.00 AS Decimal(18, 2)), CAST(1918.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (180, N'Mikrodalga Firin', N'Samsung', N'XYZ456', N'2023', 2, CAST(720.00 AS Decimal(18, 2)), CAST(864.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (181, N'Mikrodalga Firin', N'GE', N'XYZ456', N'2020', 5, CAST(1630.00 AS Decimal(18, 2)), CAST(1956.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (182, N'Tost Makinesi', N'Haier', N'789GHI', N'2022', 5, CAST(1196.00 AS Decimal(18, 2)), CAST(1435.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (183, N'Tost Makinesi', N'Maytag', N'XYZ456', N'2021', 5, CAST(1856.00 AS Decimal(18, 2)), CAST(2227.20 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (184, N'Buzdolabi', N'Electrolux', N'JKL321', N'2022', 2, CAST(1348.00 AS Decimal(18, 2)), CAST(1617.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (185, N'Televizyon', N'Haier', N'123DEF', N'2018', 5, CAST(1939.00 AS Decimal(18, 2)), CAST(2326.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. Yaninda Çamasir makinesi alimina %20 indirim uygulanir')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (186, N'Mikrodalga Firin', N'Electrolux', N'123DEF', N'2018', 2, CAST(874.00 AS Decimal(18, 2)), CAST(1048.80 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (187, N'Ankastre Ocak', N'Kenmore', N'XYZ456', N'2023', 2, CAST(1223.00 AS Decimal(18, 2)), CAST(1467.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (188, N'Buzdolabi', N'Electrolux', N'ABC123', N'2020', 2, CAST(1733.00 AS Decimal(18, 2)), CAST(2079.60 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (189, N'Ankastre Ocak', N'Electrolux', N'XYZ456', N'2021', 5, CAST(1552.00 AS Decimal(18, 2)), CAST(1862.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (190, N'Tost Makinesi', N'Electrolux', N'JKL321', N'2018', 2, CAST(1600.00 AS Decimal(18, 2)), CAST(1920.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (191, N'Ankastre Ocak', N'Maytag', N'789GHI', N'2023', 2, CAST(973.00 AS Decimal(18, 2)), CAST(1167.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (192, N'Mikrodalga Firin', N'Kenmore', N'XYZ456', N'2022', 5, CAST(655.00 AS Decimal(18, 2)), CAST(786.00 AS Decimal(18, 2)), N'Hediyeli. Garanti süresi 2 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (193, N'Tost Makinesi', N'Bosch', N'123DEF', N'2019', 5, CAST(715.00 AS Decimal(18, 2)), CAST(858.00 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (194, N'Buzdolabi', N'Whirlpool', N'789GHI', N'2024', 5, CAST(982.00 AS Decimal(18, 2)), CAST(1178.40 AS Decimal(18, 2)), N'Garanti süresi 2+1 yildir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (195, N'Tost Makinesi', N'KitchenAid', N'ABC123', N'2018', 5, CAST(1314.00 AS Decimal(18, 2)), CAST(1576.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (196, N'Ankastre Ocak', N'Whirlpool', N'JKL321', N'2020', 2, CAST(1697.00 AS Decimal(18, 2)), CAST(2036.40 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (197, N'Ankastre Ocak', N'Kenmore', N'789GHI', N'2024', 5, CAST(688.00 AS Decimal(18, 2)), CAST(825.60 AS Decimal(18, 2)), N'Ürün hediyelidir. 2 yil garantilidir.')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (198, N'Tost Makinesi', N'Bosch', N'123DEF', N'2023', 2, CAST(848.00 AS Decimal(18, 2)), CAST(1017.60 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (199, N'Tost Makinesi', N'KitchenAid', N'ABC123', N'2022', 2, CAST(1292.00 AS Decimal(18, 2)), CAST(1550.40 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
GO
INSERT [dbo].[TBL_URUNLER] ([ID], [UrunAd], [Marka], [Model], [Yil], [Adet], [AlisFiyat], [SatisFiyat], [Detay]) VALUES (200, N'Tost Makinesi', N'Bosch', N'123DEF', N'2021', 2, CAST(1024.00 AS Decimal(18, 2)), CAST(1228.80 AS Decimal(18, 2)), N'Garanti süresi 5 yildir. ')
SET IDENTITY_INSERT [dbo].[TBL_URUNLER] OFF
GO
ALTER TABLE [dbo].[TBL_BANKALAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BANKALAR_TBL_FIRMALAR] FOREIGN KEY([FirmaID])
REFERENCES [dbo].[TBL_FIRMALAR] ([ID])
GO
ALTER TABLE [dbo].[TBL_BANKALAR] CHECK CONSTRAINT [FK_TBL_BANKALAR_TBL_FIRMALAR]
GO
ALTER TABLE [dbo].[TBL_FATURADETAY]  WITH CHECK ADD  CONSTRAINT [FK_TBL_FATURADETAY_TBL_FATURABILGI] FOREIGN KEY([FaturaID])
REFERENCES [dbo].[TBL_FATURABILGI] ([FaturaBilgiID])
GO
ALTER TABLE [dbo].[TBL_FATURADETAY] CHECK CONSTRAINT [FK_TBL_FATURADETAY_TBL_FATURABILGI]
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_FIRMAHAREKETLER_TBL_PERSONELLER1] FOREIGN KEY([Personel])
REFERENCES [dbo].[TBL_PERSONELLER] ([ID])
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER] CHECK CONSTRAINT [FK_TBL_FIRMAHAREKETLER_TBL_PERSONELLER1]
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_FIRMAHAREKETLER_TBL_URUNLER] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TBL_URUNLER] ([ID])
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER] CHECK CONSTRAINT [FK_TBL_FIRMAHAREKETLER_TBL_URUNLER]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_MUSTERILER] FOREIGN KEY([Musteri])
REFERENCES [dbo].[TBL_MUSTERILER] ([ID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_MUSTERILER]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_PERSONELLER1] FOREIGN KEY([Personel])
REFERENCES [dbo].[TBL_PERSONELLER] ([ID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_PERSONELLER1]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_URUNLER] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TBL_URUNLER] ([ID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERIHAREKETLER_TBL_URUNLER]
GO
/****** Object:  StoredProcedure [dbo].[BankaBilgileri]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BankaBilgileri]
AS
Select TBL_BANKALAR.ID,BankaAdi,TBL_FIRMALAR.Ad, TBL_BANKALAR.Sehir,TBL_BANKALAR.Ilce,Sube,IBAN,HESAPNO
,Yetkili,Telefon,Tarih,HesapTuru
from TBL_BANKALAR
inner join 
TBL_FIRMALAR 
ON TBL_BANKALAR.FirmaID=TBL_FIRMALAR.ID
GO
/****** Object:  StoredProcedure [dbo].[FirmaHareket2]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[FirmaHareket2]
as
Select UrunAD, TBL_FIRMAHAREKETLER.Adet,TBL_FIRMALAR.Ad  AS 'FİRMA', Fiyat,Toplam
from TBL_FIRMAHAREKETLER
INNER JOIN
TBL_URUNLER
ON
TBL_FIRMAHAREKETLER.UrunID=TBL_URUNLER.ID
INNER JOIN
TBL_FIRMALAR
ON
TBL_FIRMAHAREKETLER.Firma=TBL_FIRMALAR.ID
GO
/****** Object:  StoredProcedure [dbo].[FirmaHareketler]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FirmaHareketler]
AS
Select HareketID,UrunAD, TBL_FIRMAHAREKETLER.Adet,(TBL_PERSONELLER.Ad+' '+Soyad) AS 'PERSONEL',TBL_FIRMALAR.Ad  AS 'FİRMA', Fiyat,Toplam,FaturaID,Tarih,Notlar

from TBL_FIRMAHAREKETLER
INNER JOIN
TBL_URUNLER
ON
TBL_FIRMAHAREKETLER.UrunID=TBL_URUNLER.ID
INNER JOIN
TBL_PERSONELLER
ON
TBL_FIRMAHAREKETLER.PERSONEL=TBL_PERSONELLER.ID
INNER JOIN
TBL_FIRMALAR
ON
TBL_FIRMAHAREKETLER.Firma=TBL_FIRMALAR.ID
GO
/****** Object:  StoredProcedure [dbo].[MusteriHareketler]    Script Date: 8.02.2024 10:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriHareketler]
AS
Select HareketID,UrunAD, TBL_MUSTERIHAREKETLER.Adet,(TBL_PERSONELLER.Ad+' '+TBL_PERSONELLER.Soyad) AS 'PERSONEL',(TBL_MUSTERILER.Ad+' '+TBL_MUSTERILER.Soyad)  AS 'Müşteri', Fiyat,Toplam,FaturaID,Tarih,Notlar

from TBL_MUSTERIHAREKETLER
INNER JOIN
TBL_URUNLER
ON
TBL_MUSTERIHAREKETLER.UrunID=TBL_URUNLER.ID
INNER JOIN
TBL_PERSONELLER
ON
TBL_MUSTERIHAREKETLER.PERSONEL=TBL_PERSONELLER.ID
INNER JOIN
TBL_MUSTERILER
ON
TBL_MUSTERIHAREKETLER.Musteri=TBL_MUSTERILER.ID
GO
USE [master]
GO
ALTER DATABASE [DboTicariOtomasyon] SET  READ_WRITE 
GO
