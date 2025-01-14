USE [master]
GO
/****** Object:  Database [DoAn2_VatTuNongNghiep]    Script Date: 12/21/2023 9:41:51 AM ******/
CREATE DATABASE [DoAn2_VatTuNongNghiep]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAn2_VatTuNongNghiep', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DoAn2_VatTuNongNghiep.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoAn2_VatTuNongNghiep_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DoAn2_VatTuNongNghiep_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAn2_VatTuNongNghiep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET  MULTI_USER 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET QUERY_STORE = ON
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DoAn2_VatTuNongNghiep]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Occupation] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderName] [nvarchar](max) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OderCode] [nvarchar](max) NULL,
	[OderName] [nvarchar](max) NULL,
	[CretaeDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[IsDelete] [int] NOT NULL,
	[TypeCheckout] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsDelete] [int] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/21/2023 9:41:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsDelete] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230911101638_FirstMigration', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916042433_Identity', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230927145557_new', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231004055416_potsnew', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231208015830_database', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231216180116_Isdelete', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231216180530_typecheckout', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231220104729_TenLanCapNhat', N'6.0.21')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a35f87eb-9663-4a82-aa4b-ddce31ba0f42', N'Admin', N'ADMIN', N'f9a1a126-2a38-4bc2-8e40-6d696ae6ef35')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'13a63b4f-84b1-42e5-b364-59bf4835e4c9', N'a35f87eb-9663-4a82-aa4b-ddce31ba0f42')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'13a63b4f-84b1-42e5-b364-59bf4835e4c9', NULL, N'nguyentruongan', N'NGUYENTRUONGAN', N'kaicapro@gmailcom', N'KAICAPRO@GMAILCOM', 0, N'AQAAAAEAACcQAAAAED3aDIyamH6JxRMVg2KW4PE34BBx4WHFWyIl4RYRFP9cvpmdkrrQZNUEaJXwDexhlg==', N'7U3ZRDPGX5N5EIOH3OXMAHLASII3RVF3', N'263bb1ee-f278-4864-8811-6cc483191c56', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'22dd67c9-0ecb-4fef-9d31-a293c4e4fd62', NULL, N'nongdan', N'NONGDAN', N'nongdan@gmail.com', N'NONGDAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEENwS3TwEbrN0q6MFw4MnSd/N5trYuYgas3QmWFqlFKaUpNG5gqHvSw1GH+K/9Ykqg==', N'FEC3EFXGMKYRPA5QBMCHIEISNYR7ZYRO', N'70b53bf8-f58a-4410-abfb-e3ff97bbb311', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5f5d5d20-8e7a-4401-a112-479cbacd5228', NULL, N'user', N'USER', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHFKGYdM25wnAcJXSfCzLIoleL9rgbEvI9ztHhoMbBgYdtA2qdctEWsW/Jnr/OhK9g==', N'3DYHCF2PVOHT56EUY4FOP4DXQYCTM5QV', N'301340e4-f1e5-4c27-a24e-d93b8d8146c5', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (3, N'John Deere', N'Nổi tiếng với các sản phẩm máy cày, máy gặt và máy móc nông nghiệp chất lượng cao', N'John-Deere', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (4, N'Bayer', N'Được biết đến với nghiên cứu và phát triển hạt giống và sản phẩm sinh học cho nông nghiệp', N'Bayer', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (5, N'Syngenta', N'Một trong những công ty hàng đầu cung cấp phân bón, hóa chất nông nghiệp và hạt giống', N'Syngenta', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (6, N'Corteva Agriscience', N'Chuyên nghiên cứu và phát triển hạt giống cây trồng chất lượng', N'Corteva-Agriscience', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (7, N'BASF', N'Cung cấp một loạt các sản phẩm bảo vệ thực vật, hóa chất nông nghiệp và giải pháp sinh học.', N'BASF', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (3, N'Hạt giống và Cây Trồng', N'Hạt giống các loại cây ăn quả và rau mà người nông dân cần để bắt đầu quá trình trồng trọt', N'Hạt-giống-và-Cây-Trồng', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (4, N'Phân Bón và Dinh Dưỡng', N'Phân hữu cơ và phân hóa học để cung cấp dinh dưỡng cho đất, giúp cây trồng phát triển khỏe mạnh', N'Phân-Bón-và-Dinh-Dưỡng', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (5, N'Thuốc Bảo Vệ Thực Vật', N'Thuốc trừ sâu, thuốc diệt cỏ, và thuốc chống nấm để bảo vệ cây trồng khỏi sự tấn công của côn trùng và bệnh hại.', N'Thuốc-Bảo-Vệ-Thực-Vật', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (6, N'Dụng Cụ Nông Nghiệp', N'Bao gồm các dụng cụ cần thiết như máy cày, máy gặt, cưa, và các dụng cụ làm đất để giúp nông dân thực hiện các công việc nông ', N'Dụng-Cụ-Nông-Nghiệp', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (7, N'Hệ Thống Tưới Nước', N'Bao gồm các sản phẩm như hệ thống tưới nhỏ giọt, bơi tưới, và máy bơm nước để đảm bảo cung cấp nước hiệu quả cho cây trồng', N'Hệ-Thống-Tưới-Nước', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Comments], [ProductId], [UserID], [CreateDate]) VALUES (1, N'sản phẩm rất hữu hiệu !!!', 3, N'user', CAST(N'2023-12-20T15:05:26.0237913' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (1, N'nongdan@gmail.com', N'6b75176c-3b95-4313-8f38-c4fb9eda1f8d', 3, CAST(3.75 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (2, NULL, N'6cce2e91-4d33-4c44-b528-6afec5123e0f', 3, CAST(3.75 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (3, NULL, N'22d9911a-0590-4882-9d03-98e8540c56b0', 3, CAST(3.75 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (4, NULL, N'22d9911a-0590-4882-9d03-98e8540c56b0', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (5, NULL, N'0e1b794c-6cda-4c92-8fdf-1eb8112b55f6', 3, CAST(3.75 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (6, NULL, N'0e1b794c-6cda-4c92-8fdf-1eb8112b55f6', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (7, NULL, N'45e8e283-ef2f-4f2d-9877-fddab4d052d6', 3, CAST(3.75 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (8, NULL, N'45e8e283-ef2f-4f2d-9877-fddab4d052d6', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (9, NULL, N'58787f46-01a6-4eda-8dec-dee7c1c7da7e', 3, CAST(3.75 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (10, NULL, N'58787f46-01a6-4eda-8dec-dee7c1c7da7e', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (11, NULL, N'58787f46-01a6-4eda-8dec-dee7c1c7da7e', 5, CAST(299.90 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (12, NULL, N'6b1dfe4e-46c9-4903-ae2f-c4b25002d358', 3, CAST(3.75 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (13, NULL, N'6b1dfe4e-46c9-4903-ae2f-c4b25002d358', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (14, NULL, N'6b1dfe4e-46c9-4903-ae2f-c4b25002d358', 5, CAST(299.90 AS Decimal(18, 2)), 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (15, NULL, N'34c51485-a1c5-4599-b52e-ce82f80f9864', 3, CAST(3.75 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (16, NULL, N'34c51485-a1c5-4599-b52e-ce82f80f9864', 4, CAST(4.95 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (17, NULL, N'34c51485-a1c5-4599-b52e-ce82f80f9864', 5, CAST(299.90 AS Decimal(18, 2)), 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (18, NULL, N'34c51485-a1c5-4599-b52e-ce82f80f9864', 14, CAST(699.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderName], [OrderCode], [ProductId], [Price], [Quantity]) VALUES (19, NULL, N'34c51485-a1c5-4599-b52e-ce82f80f9864', 26, CAST(699.00 AS Decimal(18, 2)), 7)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (1, N'6b75176c-3b95-4313-8f38-c4fb9eda1f8d', N'nongdan@gmail.com', CAST(N'2023-12-09T00:45:21.9186973' AS DateTime2), 1, 0, 0)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (2, N'6cce2e91-4d33-4c44-b528-6afec5123e0f', N'kaicapro@gmailcom', CAST(N'2023-12-17T01:31:53.1494062' AS DateTime2), 0, 0, 1)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (3, N'22d9911a-0590-4882-9d03-98e8540c56b0', N'user@gmail.com', CAST(N'2023-12-17T15:16:17.8792742' AS DateTime2), 1, 0, 0)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (4, N'0e1b794c-6cda-4c92-8fdf-1eb8112b55f6', N'user@gmail.com', CAST(N'2023-12-20T15:35:03.6038273' AS DateTime2), 1, 0, 1)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (5, N'45e8e283-ef2f-4f2d-9877-fddab4d052d6', N'user@gmail.com', CAST(N'2023-12-20T15:36:41.5939073' AS DateTime2), 1, 0, 1)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (6, N'58787f46-01a6-4eda-8dec-dee7c1c7da7e', N'user@gmail.com', CAST(N'2023-12-20T15:37:33.0882508' AS DateTime2), 1, 0, 1)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (7, N'6b1dfe4e-46c9-4903-ae2f-c4b25002d358', N'user@gmail.com', CAST(N'2023-12-20T15:38:36.1740082' AS DateTime2), 1, 0, 1)
INSERT [dbo].[Orders] ([Id], [OderCode], [OderName], [CretaeDate], [Status], [IsDelete], [TypeCheckout]) VALUES (8, N'34c51485-a1c5-4599-b52e-ce82f80f9864', N'user@gmail.com', CAST(N'2023-12-20T15:56:43.5068692' AS DateTime2), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Title], [Content], [UserID], [CreatedAt], [IsDelete]) VALUES (1, N' Bí Quyết Trồng Cây Sầu Riêng Đúng Cách tại Đồng Tháp', N'<p>Ti&ecirc;u đề: B&iacute; Quyết Trồng C&acirc;y Sầu Ri&ecirc;ng Đ&uacute;ng C&aacute;ch tại Đồng Th&aacute;p</p>

<p>### Giới Thiệu</p>

<p>Việc trồng c&acirc;y sầu ri&ecirc;ng kh&ocirc;ng chỉ mang lại những quả tr&aacute;i ngon miệng m&agrave; c&ograve;n đ&oacute;ng vai tr&ograve; quan trọng trong việc ph&aacute;t triển nền kinh tế v&agrave; n&acirc;ng cao thu nhập cho nhiều người d&acirc;n tại Đồng Th&aacute;p. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về những bước cơ bản để trồng c&acirc;y sầu ri&ecirc;ng một c&aacute;ch hiệu quả nhất tại v&ugrave;ng đất m&agrave;u mỡ v&agrave; dẻo của miền T&acirc;y.</p>

<p><strong>1. Chọn Lựa Đất Đ&uacute;ng</strong></p>

<p>Đất chất đen mềm mại, tơi xốp l&agrave; loại đất m&agrave; c&acirc;y sầu ri&ecirc;ng y&ecirc;u th&iacute;ch nhất. Trước khi bắt đầu, h&atilde;y kiểm tra pH đất v&agrave; điều chỉnh nếu cần thiết để đảm bảo đất ph&ugrave; hợp với sầu ri&ecirc;ng.</p>

<p><strong>2. Chọn Giống C&acirc;y Sầu Ri&ecirc;ng Ph&ugrave; Hợp</strong></p>

<p><img alt="Nông dân đua trồng sầu riêng" src="https://kinhtenongthon.vn/data/data/thanduong/2023/02/10/sr.jpg" /></p>

<p>Việc chọn giống c&acirc;y sầu ri&ecirc;ng l&agrave; quyết định quan trọng. Ở Đồng Th&aacute;p, c&oacute; nhiều giống sầu ri&ecirc;ng phổ biến như Ri6, Ri8, v&agrave; C&acirc;y Sầu Ri&ecirc;ng M&atilde; Lai. H&atilde;y t&igrave;m hiểu kỹ về đặc điểm của từng giống để c&oacute; sự lựa chọn đ&uacute;ng đắn.</p>

<p><strong>3. Chuẩn Bị Đất v&agrave; Gieo Mầm</strong></p>

<p>Trước khi gieo mầm, h&atilde;y loại bỏ cỏ dại v&agrave; l&agrave;m sạch v&ugrave;ng trồng. Gieo mầm v&agrave;o c&aacute;c ổ hố nhỏ, giữ khoảng c&aacute;ch giữa c&aacute;c hạt mầm để đảm bảo sự ph&aacute;t triển đều đặn.</p>

<p>&nbsp;<strong>4. Chăm S&oacute;c Đ&uacute;ng C&aacute;ch</strong></p>

<p>Sau khi c&acirc;y nảy mầm, h&atilde;y duy tr&igrave; độ ẩm đất v&agrave; hạn chế cỏ dại ph&aacute;t triển. Việc tưới nước cần được thực hiện đều đặn v&agrave; hợp l&yacute;. Đồng thời, c&acirc;n nhắc sử dụng ph&acirc;n b&oacute;n hữu cơ để cung cấp dưỡng chất cho c&acirc;y.</p>

<p><strong>5. Quản L&yacute; C&acirc;y Sầu Ri&ecirc;ng Trưởng Th&agrave;nh</strong></p>

<p><img alt="Nông dân đua trồng sầu riêng" src="https://vca.org.vn/upload/images/NGA/Nam%202023/thang%202/sau-rieng-16759910136681506553180.jpg" /></p>

<p>Khi c&acirc;y đ&atilde; ph&aacute;t triển, h&atilde;y c&acirc;n nhắc đến việc tỉa c&agrave;nh để giữ cho c&acirc;y c&oacute; h&igrave;nh d&aacute;ng đều đẹp v&agrave; tăng cường cảnh quan trang tr&iacute;. Hạn chế sử dụng c&aacute;c loại thuốc trừ s&acirc;u h&oacute;a học v&agrave; nếu cần, h&atilde;y chọn những phương ph&aacute;p hữu cơ.</p>

<p><strong>6. Thu Hoạch Đ&uacute;ng Kỹ Thuật</strong></p>

<p>Khi quả sầu ri&ecirc;ng đ&atilde; ch&iacute;n, h&atilde;y thu hoạch ch&uacute;ng với kỹ thuật đ&uacute;ng để tr&aacute;nh l&agrave;m tổn thương c&acirc;y v&agrave; giữ cho quả tr&aacute;i đạt chất lượng tốt nhất.</p>

<p><img alt="Kỹ thuật trồng cây sầu riêng | Báo Dân tộc và Phát triển" src="data:image/jpeg;base64,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" /></p>

<p><strong>Kết Luận</strong></p>

<p>Bằng việc &aacute;p dụng những bước trồng c&acirc;y sầu ri&ecirc;ng đ&uacute;ng c&aacute;ch tại Đồng Th&aacute;p, bạn sẽ kh&ocirc;ng chỉ thu được những quả sầu ri&ecirc;ng ngon miệng m&agrave; c&ograve;n g&oacute;p phần v&agrave;o sự ph&aacute;t triển của nền n&ocirc;ng nghiệp địa phương. H&atilde;y để mỗi bước h&agrave;nh động được thực hiện cẩn thận v&agrave; y&ecirc;u thương c&acirc;y trồng của bạn.</p>
', N'truongan', CAST(N'2023-12-09T00:29:43.0439858' AS DateTime2), 0)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [UserID], [CreatedAt], [IsDelete]) VALUES (2, N'Kỹ Thuật Trị Đạo Ôn Trên Lúa - Điều Quan Trọng Đối với Nông Dân', N'<p>Ti&ecirc;u đề: Kỹ Thuật Trị Đạo &Ocirc;n Tr&ecirc;n L&uacute;a - Điều Quan Trọng Đối với N&ocirc;ng D&acirc;n</p>

<p><strong>### Giới Thiệu</strong></p>

<p>Trong ng&agrave;nh n&ocirc;ng nghiệp, vấn đề &ocirc;n đất đ&oacute;ng một vai tr&ograve; quan trọng trong việc đảm bảo sự ph&aacute;t triển v&agrave; năng suất của c&acirc;y trồng, đặc biệt l&agrave; với loại c&acirc;y l&uacute;a quan trọng như l&agrave; nguồn thực phẩm cơ bản. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về kỹ thuật trị đạo &ocirc;n tr&ecirc;n l&uacute;a v&agrave; tại sao n&oacute; l&agrave; một phần quan trọng của quy tr&igrave;nh chăm s&oacute;c c&acirc;y trồng.</p>

<p><strong>### 1. &Ocirc;n Đất v&agrave; T&aacute;c Động Đến Năng Suất L&uacute;a</strong></p>

<p><img alt="Bệnh đạo ôn gây hại trên cây lúa và biện pháp phòng trừ" src="https://vietthanghanoi.vn/wp-content/uploads/2022/05/benh-dao-on-gay-hai-tren-cay-lua.jpg" /></p>

<p>&Ocirc;n đất, hay c&ograve;n được gọi l&agrave; trị đạo &ocirc;n, l&agrave; qu&aacute; tr&igrave;nh cải thiện t&igrave;nh trạng cấu tr&uacute;c đất để tăng khả năng tho&aacute;t nước v&agrave; cung cấp dinh dưỡng cho c&acirc;y trồng. Trong trường hợp l&uacute;a, việc &ocirc;n đất ch&iacute;nh l&agrave; một yếu tố quyết định đến năng suất v&agrave; chất lượng của l&uacute;a.</p>

<p><strong>### 2. Lợi &Iacute;ch Của Kỹ Thuật Trị Đạo &Ocirc;n</strong></p>

<p><img alt="Phòng trừ bệnh đạo ôn hại lúa xuân" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSvy6bzLpowUGpR62OibVr4dNQEJVA4jjwng&amp;usqp=CAU" /></p>

<p>- **Cải Thiện Tho&aacute;t Nước:** Qu&aacute; tr&igrave;nh trị đạo &ocirc;n gi&uacute;p cải thiện cấu tr&uacute;c đất, giảm hiện tượng đất bị cứng v&agrave; k&eacute;m tho&aacute;t nước. Điều n&agrave;y gi&uacute;p c&acirc;y l&uacute;a c&oacute; khả năng hấp thụ nước v&agrave; dinh dưỡng tốt hơn.</p>

<p>- **Tăng Sức Sống Đất:** Việc trị đạo &ocirc;n cũng tăng cường sức sống của vi sinh vật trong đất, gi&uacute;p cải thiện hệ thống rễ c&acirc;y v&agrave; khả năng hấp thụ dinh dưỡng.</p>

<p>- **Đối Ph&oacute; với Hiện Tượng &Ocirc; Nhiễm:** Trị đạo &ocirc;n c&oacute; thể gi&uacute;p đối ph&oacute; với t&igrave;nh trạng &ocirc; nhiễm h&oacute;a chất trong đất, giảm t&aacute;c động ti&ecirc;u cực đến sức khỏe của c&acirc;y l&uacute;a.</p>

<p><strong>### 3. Bước Thực Hiện Trị Đạo &Ocirc;n</strong></p>

<p><img alt="Mua THUỐC TRỪ BỆNH ĐẠO ÔN LÁ, ĐẠO ÔN CỔ BÔNG, ĐẶC TRỊ ĐẠO ÔN TRÊN LÚA -  DIỆT ĐẠO ÔN 25GAM tại NÔNG NGHIỆP XANH XANH | Tiki" src="https://salt.tikicdn.com/cache/280x280/ts/product/d6/a5/2f/a904a89b0eaf4d94335835282de9b965.jpg" /></p>

<p>- **Kiểm Tra Đất:** Trước khi thực hiện trị đạo &ocirc;n, n&ocirc;ng d&acirc;n cần kiểm tra đất để đ&aacute;nh gi&aacute; cấu tr&uacute;c, độ cứng, v&agrave; mức độ tho&aacute;t nước của đất.</p>

<p>- **Lựa Chọn Phương Ph&aacute;p &Ocirc;n:** Dựa v&agrave;o đặc điểm đất v&agrave; điều kiện m&ocirc;i trường, n&ocirc;ng d&acirc;n c&oacute; thể lựa chọn giữa c&aacute;c phương ph&aacute;p &ocirc;n đất như cấy gieo m&ugrave;a đ&ocirc;ng, trồng c&acirc;y phủ mặt đất, hoặc sử dụng ph&acirc;n hữu cơ.</p>

<p>- **Chăm S&oacute;c Khi Đang Trồng:** Trong qu&aacute; tr&igrave;nh c&acirc;y l&uacute;a đang trồng, việc chăm s&oacute;c đất bao gồm tưới nước đều đặn, kiểm so&aacute;t cỏ dại, v&agrave; sử dụng ph&acirc;n b&oacute;n hữu cơ để tối ưu h&oacute;a hiệu suất của kỹ thuật trị đạo &ocirc;n.</p>

<p><strong>### Kết Luận</strong></p>

<p>Kỹ thuật trị đạo &ocirc;n kh&ocirc;ng chỉ đơn thuần l&agrave; một phương ph&aacute;p chăm s&oacute;c đất m&agrave; c&ograve;n l&agrave; ch&igrave;a kh&oacute;a quan trọng đối với sự ph&aacute;t triển v&agrave; năng suất của c&acirc;y l&uacute;a. N&ocirc;ng d&acirc;n cần hiểu r&otilde; về t&igrave;nh trạng</p>
', N'truongan', CAST(N'2023-12-09T00:32:50.8649622' AS DateTime2), 1)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [UserID], [CreatedAt], [IsDelete]) VALUES (3, N'Kỹ Thuật Trồng Xoài Hiệu Quả', N'<p>### B&agrave;i Viết: Kỹ Thuật Trồng Xo&agrave;i Hiệu Quả</p>

<p><strong>#### 1. **Chọn V&ugrave;ng Đất Th&iacute;ch Hợp:**</strong><br />
&nbsp; &nbsp;Trước hết, h&atilde;y chọn v&ugrave;ng đất c&oacute; độ tho&aacute;t nước tốt, gi&agrave;u chất hữu cơ v&agrave; nhiều &aacute;nh s&aacute;ng mặt trời. Đất tho&aacute;t nước tốt gi&uacute;p ngăn chặn t&igrave;nh trạng đọng nước, một vấn đề c&oacute; thể g&acirc;y hại cho c&acirc;y xo&agrave;i.</p>

<p><strong>#### 2. **Chọn Giống Xo&agrave;i Ph&ugrave; Hợp:**</strong><br />
&nbsp; &nbsp;Việc chọn giống xo&agrave;i quyết định đến năng suất v&agrave; chất lượng tr&aacute;i quả. H&atilde;y t&igrave;m hiểu về c&aacute;c giống xo&agrave;i phổ biến v&agrave; chọn giống ph&ugrave; hợp với điều kiện kh&iacute; hậu v&agrave; đất đai của khu vực bạn trồng.</p>

<p><strong>#### 3. **Chuẩn Bị Đất Trước Khi Trồng:**</strong><br />
&nbsp; &nbsp;- Loại bỏ cỏ dại v&agrave; c&aacute;c vật liệu kh&ocirc;ng mong muốn kh&aacute;c.<br />
&nbsp; &nbsp;- Trộn đất với ph&acirc;n hữu cơ để cung cấp dưỡng chất cho c&acirc;y.<br />
&nbsp; &nbsp;- L&agrave;m c&aacute;c lỗ trồng khoảng 5-6 m&eacute;t xa nhau để tạo đủ kh&ocirc;ng gian cho sự ph&aacute;t triển của c&acirc;y.</p>

<p><strong>#### 4. **Kỹ Thuật Trồng:**</strong></p>

<p><img alt="KỸ THUẬT TRỒNG XOÀI" src="https://bizweb.dktcdn.net/100/422/567/files/u.png?v=1642312557243" /><br />
&nbsp; &nbsp;- Trước khi trồng, h&atilde;y ng&acirc;m gốc c&acirc;y xo&agrave;i v&agrave;o nước để k&iacute;ch th&iacute;ch sự sống s&oacute;t khi trồng.<br />
&nbsp; &nbsp;- Đặt c&acirc;y v&agrave;o lỗ trồng v&agrave; bổ sung đất xung quanh gốc c&acirc;y.<br />
&nbsp; &nbsp;- Nước đều cho c&acirc;y sau khi trồng để gi&uacute;p c&acirc;y định sẵn trong đất.</p>

<p><strong>#### 5. **Chăm S&oacute;c Định Kỳ:**</strong><br />
&nbsp; &nbsp;- Tưới nước đều đặn, nhất l&agrave; trong thời kỳ kh&ocirc; hạn.<br />
&nbsp; &nbsp;- Kiểm tra v&agrave; loại bỏ cỏ dại thường xuy&ecirc;n.<br />
&nbsp; &nbsp;- Sử dụng ph&acirc;n b&oacute;n hữu cơ để cung cấp dưỡng chất cho c&acirc;y.</p>

<p><strong>#### 6. **Hỗ Trợ C&acirc;y Trồng:**</strong><br />
&nbsp; &nbsp;- D&ugrave;ng cọc hỗ trợ để giữ cho c&acirc;y xo&agrave;i thẳng v&agrave; tr&aacute;nh bị đổ khi trời gi&oacute; mạnh.<br />
&nbsp; &nbsp;- Nếu c&acirc;y qu&aacute; cao, h&atilde;y cắt tỉa để kiểm so&aacute;t chiều cao v&agrave; khuyến kh&iacute;ch ph&aacute;t triển c&agrave;nh mới.</p>

<p><strong>#### 7. **Ph&ograve;ng Ngừa Bệnh Tật:**</strong></p>

<p><img alt="Giống Cây Xoài Tứ Quí - Trung Tâm Cây Giống Học Viện Nông ..." src="https://giongcayanqua.edu.vn/upload/images/bai-viet/xoai-tu-quy-1.jpg" /><br />
&nbsp; &nbsp;- Xo&agrave;i thường dễ bị nhiễm một số bệnh như nấm v&agrave; s&acirc;u bệnh. Sử dụng phương ph&aacute;p ph&ograve;ng ngừa v&agrave; kiểm so&aacute;t bệnh tật để bảo vệ c&acirc;y.</p>

<p><strong>#### 8. **Thu Hoạch Đ&uacute;ng C&aacute;ch:**</strong></p>

<p><img alt="Huyện Châu Thành A: Mô hình trồng Xoài cát Hòa Lộc cho thu nhập ổn định." src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3muUW6rM8tlModfIxXo14n5YKB3Qa_hymMMqw7C3G9aoHNyStE4nJaJ2C3Nas_tGlrjI&amp;usqp=CAU" /><br />
&nbsp; &nbsp;- Khi tr&aacute;i xo&agrave;i ch&iacute;n đỏ v&agrave; dễ t&aacute;ch khỏi c&agrave;nh, đ&oacute; l&agrave; thời điểm thu hoạch.<br />
&nbsp; &nbsp;- Sử dụng c&ocirc;ng cụ sạch để cắt tr&aacute;i xo&agrave;i, tr&aacute;nh l&agrave;m tổn thương c&agrave;nh v&agrave; bảo quản chất lượng của tr&aacute;i.</p>

<p>Bằng c&aacute;ch &aacute;p dụng những kỹ thuật trồng xo&agrave;i th&ocirc;ng minh v&agrave; hiệu quả, bạn sẽ c&oacute; được những c&acirc;y xo&agrave;i khỏe mạnh v&agrave; tr&aacute;i ngon mắt, đồng thời tối ưu h&oacute;a năng suất trong vườn xo&agrave;i của m&igrave;nh.</p>
', N'truongan', CAST(N'2023-12-09T00:35:02.4619630' AS DateTime2), 0)
INSERT [dbo].[Posts] ([Id], [Title], [Content], [UserID], [CreatedAt], [IsDelete]) VALUES (4, N'Kỹ Thuật Bón Phân Cho Lúa - Nâng Cao Năng Suất và Giảm Chi Phí', N'<p>### B&agrave;i Viết: Kỹ Thuật B&oacute;n Ph&acirc;n Cho L&uacute;a - N&acirc;ng Cao Năng Suất v&agrave; Giảm Chi Ph&iacute;</p>

<p><strong>#### Giới Thiệu</strong></p>

<p>Trong ng&agrave;nh n&ocirc;ng nghiệp, việc &aacute;p dụng kỹ thuật b&oacute;n ph&acirc;n hiệu quả kh&ocirc;ng chỉ gi&uacute;p n&acirc;ng cao năng suất l&uacute;a m&agrave; c&ograve;n đ&oacute;ng g&oacute;p v&agrave;o việc giảm chi ph&iacute; sản xuất. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về c&aacute;c kỹ thuật b&oacute;n ph&acirc;n gi&uacute;p l&uacute;a đạt năng suất cao m&agrave; vẫn duy tr&igrave; hiệu quả chi ph&iacute;.</p>

<p><strong>#### 1. **Ph&acirc;n T&iacute;ch Đất Trước Khi B&oacute;n Ph&acirc;n:**</strong><br />
&nbsp; &nbsp;- Trước khi bắt đầu m&ugrave;a trồng, h&atilde;y thực hiện ph&acirc;n t&iacute;ch đất để đ&aacute;nh gi&aacute; lượng dinh dưỡng c&oacute; sẵn.<br />
&nbsp; &nbsp;- Ph&acirc;n t&iacute;ch gi&uacute;p x&aacute;c định loại ph&acirc;n cần sử dụng v&agrave; liều lượng ph&ugrave; hợp.</p>

<p><img alt="Cách bón phân, chăm sóc, bảo vệ lúa mùa - Báo Nam Định điện tử" src="https://baonamdinh.vn/file/e7837c02816d130b0181a995d7ad7e96/dataimages//202007/original/images1325453_Untitled_1.jpg" /></p>

<p><strong>#### 2. **Chọn Loại Ph&acirc;n Hợp L&yacute;:**</strong><br />
&nbsp; &nbsp;- Dựa v&agrave;o kết quả ph&acirc;n t&iacute;ch đất, chọn loại ph&acirc;n hữu cơ hoặc ph&acirc;n h&oacute;a học ph&ugrave; hợp với nhu cầu của c&acirc;y l&uacute;a.<br />
&nbsp; &nbsp;- Sử dụng ph&acirc;n c&oacute; chứa đủ c&aacute;c chất dinh dưỡng như nitơ, phosphorus, v&agrave; potassium.</p>

<p><img alt="Phương pháp bón phân cho lúa hiệu quả" src="https://dienmaybaongoc.vn/uploads/Images/may-phun-phan-bon-2.jpg" /></p>

<p><strong>#### 3. **Ph&acirc;n Phối Ph&acirc;n Đều Tr&ecirc;n Diện T&iacute;ch:**</strong><br />
&nbsp; &nbsp;- Sử dụng m&aacute;y b&oacute;n ph&acirc;n để ph&acirc;n phối đồng đều lượng ph&acirc;n tr&ecirc;n diện t&iacute;ch cả v&ugrave;ng đồng.<br />
&nbsp; &nbsp;- Điều n&agrave;y gi&uacute;p tr&aacute;nh t&igrave;nh trạng l&uacute;a mọc kh&ocirc;ng đồng đều v&agrave; tăng cường hiệu suất sử dụng ph&acirc;n.</p>

<p><img alt="Kỹ Thuật Bón Phân Lúa Giai Đoạn Đón &amp; Nuôi Đòng: Dinh Dưỡng Lúa Đón Đòng –  Bông Trổ To Chắc Hạt - Phân bón Cà Mau" src="https://www.pvcfc.com.vn/Data/Sites/1/News/5915/pbcm_bai-seo_hinh-dinhduongluadondong-bongtrotochachat-min.jpg" /></p>

<p><strong>#### 4. **Chia Ph&acirc;n Thời Kỳ Ph&aacute;t Triển Của L&uacute;a:**</strong><br />
&nbsp; &nbsp;- Chia lượng ph&acirc;n th&agrave;nh c&aacute;c giai đoạn ph&aacute;t triển kh&aacute;c nhau của l&uacute;a như giai đoạn mạ, giai đoạn đổ nh&aacute;nh, v&agrave; giai đoạn đậu hạt.<br />
&nbsp; &nbsp;- Điều n&agrave;y gi&uacute;p c&acirc;y l&uacute;a nhận được lượng dinh dưỡng ch&iacute;nh x&aacute;c cần thiết tại từng giai đoạn quan trọng.</p>

<p><strong>#### 5. **Kết Hợp Ph&acirc;n Hữu Cơ v&agrave; H&oacute;a Học:**</strong><br />
&nbsp; &nbsp;- Kết hợp sử dụng ph&acirc;n hữu cơ v&agrave; ph&acirc;n h&oacute;a học để tối ưu h&oacute;a cả hai loại ph&acirc;n.<br />
&nbsp; &nbsp;- Ph&acirc;n hữu cơ cung cấp chất hữu cơ cho đất, c&ograve;n ph&acirc;n h&oacute;a học cung cấp nhanh ch&oacute;ng c&aacute;c chất dinh dưỡng cần thiết.</p>

<p><strong>#### 6. **Sử Dụng Ph&acirc;n B&oacute;n &Ocirc; Nhiễm Thấp:**</strong><br />
&nbsp; &nbsp;- Chọn lựa ph&acirc;n b&oacute;n c&oacute; h&agrave;m lượng &ocirc; nhiễm thấp để giảm ảnh hưởng ti&ecirc;u cực đến m&ocirc;i trường v&agrave; sức khỏe của c&acirc;y l&uacute;a.</p>

<p><strong>#### 7. **Tận Dụng Ph&acirc;n Tổ Chức N&ocirc;ng D&acirc;n:**</strong><br />
&nbsp; &nbsp;- Li&ecirc;n kết với tổ chức n&ocirc;ng d&acirc;n để tận dụng ph&acirc;n do họ sản xuất.<br />
&nbsp; &nbsp;- Ph&acirc;n tổ chức thường c&oacute; chất lượng tốt v&agrave; gi&aacute; th&agrave;nh hợp l&yacute;.</p>

<p><strong>#### 8. **Gi&aacute;m S&aacute;t V&agrave; Điều Chỉnh Theo D&otilde;i:**</strong><br />
&nbsp; &nbsp;- Thực hiện gi&aacute;m s&aacute;t định kỳ về t&igrave;nh trạng của c&acirc;y l&uacute;a v&agrave; phản ứng của ch&uacute;ng đối với lượng ph&acirc;n b&oacute;n.<br />
&nbsp; &nbsp;- Dựa v&agrave;o kết quả gi&aacute;m s&aacute;t, điều chỉnh liều lượng v&agrave; thời điểm b&oacute;n ph&acirc;n nếu cần.</p>

<p><strong>#### Kết Luận</strong></p>

<p><img alt="Bón phân hợp lý cho lúa chất lượng cao" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXZMkHGYwKHwV_B-eTSIqmouQ8_gNi1-6Mlw&amp;usqp=CAU" /></p>

<p>Bằng c&aacute;ch thực hiện c&aacute;c kỹ thuật b&oacute;n ph&acirc;n th&ocirc;ng minh v&agrave; hiệu quả, n&ocirc;ng d&acirc;n kh&ocirc;ng chỉ c&oacute; thể đạt được năng suất cao cho đồng l&uacute;a m&agrave; c&ograve;n giảm được chi ph&iacute; sản xuất. Sự kết hợp linh hoạt giữa ph&acirc;n hữu cơ v&agrave; h&oacute;a học, c&ugrave;ng với việc chia lượng ph&acirc;n theo giai đoạn ph&aacute;t triển của c&acirc;y, sẽ gi&uacute;p tối ưu h&oacute;a sự sử dụng ph&acirc;n b&oacute;n v&agrave; mang lại lợi &iacute;ch l&acirc;u d&agrave;i cho n&ocirc;ng d&acirc;n.</p>
', N'truongan', CAST(N'2023-12-09T00:37:58.3906474' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (3, N'Aliette 800WG - Đặc trị vi khuẩn, chết nhanh (thối gốc), lở cổ rễ, thối rễ, sương mai, thối trái xì mủ. - Fosetyl Aluminium - Bayer', N'<p>- Sản phẩm của Bayer A.S.S Ph&aacute;p.</p>

<p>- Đăng k&yacute; v&agrave; ph&acirc;n phối bởi c&ocirc;ng ty TNHH Bayer Việt Nam.</p>

<p>- Th&agrave;nh phần: Fosetyl Aluminium 800g/kg, phụ gia 200g/kg.</p>

<p>- Qui c&aacute;ch: 100g/g&oacute;i.</p>

<p>- C&ocirc;ng dụng&nbsp;Aliette:</p>

<p>Aliette đặc trị ch&aacute;y l&aacute; vi khuẩn, chết nhanh (thối gốc), lở cổ rễ, thối rễ, sương mai, thối tr&aacute;i x&igrave; mủ.</p>

<p>Aliette 800WG kh&ocirc;ng pha chung với thuốc gốc đồng, lưu huỳnh, ph&acirc;n b&oacute;n c&oacute; đạm.</p>

<p>Aliette l&agrave; thuốc duy nhất lưu dẫn 2 chiều.</p>

<p>Aliette k&iacute;ch th&iacute;ch l&uacute;a tiết kh&aacute;ng thể ti&ecirc;u diệt vi khuẩn.</p>

<p>Phun Aliette một lần bảo vệ l&uacute;a suốt cả vụ.</p>

<p>- Hướng dẫn sử dụng&nbsp;Aliette:</p>

<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>C&acirc;y trồng &ndash; Bệnh hại</strong></p>
			</td>
			<td>
			<p><strong>C&aacute;ch phun</strong></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p>* Pha 50g /b&igrave;nh 16 l&iacute;t (1kg/ha)</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y l&uacute;a &ndash; Ch&aacute;y l&aacute; vi khuẩn</p>
			</td>
			<td>
			<p>Phun sớm giai đoạn l&uacute;a l&agrave;m đ&ograve;ng. Phun 320 l&iacute;t nước /ha.</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p>* Pha 40g /b&igrave;nh 16 l&iacute;t</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y ti&ecirc;u &ndash; Chết nhanh (thối gốc)</p>
			</td>
			<td>
			<p>Phun đều tr&ecirc;n l&aacute;. Phun một lần /th&aacute;ng trong m&ugrave;a mưa.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y cam, qu&yacute;t &ndash; Lở cổ rễ, thối rễ</p>
			</td>
			<td>
			<p>Phun đều tr&ecirc;n l&aacute;, c&oacute; thể pha nước tưới quanh gốc theo t&aacute;n c&acirc;y.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y dưa leo &ndash; Phấn trắng</p>
			</td>
			<td>
			<p>Phun khi thấy bệnh xuất hiện. Phun 500-600 l&iacute;t nước/ ha.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y dưa hấu, khoai t&acirc;y &ndash; Sương mai</p>
			</td>
			<td>
			<p>Phun khi thấy bệnh xuất hiện. Phun 400-500 l&iacute;t nước/ ha.</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p>* Pha 30g /b&igrave;nh 16 l&iacute;t</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y sầu ri&ecirc;ng, ca cao &ndash; Thối tr&aacute;i, x&igrave; mủ</p>
			</td>
			<td>
			<p>Phun ướt đều c&acirc;y khi thấy bệnh xuất hiện</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p>* Pha 28g /b&igrave;nh 16 l&iacute;t</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>C&acirc;y vải &ndash; Sương mai</p>
			</td>
			<td>
			<p>Phun đều tr&ecirc;n l&aacute; giai đoạn mới ra b&ocirc;ng v&agrave; tạo tr&aacute;i non.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Phun c&aacute;ch ly đối với sầu ri&ecirc;ng 01 ng&agrave;y, ca cao 07 ng&agrave;y, c&acirc;y trồng kh&aacute;c 14 ng&agrave;y.</p>
', N'Aliette-800WG---Đặc-trị-vi-khuẩn,-chết-nhanh-(thối-gốc),-lở-cổ-rễ,-thối-rễ,-sương-mai,-thối-trái-xì-mủ.---Fosetyl-Aluminium---Bayer', CAST(3.75 AS Decimal(18, 2)), 5, 4, N'3341829f-9ecf-47c8-9505-2585a65e260b_aliette_.png', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (4, N'Thuốc Trừ Sâu NALDAPHOS 350EC - Hiệu Vua Nhện', N'<p>Thuốc Trừ S&acirc;u NALDAPHOS 350EC - Hiệu Vua Nhện<br />
Hoạt Chất: Quinalphos ............. 250g/l&iacute;t<br />
Fenpropathrin .... 100g/l&iacute;t</p>

<p>Thuốc l&agrave; hỗn hợp đa t&aacute;c dụng, c&oacute; t&iacute;nh lưu dẫn, nội hấp mạnh, thấm s&acirc;u, vị độc n&ecirc;n c&oacute; hiệu lực cao v&agrave; k&eacute;o d&agrave;i, hạ gục nhanh với c&aacute;c loại s&acirc;u hại.</p>

<p>* Naldaphos 350EC được c&ocirc;ng ty đăng k&yacute; trừ nhện gi&eacute; hại l&uacute;a.</p>

<p>* Hoạt chất Fenpropathrin v&agrave; Quinalphos được đăng k&yacute; tại Việt Nam để đặc trị: S&acirc;u cuốn l&aacute;, rầy n&acirc;u, bọ trĩ ( b&ugrave; lạch), nhện gi&eacute;, muỗi h&agrave;nh tr&ecirc;n l&uacute;a, nhện đỏ, rệp s&aacute;p, rầy xanh, ng&acirc;y, rầy mật ( rầy nhớt) tr&ecirc;n c&acirc;y ăn tr&aacute;i, bọ nhảy, rầy mật( rầy nhớt), nhện đỏ, bọ trĩ tr&ecirc;n rau m&agrave;u.</p>
', N'Thuốc-Trừ-Sâu-NALDAPHOS-350EC---Hiệu-Vua-Nhện', CAST(4.95 AS Decimal(18, 2)), 5, 4, N'74cb50e7-a8a6-4bbb-b394-0f1a9ecc311f_vuanhen.png', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (5, N'Becano 500SC – Thuốc trừ cỏ tiền nảy mầm – không chọn lọc – sử dụng trên cây lâu năm', N'<p><strong>TH&Agrave;NH PHẦN:</strong></p>

<p>Hoạt chất: Indaziflam : 500 gam/l&iacute;t ;Phụ gia:&nbsp;500 gam/l&iacute;t.</p>

<p><strong>HƯỚNG DẪN SỬ DỤNG:</strong></p>

<p>L&agrave; thuốc trừ cỏ tiền nẩy mầm kh&ocirc;ng chọn lọc.</p>

<p>Tr&ecirc;n c&aacute;c c&acirc;y như c&agrave; ph&ecirc;, cao su, ch&egrave;, thanh long: Pha 4ml/b&igrave;nh 16 l&iacute;t nước. ( 50ml/phuy 200 l&iacute;t nước ); Lượng nước 400 l&iacute;t/ha. Phun sau khi đ&atilde; l&agrave;m sạch cỏ, đất đủ ẩm, kh&ocirc;ng phun trực tiếp l&ecirc;n c&acirc;y trồng, phun phủ đều mặt đất.</p>

<p><strong>MỐI NGUY:</strong></p>

<p>C&oacute; thể c&oacute; hại nếu nuốt phải; C&oacute; thể c&oacute; hại khi h&iacute;t phải; C&oacute; thể c&oacute; hại khi tiếp x&uacute;c với da; Rất độc đối với với sinh vật thủy sinh.</p>
', N'Becano-500SC-–-Thuốc-trừ-cỏ-tiền-nảy-mầm-–-không-chọn-lọc-–-sử-dụng-trên-cây-lâu-năm', CAST(299.90 AS Decimal(18, 2)), 5, 4, N'e9738d17-88ba-4485-8757-0aee7bfb68a1_becano-.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (6, N'NOMINEE 10SC - Thuốc Trừ Cỏ Lúa Hậu Nảy Mầm - Bispyribac sodium', N'<p><strong>Hoạt chất:</strong>&nbsp;Bispyribac-sodium &hellip;&hellip;&hellip;. 100g/l<br />
<br />
<strong>Đặc t&iacute;nh:</strong><br />
L&agrave; thuốc trừ cỏ l&uacute;a hậu nảy mầm, c&oacute; t&iacute;nh chọn lọc cao, t&aacute;c động tiếp x&uacute;c v&agrave; hấp thu chủ yếu qua l&aacute;.<br />
<br />
<strong>Ưu điểm:</strong><br />
- Thời gian sử dụng k&eacute;o d&agrave;i: 7 &ndash; 20 ng&agrave;y sau sạ<br />
- Phổ diệt cỏ rộng: diệt tốt cả 3 nh&oacute;m cỏ<br />
- An to&agrave;n cho l&uacute;a v&agrave; m&ocirc;i trường<br />
- C&oacute; thể phối hợp chung với thuốc trừ s&acirc;u để phun (Marshal 200SC).<br />
<strong>C&ocirc;ng dụng:</strong></p>

<p>Nominee 10SC l&agrave; thuốc trừ cỏ hậu nẩy mầm, c&oacute; t&iacute;nh an to&agrave;n cao, diệt hầu hết c&aacute;c loại&nbsp;cỏ phổ biến trong ruộng l&uacute;a như: cỏ đu&ocirc;i phụng, cỏ lồng vực, cỏ ch&aacute;o, cỏ ch&aacute;c, cỏ u du,&nbsp;rau m&aacute;c, rau bợ. Thuốc c&oacute; c&ocirc;ng hiệu ở giai đoạn c&aacute;c loại cỏ đ&atilde; mọc được từ 1 - 7 l&aacute;. Tức&nbsp;khoảng 7 - 20 ng&agrave;y sau khi sạ, cấy.</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:598px">
	<tbody>
		<tr>
			<td rowspan="2">
			<p><strong>Hướng dẫn sử dụng</strong></p>
			</td>
			<td>
			<p><strong>Liều lượng</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Pha lần lượt 10 ml thuốc Nominee, 10 ml chất phụ trợ. 10 ml thuốc Whip trong chai sạch hoặc trong x&ocirc; nước trước khi đổ v&agrave;o b&igrave;nh 16 l&iacute;t. C&oacute; thể dung nắp chai để lường thuốc ( 1 nắp 5ml). Lắc kỹ b&igrave;nh cho một c&ocirc;ng ( 1000 m2).</p>

			<p>Thời gian sử dụng: Phun thuốc từ 10-15 ng&agrave;y sau sạ. Phun tốt nhất l&agrave; 10-12 ng&agrave;y sau sạ.</p>
			</td>
		</tr>
	</tbody>
</table>
', N'NOMINEE-10SC---Thuốc-Trừ-Cỏ-Lúa-Hậu-Nảy-Mầm---Bispyribac-sodium', CAST(1.99 AS Decimal(18, 2)), 5, 5, N'99bf2642-3fb0-43b4-8300-28a0c9a3fbc4_nomine-.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (7, N'Tasieu 5.0WG - Đặc trị bọ trĩ , Sâu Tơ, Sâu Xanh, Rầy Xanh, Nhện Đỏ - 5gr', N'<p>Hoạt chất: Emamectin benzoate 5% (5ogr/kg)</p>

<p>Chuy&ecirc;n trị:</p>

<p>- S&acirc;u tơ, s&acirc;u xanh, s&acirc;u khoang, rệp muội, s&acirc;u xanh da l&aacute;ng.. hại bắp cải, c&agrave; chua, lạc, h&agrave;nh...</p>

<p>- Bọ &nbsp;trĩ hại dưới hấu, dưa chuột, nho</p>

<p>- S&acirc;u xanh, s&acirc;u đo, nhện đỏ, s&acirc;u rớm hại hoa hồng</p>

<p>- Bọ c&aacute;nh tơ, rầy xanh, nhện đỏ, s&acirc;u vẽ b&ugrave;a hại chanh, bưởi, quất..</p>

<p>Trọng lượng tịnh: 5gr</p>
', N'Tasieu-5.0WG---Đặc-trị-bọ-trĩ-,-Sâu-Tơ,-Sâu-Xanh,-Rầy-Xanh,-Nhện-Đỏ---5gr', CAST(0.60 AS Decimal(18, 2)), 5, 4, N'c4de8769-3238-42ff-b4ca-08a6b180e372_tasieu.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (9, N'Phân Đạm Ure Phú Mỹ (0,5kg và 1kg) - Chuyên Rau Màu Hoa Cây Cảnh', N'<h2>* Quy c&aacute;ch; Bao 50kg</h2>

<h2>* B&aacute;n lẽ 1KG</h2>

<h2>TH&Agrave;NH PH&Acirc;N CH&Iacute;NH:</h2>

<h2>- Nito (ts): 46.3%</h2>

<h2>- Biure: 1.0%</h2>

<h2>- Độ ẩm: &lt; 0.4%</h2>

<h2>=&gt;ĐẶC TRƯNG :</h2>

<h2>- Ph&acirc;n tan rất nhanh</h2>

<h2>- C&acirc;y nhanh hấp thụ so với ph&acirc;n b&oacute;n kh&aacute;c.</h2>

<h2>- Độ thất tho&aacute;t rất thấp.</h2>

<h2>- Ph&acirc;n d&ugrave;ng để b&oacute;n rau l&agrave; ch&iacute;nh.</h2>

<h2>* C&Ocirc;NG DỤNG:</h2>

<h2>- Cung cấp h&agrave;m lượng đạm cho c&acirc;y trồng.</h2>

<h2>- Gi&uacute;p c&acirc;y trồng sinh trưởng v&agrave; ph&aacute;t triển.</h2>

<h2>- K&iacute;ch th&iacute;ch sự ph&aacute;t triển của chồi, l&aacute;. Gi&uacute;p l&aacute; xanh mượt hơn.</h2>

<h2>*SỬ DỤNG CHO C&Acirc;Y CON, C&Acirc;Y SAU KHI THU HOẠCH HAY C&Acirc;Y SAU KHI TỈA C&Agrave;NH.</h2>

<h2>*C&Aacute;CH B&Oacute;N PH&Acirc;N URE CUNG CẤP ĐẠM CHO C&Acirc;Y TRỒNG.</h2>

<h2>*Ph&acirc;n ure c&oacute; h&agrave;m lượng đạm cao v&agrave; được d&ugrave;ng cho tất cả c&aacute;c loại c&acirc;y trồng. Đặc biệt l&agrave; d&ugrave;ng cho c&aacute;c loại c&acirc;y con (giai đoạn đầu), c&acirc;y trồng sau giai đoạn thu hoạch cần phục hồi sức v&agrave; c&acirc;y sau giai đoạn tạo t&aacute;n v&agrave; tỉa c&agrave;nh cần phục hồi l&aacute;, chồi non.</h2>

<h2>*Tiến h&agrave;nh h&ograve;a từ 10- 15 gram ph&acirc;n ure v&agrave;o 3 l&iacute;t nước sạch. Tiến h&agrave;nh tưới v&agrave;o gốc c&acirc;y, nếu c&acirc;y c&ograve;n non v&agrave; nhỏ th&igrave; n&ecirc;n giảm tỉ lệ ph&acirc;n b&oacute;n xuống, tr&aacute;nh g&acirc;y s&oacute;t c&acirc;y. Sau đ&oacute;, tiến h&agrave;nh tưới sơ qua bằng nước sạch để ph&acirc;n thấm xuống đất trồng.</h2>

<h2>*C&Acirc;Y TRỒNG KH&Aacute;C:</h2>

<h2>C&acirc;y ăn tr&aacute;i: b&oacute;n 300- 400Gam /c&acirc;y/lần (t&ugrave;y độ tuổi c&acirc;y).</h2>

<h2>C&agrave; ph&ecirc;: b&oacute;n 200- 300Gam - /c&acirc;y/lần.</h2>

<h2>Hồ ti&ecirc;u: b&oacute;n 100 - 200 gram/trụ/lần.</h2>

<h2>Rau m&agrave;u: b&oacute;n 1.5 -2 kg/100 m2/lần, định kỳ 15 - 20 ng&agrave;y/lần.</h2>

<h2>Hoa &amp; c&acirc;y kiểng: b&oacute;n 30 - 40 gram/chậu/lần, nếu trồng ngo&agrave;i đất b&oacute;n 150 - 200 gram/1 m2/lần, b&oacute;n định kỳ 20 - 30 ng&agrave;y/lần.</h2>

<h2>C&acirc;y trồng kh&aacute;c: b&oacute;n 1 - 1.5 kg/ha/lần, ở thời kỳ c&acirc;y con, trước ra hoa v&agrave; nu&ocirc;i tr&aacute;i</h2>
', N'Phân-Đạm-Ure-Phú-Mỹ-(0,5kg-và-1kg)---Chuyên-Rau-Màu-Hoa-Cây-Cảnh', CAST(0.55 AS Decimal(18, 2)), 4, 5, N'554d9055-a534-4e60-a373-5d1b1485e3da_damphumy.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (10, N'Phân bón gốc Con Cò 3 màu NPK 20-20-15 + TE cao cấp Nhập Khẩu Pháp | 1kg', N'<h2>M&ocirc; tả sản phẩm Ph&acirc;n b&oacute;n gốc Con C&ograve; 3 m&agrave;u NPK 20-20-15 + TE cao cấp Nhập Khẩu Ph&aacute;p | 1kg</h2>

<ul>
	<li>Cam kết H&agrave;ng ch&iacute;nh h&atilde;ng từ c&ocirc;ng ty, H&agrave;ng nguy&ecirc;n tem, nguy&ecirc;n kiện từ nh&agrave; sản xuất</li>
	<li>Bảo h&agrave;nh 1 đổi 1 nếu lỗi của nh&agrave; sản xuất hoặc của shop</li>
	<li>Gửi h&agrave;ng si&ecirc;u tốc ngay sau khi nhận được đơn</li>
	<li>Tư vấn kỹ thuật ho&agrave;n to&agrave;n miễn ph&iacute;</li>
</ul>

<p>&nbsp;</p>

<h2>ph&acirc;n b&oacute;n Con c&ograve; 3 m&agrave;u NPK dạng hạt 3 m&agrave;u cao cấp hiện nay 20-20-15 Nhập Khẩu Ph&aacute;p | 1kg</h2>

<h2>Nh&agrave; Ph&acirc;n phối : Vật Tư N&ocirc;ng Nghiệp Hiệp Thủy</h2>

<h2>Đa lượng Đạm tổng số (Nts) 20% L&acirc;n hữu hiệu (P2O5hh) 20% Kali hữu hiệu (K2Ohh) 15% Vi lượng Kẽm (Zn) 1,000 ppm B&ocirc; (B) 500 ppm Độ ẩm 2%</h2>

<h2>Hạt ph&acirc;n:</h2>

<h2>Dạng hạt 3 m&agrave;u cao cấp hiện nay</h2>

<h2>Ph&acirc;n b&oacute;n NPK Con C&ograve; 20-20-15+TE AVS l&agrave; ph&acirc;n b&oacute;n cao cấp ho&agrave;n chỉnh được xử l&yacute; lớp &aacute;o theo c&ocirc;ng nghệ AVS của Ph&aacute;p.</h2>

<h2>Con C&ograve; 20-20-15+TE AVS chứa h&agrave;m lượng dinh dưỡng đạm (N), l&acirc;n (P2O5) v&agrave; kali (K2O), đặc biệt với nguy&ecirc;n liệu DAP V&agrave;ng v&agrave; c&aacute;c yếu tố vi lượng cần thiết cho tất cả c&aacute;c loại c&acirc;y trồng.</h2>

<h2>T&ugrave;y từng loại c&acirc;y trong c&aacute;c giai đoạn sinh trưởng v&agrave; ph&aacute;t triển của c&acirc;y trồng m&agrave; lượng b&oacute;n kh&aacute;c nhau.</h2>

<h2>Nh&agrave; n&ocirc;ng cần xem kỹ hướng dẫn sử dụng ở mặt sau bao b&igrave;, B&oacute;n cho c&aacute;c loại c&acirc;y trồng, tăng năng suất c&acirc;y trồng</h2>

<h2>Gi&uacute;p c&acirc;y ra rễ cực mạnh, cứng c&acirc;y, xanh l&aacute;, chống đổ ng&atilde;</h2>

<h2>Cung cấp dinh dưỡng cần thiết cho c&acirc;y trồng</h2>

<h2>Tăng khả năng chống chịu s&acirc;u bệnh, thời tiết bất ổn</h2>

<h2>C&ocirc;ng nghệ sản xuất độc quyền theo c&ocirc;ng nghệ AVS</h2>

<h2>L&uacute;a: 150-200 kg/ha/lần b&oacute;n th&uacute;c 2 v&agrave; đ&oacute;n đ&ograve;ng.</h2>

<h2>Bắp: 150-200 kg/ha/lần.</h2>

<h2>C&acirc;y c&ocirc;ng nghiệp (c&agrave; p-h&ecirc;, ti&ecirc;u, cao su,...): 200-400 kg/ha/lần.</h2>

<h2>C&acirc;y ăn tr&aacute;i: 0,5-1,5 kg/c&acirc;y/lần.</h2>

<h2>Rau m&agrave;u: 100-150 kg/ha/lần</h2>

<h2>C&acirc;y trồNg kh&aacute;c: 100-200 kg/ha/lần</h2>

<h2>Khối lượng tịnh: 1kg</h2>
', N'Phân-bón-gốc-Con-Cò-3-màu-NPK-20-20-15-+-TE-cao-cấp-Nhập-Khẩu-Pháp-|-1kg', CAST(1.45 AS Decimal(18, 2)), 4, 5, N'7c9c4e5b-1bec-450e-96db-0bdc78621580_conco.png', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (11, N'Kéo cành trên cao hái quả Phước Lộc HM1 2,5m ( có kẹp )', N'<p><strong><a href="https://dungcunongnghiep.vn/keo-cat-canh-tren-cao-d32.html">K&eacute;o c&agrave;nh tr&ecirc;n cao</a>&nbsp;h&aacute;i quả Phước Lộc HM1 2,5m ( c&oacute; kẹp )</strong>&nbsp;l&agrave; mẫu k&eacute;o c&oacute; thể n&oacute;i l&agrave; nổi tiếng bậc nhất tại Việt Nam thường xuất hiện tr&ecirc;n TV k&eacute;o do ch&iacute;nh b&aacute;c Phước Lộc C&aacute;i B&egrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu chế tạo. Sản phẩm d&ugrave;ng rất tốt phục vụ c&ocirc;ng việc cắt tỉa h&aacute;i quả tr&ecirc;n cao ... k&eacute;o dễ d&ugrave;ng bền bỉ đi k&egrave;m l&agrave; vợt hứng quả v&ocirc; c&ugrave;ng tiện lợi.&nbsp;</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>HM1</td>
		</tr>
		<tr>
			<td>Chiều cao</td>
			<td>2,5m</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>1,7kg</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Nh&ocirc;m c&ocirc;ng nghiệp rất cứng chắc, lưỡi th&eacute;p độ cứng rất cao bền d&ugrave;ng được nhiều năm</td>
		</tr>
		<tr>
			<td>C&ocirc;ng năng</td>
			<td>Cắt tỉa c&agrave;nh, h&aacute;i quả, hứng tr&aacute;i</td>
		</tr>
		<tr>
			<td>Sản phẩm bao gồm</td>
			<td>1 k&eacute;o kh&ocirc;ng thu gọn được, 1 vượt hứng quả</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Lưu &yacute;</td>
			<td><em>Sản phẩm rất d&agrave;i v&agrave; nhọn b&agrave; con nh&agrave; vườn ở tỉnh th&agrave;nh xa muốn mua cần đặt cọc trước c&ocirc;ng ty sẽ gửi bưu điện đến địa phương y&ecirc;u cầu</em></td>
		</tr>
	</tbody>
</table>
', N'Kéo-cành-trên-cao-hái-quả-Phước-Lộc-HM1-2,5m-(-có-kẹp-)', CAST(20.12 AS Decimal(18, 2)), 6, 3, N'f0c595a3-c8e9-44b3-856c-6816815cf4df_keo-cat-canh-tren-cao-hai-qua-4m-hm152-kep-thep.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (12, N'Kéo cắt cành nhánh hái trái cán vàng xanh HM117', N'<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>&nbsp;HM117</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>&nbsp;V&agrave;ng xanh</td>
		</tr>
		<tr>
			<td>Chất liệu lưỡi</td>
			<td>&nbsp;Th&eacute;p cao cấp</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>&nbsp;22 cm</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>&nbsp;160g</td>
		</tr>
	</tbody>
</table>
', N'Kéo-cắt-cành-nhánh-hái-trái-cán-vàng-xanh-HM117', CAST(2.99 AS Decimal(18, 2)), 6, 3, N'fa3ad8ee-1766-4970-80ea-b96109eb78b8_3254781831_662088451.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (13, N'Xẻng làm vườn Inox 60cm', N'<p><strong>Xẻng l&agrave;m vườn Inox 60cm</strong>&nbsp;to&agrave;n th&acirc;n được l&agrave;m từ chất liệu Inox chống gỉ s&eacute;t cứng c&aacute;p bền bỉ. Xẻng c&oacute; chiều d&agrave;i 60cm rất th&iacute;ch hợp c&ocirc;ng việc đ&agrave;o bứng c&acirc;y đ&agrave;o hố trồng c&acirc;y ... với bề mặt trơn nhẵn việc vệ sinh vế b&ugrave;n đất hay nhựa c&acirc;y v&ocirc; c&ugrave;ng dễ d&agrave;ng.</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>&nbsp;HM256</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>&nbsp;Bạc</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>&nbsp;Inox, th&eacute;p kh&ocirc;ng gỉ</td>
		</tr>
		<tr>
			<td>C&ocirc;ng năng</td>
			<td>&nbsp;Xẻng x&uacute;c đất, xẻng l&agrave;m trồng rau, xẻng trộn gi&aacute; thể</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>&nbsp;Chiều d&agrave;i 60cm</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>&nbsp;580g</td>
		</tr>
	</tbody>
</table>
', N'Xẻng-làm-vườn-Inox-60cm', CAST(10.99 AS Decimal(18, 2)), 6, 3, N'637289ea-9c5c-4880-aa14-c6619aeaba94_7.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (14, N'Bộ 3 Máy đo hàm lượng N P K trong đất có hộp đựng', N'<p>Nitơ, phốt pho v&agrave; Kali ( N, P, K ) l&agrave; 3 chỉ ti&ecirc;u dinh dưỡng được đề cập đến đầu ti&ecirc;n trong trồng trọt. Bằng phương ph&aacute;p cảm biến của đầu d&ograve;, Những m&aacute;y đo ( N, P, K ) trong đất l&agrave; một dụng cụ cầm tay nhỏ gọn, cho ph&eacute;p người sử dụng biết được h&agrave;m lượng ( N, P, K ) c&oacute; trong đất một c&aacute;ch ch&iacute;nh x&aacute;c, ổn định v&agrave; nhanh ch&oacute;ng chỉ th&ocirc;ng qua một thao t&aacute;c đơn giản. Kh&ocirc;ng cần lấy mẫu đất ph&acirc;n t&iacute;ch, kh&ocirc;ng cần h&oacute;a chất v&agrave; kh&ocirc;ng cần mất nhiều thời gian. Kết quả được hiển thị bằng gi&aacute; trị cụ thể tr&ecirc;n m&agrave;n h&igrave;nh của m&aacute;y với đơn vị t&iacute;nh l&agrave; mg/L.. M&aacute;y đo h&agrave;m lượng ( N, P, K ) c&oacute; thang đo rộng n&ecirc;n đ&aacute;p ứng cho tất cả c&aacute;c loại đất kh&aacute;c nhau. Đ&acirc;y l&agrave; thiết bị kh&ocirc;ng thể thiếu đối với tất cả nh&agrave; n&ocirc;ng, kỹ sư v&agrave; chuy&ecirc;n gia về n&ocirc;ng nghiệp.</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table>
	<tbody>
		<tr>
			<td>Bộ sản phẩm gồm 3 m&aacute;y</td>
			<td><strong>M&aacute;y đo h&agrave;m lượng N&nbsp; +&nbsp;M&aacute;y đo h&agrave;m lượng P&nbsp; + M&aacute;y đo h&agrave;m lượng K + Hộp đựng</strong></td>
		</tr>
		<tr>
			<td>Thang đo N</td>
			<td>0 - 1999 mg/Kg (mg/l)</td>
		</tr>
		<tr>
			<td>Thang đo P</td>
			<td>0 - 1999 mg/Kg (mg/l)</td>
		</tr>
		<tr>
			<td>Thang đo K</td>
			<td>0 - 1999 mg/Kg (mg/l)</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải</td>
			<td>1 mg/Kg (mg/l)</td>
		</tr>
		<tr>
			<td>Độ ch&iacute;nh x&aacute;c</td>
			<td>&plusmn;2% gi&aacute; trị đo</td>
		</tr>
		<tr>
			<td>Nhiệt độ hoạt động</td>
			<td>&nbsp;5 - 45 độ C</td>
		</tr>
		<tr>
			<td>Đặc điểm</td>
			<td>C&oacute; khả năng b&ugrave; nhiệt tự động<br />
			Tự động tắt nguồn để tiết kiệm pin sau 8 ph&uacute;t kh&ocirc;ng hoạt động.</td>
		</tr>
		<tr>
			<td>Hiển thị</td>
			<td>M&agrave;n h&igrave;nh hiển thị LCD với chế độ backlight cho ph&eacute;p đo v&agrave;o ban đ&ecirc;m</td>
		</tr>
		<tr>
			<td>Nguồn điện</td>
			<td>Pin 9V</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước bộ sản phẩm</td>
			<td>50.5 x 140mm</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>100g</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Bảo h&agrave;nh</td>
			<td>6 th&aacute;ng</td>
		</tr>
		<tr>
			<td>Lưu &yacute;</td>
			<td>Do sản phẩm c&oacute; gi&aacute; trị cao qu&yacute; kh&aacute;ch ở xa cần đặt cọc trước 30% gi&aacute; trị đơn h&agrave;ng.</td>
		</tr>
	</tbody>
</table>
', N'Bộ-3-Máy-đo-hàm-lượng-N-P-K-trong-đất-có-hộp-đựng', CAST(699.00 AS Decimal(18, 2)), 6, 3, N'24a9e4c4-5a89-4044-8789-e248da8e0db4_pkn.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (15, N'Đồng hồ đo nhiệt độ và độ ẩm 3 chức năng KT - 908', N'<p><strong>Đồng hồ đo nhiệt độ v&agrave; độ ẩm 3 chức năng KT - 908</strong>&nbsp;l&agrave; đồng hộ tiện lợi để bạn c&oacute; thể kiểm tra nhiệt độ v&agrave; độ ẩm trong nh&agrave; bạn vừa l&agrave; đồng hồ th&ocirc;ng thường. Với đồng hồ n&agrave;y bạn sẽ biết m&ocirc;i trường của m&igrave;nh đang ở c&oacute; th&ocirc;ng số ch&iacute;nh x&aacute;c l&agrave; bao nhi&ecirc;u v&agrave; từ đ&oacute; c&oacute; biện ph&aacute;p điều chỉnh để cho c&acirc;n bằng.</p>

<p><strong>Đồng hồ đo nhiệt độ v&agrave; độ ẩm 3 chức năng KT - 908</strong>&nbsp;l&agrave; vật dụng cần thiết cho nh&agrave; c&oacute; m&aacute;y điều h&ograve;a, ph&ograve;ng karaoke, văn ph&ograve;ng l&agrave;m việc, vườn nh&agrave; k&iacute;nh, kho h&agrave;ng, bệnh viện, trường học.</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table>
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>HM430</td>
		</tr>
		<tr>
			<td>Phạm vi nhiệt độ trong nh&agrave;</td>
			<td>-10&deg;C ~ + 50&deg;C (+ 14&deg;F ~ + 122&deg;F)</td>
		</tr>
		<tr>
			<td>Phạm vi nhiệt độ ngo&agrave;i trời</td>
			<td>-50 &deg; C đến 70.0 &deg; C</td>
		</tr>
		<tr>
			<td>Độ ch&iacute;nh x&aacute;c nhiệt độ</td>
			<td>&plusmn; 1 &deg; C</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải nhiệt độ</td>
			<td>0,1 &deg; C</td>
		</tr>
		<tr>
			<td>Phạm vi đo Độ ẩm</td>
			<td>20 ~ 99%</td>
		</tr>
		<tr>
			<td>Độ ch&iacute;nh x&aacute;c đo độ ẩm</td>
			<td>&plusmn; 5% (rh) (rh)</td>
		</tr>
		<tr>
			<td>Pin</td>
			<td>1,5V&nbsp;AAA</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Nhựa</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>110 &times; 59 &times; 13 ( mm )</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>110g</td>
		</tr>
		<tr>
			<td>Sản phẩm bao gồm</td>
			<td>1 đồng hồ đo, 1 cảm biến đo d&agrave;i&nbsp;1,8m</td>
		</tr>
		<tr>
			<td>C&ocirc;ng năng</td>
			<td>
			<p>Hiển thị nhiệt độ trong nh&agrave; / nhiệt độ ngo&agrave;i trời / độ ẩm</p>

			<p>Chức năng bộ nhớ độ ẩm nhiệt độ cao nhất / thấp nhất</p>

			<p>Hiển thị giờ</p>

			<p>Đồng hồ b&aacute;o thức h&agrave;ng ng&agrave;y</p>

			<p>Hiển thị lịch</p>

			<p>Hiển thị tuần</p>
			</td>
		</tr>
	</tbody>
</table>
', N'Đồng-hồ-đo-nhiệt-độ-và-độ-ẩm-3-chức-năng-KT---908', CAST(5.99 AS Decimal(18, 2)), 6, 3, N'c6184916-c95f-4c10-a3e4-9d7d9eab9fcd_dong-ho-do-nhiet-do-va-do-am-3-chuc-nang-kt-908.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (16, N'Bộ tưới lan bơm đôi T110', N'<ul>
	<li>1 bơm đ&ocirc;i sinleader</li>
	<li>1 nguồn tổ ong</li>
	<li>10 m d&acirc;y</li>
	<li>1 điều &aacute;p</li>
	<li>1 bộ cần phun thuốc</li>
	<li>1 d&acirc;y h&uacute;t 2m</li>
	<li>1 đầu ra phun thuốc</li>
</ul>
', N'Bộ-tưới-lan-bơm-đôi-T110', CAST(299.99 AS Decimal(18, 2)), 6, 3, N'e2e4c983-2773-4e7d-9b49-edff8d705c41_bo-tuoi-lan-bom-doi-t110.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (17, N'Rau thơm sả (é trắng) Rado 189', N'<p><strong>Rau quế Sả</strong>&nbsp;hay c&acirc;y &eacute; trắng c&acirc;y cao khoảng 50cm, th&acirc;n, l&aacute; c&oacute; m&agrave;u xanh lục nhạt, c&oacute; l&ocirc;ng, m&eacute;p l&aacute; c&oacute; răng cưa, c&oacute; m&ugrave;i thơm giữa m&ugrave;i chanh v&agrave; sả.</p>

<p><strong>Rau quế sả</strong>&nbsp;được sử dụng như một loại rau trong ẩm thực ăn sống hoặc nấu canh rất ngon, một th&agrave;nh phần của c&aacute;c b&agrave;i thuốc d&acirc;n gian hay chiết xuất tinh dầu. Th&acirc;n v&agrave; l&aacute; rau thơm sả c&oacute; vị cay, m&ugrave;i thơm, t&iacute;nh ấm, c&oacute; t&aacute;c dụng ph&aacute;t h&atilde;n, giải biểu, khu phong, lợi thấp, t&aacute;n ứ, chỉ thống do đ&oacute; thường được d&ugrave;ng để chữa đau bụng, trướng bụng, ăn kh&ocirc;ng ti&ecirc;u, n&ocirc;n mửa, cảm, c&uacute;m, sốt, đau đầu, vi&ecirc;m lợi, chảy m&aacute;u ch&acirc;n răng, tưa lưỡi, vi&ecirc;m b&agrave;ng quang, đ&aacute;i rắt, đ&aacute;i buốt.&nbsp;</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; hạt giống</td>
			<td>&nbsp;HG-RD-189</td>
		</tr>
		<tr>
			<td>Khối lượng / số hạt</td>
			<td>&nbsp;2g</td>
		</tr>
		<tr>
			<td>Thời vụ trồng</td>
			<td>&nbsp;Quanh năm</td>
		</tr>
		<tr>
			<td>Thời gian thu hoạch</td>
			<td>&nbsp;30 - 35 ng&agrave;y sau khi gieo</td>
		</tr>
		<tr>
			<td>Đặt điểm</td>
			<td>&nbsp;Th&acirc;n l&aacute; xanh, c&oacute; m&ugrave;i thơm tinh dầu sả</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>&nbsp;Việt Nam</td>
		</tr>
		<tr>
			<td>Chủng loại hạt</td>
			<td>&nbsp;<a href="https://dungcunongnghiep.vn/hat-giong-rau-sach-d43.html">Hạt giống rau</a></td>
		</tr>
	</tbody>
</table>
', N'Rau-thơm-sả-(é-trắng)-Rado-189', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'd6aaa53c-ea20-4884-b396-0ea747620315_rau-thom-sa-e-trang-rado-189.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (18, N'Đậu bắp đỏ RD 309', N'<p><strong>Hạt giống đậu bấp đỏ hiện c&oacute; b&aacute;n tại cửa h&agrave;ng Dungcunongnghiep.vn. Đậu bắp đỏ</strong>&nbsp;l&agrave; giống c&acirc;y mới du nhập v&agrave;o Việt Nam quả c&oacute; m&agrave;u sắc đỏ bắt mắt v&agrave; chất lượng ngon hơn đậu bấp xanh quen thuộc. Đậu bấp đỏ cung cấp một nguồn vitamin C, vitamin A, folacin v&agrave; c&aacute;c vitamin B kh&aacute;c cộng với magi&ecirc;, kali v&agrave; canxi, chất b&eacute;o b&atilde;o h&ograve;a kh&ocirc;ng cholesterol v&agrave; &iacute;t calo. V&agrave; c&oacute; nhiều chất xơ, đặt biệt đậu bắp r&acirc;t tốt cho phụ nữ mang thai v&agrave; người lớn tuổi. Đậu bắp đỏ c&oacute; thể được nướng trong l&ograve; viba, luộc, hấp, chi&ecirc;n, kho hoặc x&agrave;o. Trộn salad với nhiều loại rau, c&agrave; chua, ng&ocirc; v&agrave; ớt&hellip;</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; hạt giống</td>
			<td>
			<p><strong>&nbsp;SP000479</strong></p>
			</td>
		</tr>
		<tr>
			<td>Khối lượng / số hạt</td>
			<td>&nbsp;10 hạt</td>
		</tr>
		<tr>
			<td>Tỷ lệ nảy mầm</td>
			<td>&nbsp;&gt; 90%</td>
		</tr>
		<tr>
			<td>Thời vụ trồng</td>
			<td>&nbsp;Quanh năm,&nbsp;Lượng hạt giống: 500 gram/s&agrave;o,&nbsp;15 - 16 gram,&nbsp;C&acirc;y ưa nắng, trồng được ở mọi v&ugrave;ng kh&iacute; hậu.</td>
		</tr>
		<tr>
			<td>Sinh trưởng</td>
			<td>&nbsp;C&acirc;y kh&aacute;ng bệnh tốt, c&oacute; khả năng cho tr&aacute;i đẹp cả tr&ecirc;n nh&aacute;nh, độ đồng đều cao.&nbsp;</td>
		</tr>
		<tr>
			<td>Thời gian thu hoạch</td>
			<td>&nbsp;60 ng&agrave;y,&nbsp;Tr&aacute;i d&agrave;i 15 - 17 cm, đường k&iacute;nh 1,7 - 1,8 cm, m&agrave;u đỏ kh&aacute; đậm, ăn ngon, ngọt, &iacute;t xơ v&agrave; kh&ocirc;ng nhớt.</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>&nbsp;Việt Nam&nbsp;</td>
		</tr>
		<tr>
			<td>Chủng loại hạt</td>
			<td>&nbsp;<a href="https://dungcunongnghiep.vn/hat-giong-cay-an-qua-d17.html">Hạt giống quả</a></td>
		</tr>
	</tbody>
</table>
', N'Đậu-bắp-đỏ-RD-309', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'1128ddca-33db-47ea-b6ef-ea63d1a95fbe_dau-bap-do-rd-309.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (19, N'Cà chua Cherry đỏ lai F1 RD 640', N'<p><strong>C&agrave; chua bi đỏ</strong>&nbsp;c&oacute; vị chua nhưng ngọt, gi&ograve;n hơn c&agrave; chua th&ocirc;ng thường, c&acirc;y dễ trồng, trồng được nhiều vụ trong năm, rất sai quả. C&agrave; Chua bi đỏ l&agrave; sự lựa chọn l&yacute; tưởng cho những ai muốn cải thiện bữa ăn thật an to&agrave;n sức khỏe cho gia đ&igrave;nh. Vừa l&agrave; c&aacute;ch tốt để ti&ecirc;u khiển sau những giờ l&agrave;m việc căng thẳng khi tận tay chăm s&oacute;c ngấm nh&igrave;n những quả c&agrave; chua xinh đẹp từng ng&agrave;y ph&aacute;t triển ch&iacute;n mọng.&nbsp;</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; hạt giống</td>
			<td><strong>&nbsp;SP000472</strong></td>
		</tr>
		<tr>
			<td>Khối lượng / số hạt</td>
			<td>&nbsp;1g</td>
		</tr>
		<tr>
			<td>Tỷ lệ nảy mầm</td>
			<td>&nbsp;&gt;90%</td>
		</tr>
		<tr>
			<td>Thời vụ trồng</td>
			<td>&nbsp;Quanh năm&nbsp;</td>
		</tr>
		<tr>
			<td>Thời gian thu hoạch</td>
			<td>&nbsp;60 - 65 ng&agrave;y</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>&nbsp;Đức</td>
		</tr>
		<tr>
			<td>Chủng loại hạt</td>
			<td>&nbsp;<a href="https://dungcunongnghiep.vn/hat-giong-cay-an-qua-d17.html">Hạt giống quả</a></td>
		</tr>
	</tbody>
</table>
', N'Cà-chua-Cherry-đỏ-lai-F1-RD-640', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'f1c7faaf-1616-4f08-8d90-9481363dbd4a_ca-chua-cherry-do-lai-f1-rd-640.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (20, N'Xà lách 357', N'<p><strong>X&agrave; l&aacute;ch</strong>&nbsp;từ l&acirc;u đ&atilde; l&agrave; m&oacute;n ăn c&oacute; mặt trong bữa ăn của nhiều gia đ&igrave;nh bởi n&oacute; kh&ocirc;ng chỉ l&agrave; một m&oacute;n ăn b&igrave;nh d&acirc;n gi&aacute; rẻ m&agrave; c&ograve;n c&oacute; nhiều lợi &iacute;ch sức khỏe. Theo nhiều chuy&ecirc;n gia dinh dưỡng&nbsp;<strong>x&agrave; l&aacute;ch</strong>&nbsp;c&oacute; chứa rất nhiều&nbsp;<em>muối kho&aacute;ng, chất xơ, c&aacute;c nguy&ecirc;n tố kiềm</em>&hellip; nhờ đ&oacute; gi&uacute;p cơ thể tr&aacute;nh được nhiều bệnh tật.</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; hạt giống</td>
			<td>&nbsp;HG-RD-015</td>
		</tr>
		<tr>
			<td>Khối lượng / số hạt</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Tỷ lệ nảy mầm</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Thời vụ trồng</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Thời gian thu hoạch</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Chủng loại hạt</td>
			<td>&nbsp;<a href="https://dungcunongnghiep.vn/hat-giong-rau-sach-d43.html">Hạt giống rau</a></td>
		</tr>
	</tbody>
</table>

<h2>NHỮNG LỢI &Iacute;CH SỨC KHỎE M&Agrave; RAU X&Agrave; L&Aacute;CH MANG LẠI</h2>

<p><em><strong>Giải nhiệt, giảm đau đầu</strong></em>: Do chứa h&agrave;m lượng magi&ecirc; cao n&ecirc;n dịch &eacute;p nước x&agrave; l&aacute;ch c&oacute; một &quot;năng lực si&ecirc;u ph&agrave;m&quot; trong việc hồi phục c&aacute;c m&ocirc; cơ, tăng cường chức năng n&atilde;o. B&ecirc;n cạnh đ&oacute;, y học d&acirc;n gian phương T&acirc;y c&ograve;n d&ugrave;ng dịch &eacute;p x&agrave; l&aacute;ch pha với tinh dầu hoa hồng thoa v&agrave;o tr&aacute;n v&agrave; th&aacute;i dương để giảm những cơn đau đầu.</p>

<p><strong><em>Tốt cho bệnh nh&acirc;n tiểu đường:</em></strong>&nbsp;Đối với bệnh nh&acirc;n tiểu đường, x&agrave; l&aacute;ch l&agrave; một loại thực phẩm l&yacute; tưởng v&igrave; thuộc nh&oacute;m rau sống c&oacute; th&agrave;nh phần carbohydrate thấp hơn 3%.&nbsp;<strong>X&agrave; l&aacute;ch</strong>&nbsp;c&ograve;n chứa một h&agrave;m lượng đ&aacute;ng kể chất sắt, v&igrave; vậy, đ&acirc;y loại thực phẩm rất tốt cho người bị thiếu m&aacute;u do thiếu sắt. Chất sắt từ x&agrave; l&aacute;ch sẽ được cơ thể hấp thu tốt hơn nhiều so với những chế phẩm bổ sung sắt.</p>
', N'Xà-lách-357', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'f8b87a14-3c0d-437e-a985-f1429f5adc94_xa-lach-357.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (21, N'Dưa leo lai F1 9339', N'<p><strong>Dưa leo lai F1 9339</strong>&nbsp;c&acirc;y sinh trưỡng khỏe dễ dậu quả trồng quanh năm, thu hoạch sau 32-35 ng&agrave;y, quả d&agrave;i 14-15cm, ăn gi&ograve;n ngon, tươi m&aacute;t. C&oacute; thể d&ugrave;ng ăn sống, l&agrave;m sinh tố, chộn salad.</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1">
	<tbody>
		<tr>
			<td>M&atilde; hạt giống</td>
			<td>&nbsp;<strong>HG-RD-048</strong></td>
		</tr>
		<tr>
			<td>Khối lượng / số hạt</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Tỷ lệ nảy mầm</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Thời vụ trồng</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Thời gian thu hoạch</td>
			<td>&nbsp;32 - 35 ng&agrave;y</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2>SƠ LƯỢC C&Aacute;CH TRỒNG DƯA LEO TẠI NH&Agrave;</h2>

<h3>Chuẩn bị đất</h3>

<p>Trồng trong chậu: Trộn 50 dm khối đất v&agrave; ph&acirc;n b&ograve; theo tỷ lệ 7/3. Tiếp theo bổ sung 20 gr ph&acirc;n l&acirc;n, 20gr NPK, 50 gr v&ocirc;i, 20 gr hữu cơ vi sinh v&agrave;o mỗi chậu</p>

<h3>Chuẩn bị c&acirc;y con</h3>

<p>Hạt giống gieo trực tiếp kh&ocirc;ng cần ng&acirc;m ủ. Hạt gieo dưới lớp đất 0,5 - 1cm, gieo xong phủ hạt bằng lớp đất xung quanh. Nếu trồng trong chậu, c&oacute; thể gieo trực tiếp v&agrave;o chậu. Cần chuẩn bị chậu k&iacute;ch thước tối thiểu c&oacute; đường k&iacute;nh 30 cm. Mỗi chậu gieo 5 - 7 hạt. Sau gieo 7 - 10 ng&agrave;y, c&acirc;y con c&oacute; khoảng 4 l&aacute;, c&oacute; thể cấy (n&ecirc;n cấy v&agrave;o l&uacute;c chiều m&aacute;t) hay tỉa bỏ những c&acirc;y thừa. Mỗi chậu n&ecirc;n trồng từ 1 - 3 c&acirc;y.</p>

<p><img alt="dualeookinawa4" src="https://dungcunongnghiep.vn/files/assets/dualeookinawa4.jpg" /></p>

<h3>Chăm s&oacute;c</h3>

<p>C&acirc;y dưa leo c&oacute; thể để mọc b&ograve; lan tr&ecirc;n mặt đất hay mọc leo quanh th&acirc;n cọc thẳng đứng. Ưu điểm của việc mọc leo quanh th&acirc;n cọc sẽ gi&uacute;p cho quả dưa leo ph&aacute;t triển vươn cao khỏi mặt đất (theo th&acirc;n cọc), điều đ&oacute; sẽ giảm khả năng dưa chuột bị hư hại hoặc thối/n&aacute;t.</p>

<p>Nếu để dưa leo b&ograve; lan tr&ecirc;n mặt đất, n&ecirc;n lưu &yacute; việc bỏ rơm kh&ocirc; hoặc b&igrave;a c&aacute;c-t&ocirc;ng b&ecirc;n dưới để giữ cho quả dưa được sạch sẽ. Trong một số điều kiện, c&oacute; thể hứng chịu thời tiết lạnh, ẩm ướt.</p>

<h3>Tưới nước</h3>

<p>Khi c&acirc;y dưa leo trong thời kỳ trổ hoa, cần lưu &yacute; kh&ocirc;ng để cho c&acirc;y bị kh&ocirc; hạn hay thiếu nước tưới. Trong giai đoạn n&agrave;y c&acirc;y đ&atilde; kh&aacute; cứng c&aacute;p (kh&ocirc;ng bị chết khi tưới nước qu&aacute; nhiều). N&ecirc;n sử dụng loại chậu/b&igrave;nh hay khu vực đất trồng c&oacute; hệ thống tho&aacute;t nước hợp l&yacute;, khoa học.</p>

<p><img alt="dualeookinawa1" src="https://dungcunongnghiep.vn/files/assets/dualeookinawa1.jpg" /></p>

<h3>Thu hoạch</h3>

<p>C&agrave;ng thu hoạch nhiều dưa leo th&igrave; c&acirc;y c&agrave;ng ph&aacute;t triển nhanh hơn. Thời điểm ph&ugrave; hợp nhất để thu hoạch dưa leo l&agrave; khi quả dưa c&oacute; k&iacute;ch thước vừa phải (đầu quả con c&aacute;nh hoa chưa rụng, vỏ xanh mượt, vẫn c&ograve;n lớp phấn trắng) như thế sẽ tạo điều kiện cho c&acirc;y ph&aacute;t triển hơn nữa</p>

<p>&nbsp;</p>

<h2>MỘT SỐ LỢI &Iacute;CH SỨC KHỎE TỪ DƯA LEO</h2>

<h3>T&aacute;c dụng giữ cho cơ thể đủ nước</h3>

<p>Nước chiếm 96 % trong dưa leo, hơn thế nữa, nước từ quả đưa leo chứa nhiều chất dinh dưỡng hơn nước b&igrave;nh thường hay c&aacute;c nguồn nước tự nhi&ecirc;n kh&aacute;c. Nếu bạn cảm thấy cơ thể thiếu nước hoặc kh&aacute;t nước th&igrave; c&oacute; thể sử dụng một v&agrave;i l&aacute;t dưa leo để l&agrave;m dịu cơn kh&aacute;t v&agrave; bổ sung nước cho cơ thể. Dưa leo c&ograve;n gi&uacute;p cơ thể thải ra ngo&agrave;i c&aacute;c độc tố, việc ăn một v&agrave;i l&aacute;t dưa leo trước khi đi ngủ cũng mang lại cảm gi&aacute;c dễ chịu v&agrave; đưa bạn v&agrave;o giấc ngủ s&acirc;u hơn.</p>

<h3>Chống oxy h&oacute;a</h3>

<p>Dưa leo chứa nhiều vitamin A, B, C tăng cường khả năng miễn dịch v&agrave; thanh lọc cơ thể. Dưa leo c&oacute; thể cung cấp khoảng 10% lượng vitamin C cần thiết cho cơ thể mỗi ng&agrave;y, v&igrave; vậy việc cho th&ecirc;m một &iacute;t dưa leo v&agrave;o m&oacute;n trộn hay m&oacute;n sinh tố hằng ng&agrave;y cũng gi&uacute;p cơ thể bạn trở n&ecirc;n tươi trẻ v&agrave; sảng kho&aacute;i hơn.</p>
', N'Dưa-leo-lai-F1-9339', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'61e6eb83-00fc-4732-9e4b-918174c853bc_dua-leo-lai-f1-9339.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (22, N'Khổ qua lai F1 09', N'<p><strong>Khổ qua Lai F1&nbsp;</strong>tr&aacute;i ngắn b&oacute;ng đẹp c&acirc;y sinh trưởng mạnh &iacute;t s&acirc;u bệnh hại.&nbsp;<strong>Khổ qua lai&nbsp;</strong>c&oacute; thể chế biến th&agrave;nh m&oacute;n x&agrave;o, nấu canh ngon bắt mắt. Ăn khổ qua thường xuy&ecirc;n r&acirc;t tốt cho sức khỏe n&ecirc;n c&aacute;c bạn c&oacute; thể tự trồng khổ qua quanh nh&agrave; để phục vụ gia đ&igrave;nh m&agrave; kh&ocirc;ng mất nhiều c&ocirc;ng sức.</p>

<h2>TH&Ocirc;NG TIN CHI TIẾT HẠT GIỐNG</h2>

<table border="1" style="width:100%">
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>&nbsp;HG-RD-053</td>
		</tr>
		<tr>
			<td>&nbsp;Khối lượng / số hạt</td>
			<td>&nbsp;2gr</td>
		</tr>
		<tr>
			<td>&nbsp;Thời vụ trồng</td>
			<td>&nbsp;Quanh năm</td>
		</tr>
		<tr>
			<td>&nbsp;Thời gian thu hoạch</td>
			<td>&nbsp;38-40 ng&agrave;y sau gieo</td>
		</tr>
		<tr>
			<td>&nbsp;Chủng loại hạt</td>
			<td>&nbsp;<a href="https://dungcunongnghiep.vn/hat-giong-rau-sach-d43.html">Hạt giống rau</a></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2>MỘT SỐ LỢI &Iacute;CH KHỔ QUA MANG LẠI CHO SỨC KHỎE</h2>

<p>1. Điều trị bệnh tiểu đường<br />
2. Điều trị sỏi thận<br />
3. Giảm lượng cholesterol<br />
4. Ph&ograve;ng ngừa ung thư tuyến tụy<br />
5. Tốt cho da<br />
6. Giảm c&acirc;n<br />
7. Bổ gan<br />
8. Chuyển h&oacute;a carbonhydrate<br />
9. Nguồn Vitamin K dồi d&agrave;o<br />
10. Tăng cường miễn dịch</p>

<p><img alt="canhkhoqua" src="https://dungcunongnghiep.vn/files/assets/canhkhoqua.jpg" /></p>

<h2>SƠ LƯỢC C&Aacute;CH TRỒNG KHỔ QUA</h2>

<h3>Bước 1: Chuẩn bị hạt giống</h3>

<p>Để c&oacute; những hạt giống khổ qua chất lượng, bạn c&oacute; thể mua hạt giống khổ qua tại c&aacute;c cửa h&agrave;ng hạt giống Dungcunongnghiep.vn - 0888 542 612</p>

<h3>Bước 2: Gieo hạt giống</h3>

<p>Xử l&yacute; hạt giống bằng c&aacute;ch&nbsp;<strong>ng&acirc;m v&agrave;o nước ấm theo c&ocirc;ng thức 2 s&ocirc;i 3 lạnh</strong>&nbsp;ng&acirc;m trong v&ograve;ng 5-6 giờ sau đ&oacute; vớt ra đem ủ v&agrave;o khăn ẩm. Sau 24 giờ đem rửa sạch hết lớp nhờn ngo&agrave;i vỏ hạt, rồi đem ủ lại đến khi hạt nứt nanh th&igrave; đem gieo.</p>
', N'Khổ-qua-lai-F1-09', CAST(0.45 AS Decimal(18, 2)), 3, 6, N'1a794e6d-5ae0-4253-b8f7-db01a64f75af_kho-qua-lai-f1-09.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (23, N'Bộ phun sương 10 béc đồng T101', N'<p><strong><a href="https://dungcunongnghiep.vn/bo-phun-suong-10-bec-dong-tao-am-lam-mat-khong-khi-co-san-may-bom-ap-luc-id1426.html">Bộ phun sương</a>&nbsp;10 b&eacute;c đồng tạo ẩm l&agrave;m m&aacute;t kh&ocirc;ng kh&iacute;</strong>&nbsp;c&oacute; thể sử dụng cho nh&agrave; ở, cửa h&agrave;ng, qu&aacute;n c&agrave; ph&ecirc;, chuồng trại, nh&agrave; xưởng, vườn lan, vườn ươm. Bộ phun sương 10 b&eacute;c đồng tạo ra &aacute;p lực cao dựa tr&ecirc;n nguy&ecirc;n tắc trao đổi nhiệt v&agrave; bốc hơi nhanh của c&aacute;c hạt &ldquo;bụi&rdquo; sương c&oacute; k&iacute;ch thước rất nhỏ, xấp xỉ v&agrave;i chục micro m&eacute;t, trong qu&aacute; tr&igrave;nh lan tỏa ra m&ocirc;i trường xung quanh. Nhờ đ&oacute;, nhiệt độ của m&ocirc;i trường c&oacute; thể giảm xuống 5 &ndash; 10 độ C. Độ ẩm tương đối c&oacute; thể đạt tới 90 &ndash; 100%</p>

<h2>TRỌN BỘ SẢN PHẨM GỒM</h2>

<ul>
	<li><a href="https://dungcunongnghiep.vn/may-bom-phun-suong-sinleader-id1386.html">01 Bơm Sinleader phun sương</a>&nbsp;</li>
	<li><a href="https://dungcunongnghiep.vn/bo-nguon-adapter-5a-phun-suong-id1393.html">01 Bộ nguồn Adapter 5A phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/volum-dieu-toc-phun-suong-id1392.html">01 Volum điều tốc phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/bec-phun-suong-1-2-3-dong-id1394.html">10 B&eacute;c phun sương 1 2 3 ( đồng )</a></li>
	<li><a href="https://dungcunongnghiep.vn/bang-go-phun-suong-30x20-id1427.html">01 Bảng gỗ phun sương 30x20</a></li>
	<li><a href="https://dungcunongnghiep.vn/dau-giam-12-8-phun-suong-id1405.html">01 Đầu giảm 12-8 phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/dai-vit-cude-phun-suong-id1403.html">01 Đai v&iacute;t (cude) phun sương&nbsp;</a></li>
	<li><a href="https://dungcunongnghiep.vn/ro-loc-luoi-phun-suong-id1401.html">01 Rọ lọc lưới phun sương&nbsp;</a></li>
	<li><a href="https://dungcunongnghiep.vn/ong-den-8mm-phun-suong-met-id1399.html">10 m&eacute;t Ống đen 8mm phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/ong-trong-8mm-phun-suong-met-id1400.html">02 m&eacute;t Ống trong 8mm phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/noi-bec-dong-phun-suong-id1395.html">09 Nối b&eacute;c ( đồng ) phun sương</a></li>
	<li><a href="https://dungcunongnghiep.vn/noi-cuoi-dong-phun-suong-id1396.html">01 Nối cuối (đồng ) phun sương</a></li>
</ul>

<h2>VIDEO BỘ PHUN SƯƠNG</h2>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Mùa hè với kh&ocirc;ng khí kh&ocirc; nóng ảnh hưởng lớn đ&ecirc;́n sức khỏe và đời s&ocirc;́ng chúng ta. Đặc bi&ecirc;̣t, tại các đ&ocirc; thị lớn như TPHCM, H&agrave; Nội lượng khói bụi do nhà máy và xe c&ocirc;̣ thải vào kh&ocirc;ng khí ngày càng nhi&ecirc;̀u.&nbsp;<strong><a href="https://dungcunongnghiep.vn/bo-phun-suong-10-bec-dong-tao-am-lam-mat-khong-khi-co-san-may-bom-ap-luc-id1426.html">Bộ phun sương</a></strong>&nbsp;làm mát ra đời và trở thành sản phẩm &ldquo;Hot&rdquo; nhờ vào ưu đi&ecirc;̉m vượt tr&ocirc;̣i của nó. Bộ phun sương giá rẻ kh&ocirc;ng chỉ làm mát, c&acirc;n bằng đ&ocirc;̣ &acirc;̉m mà còn có tác dụng ngăn bụi b&acirc;̉n và ti&ecirc;́ng &ocirc;̀n. Có th&ecirc;̉ nói,&nbsp;<a href="https://dungcunongnghiep.vn/bo-phun-suong-10-bec-dong-tao-am-lam-mat-khong-khi-co-san-may-bom-ap-luc-id1426.html"><strong>Bộ phun sương</strong></a>&nbsp;chính là &ldquo;Đứa con&rdquo; của quạt máy và máy đi&ecirc;̀u hòa. Bởi lẽ, quạt máy có th&ecirc;̉ làm mát mà v&acirc;̃n duy trì đ&ocirc;̣ &acirc;̉m, tuy nhi&ecirc;n vào những ngày nắng nóng hay kh&ocirc;ng gian lớn thì hi&ecirc;̣u quả của quạt máy sẽ kh&ocirc;ng lớn; Máy đi&ecirc;̀u hòa làm mát chủ y&ecirc;́u trong phòng kín và kh&ocirc;ng đảm bảo đ&ocirc;̣ &acirc;̉m. Trong khi đó, h&ecirc;̣ th&ocirc;́ng phun sương đã khắc phục t&ocirc;́t nhược đi&ecirc;̉m và phát huy ưu đi&ecirc;̉m của 2 thi&ecirc;́t bị làm mát này hi&ecirc;̣u quả.</p>
', N'Bộ-phun-sương-10-béc-đồng-T101', CAST(299.90 AS Decimal(18, 2)), 7, 7, N'ebe925b6-0a1b-4ce2-92af-b6786e5fddf0_bo-phun-suong-10-bec-dong-t101.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (24, N'Cần phun xịt kéo dài 3,25m HM199', N'<p>Những c&acirc;y ăn quả tr&ecirc;n cao với t&aacute;n rộng việc phun xịt thuốc BVTV rất mệt. Dungcunongnghiep.vn hiện c&oacute; cung cấp một giải ph&aacute;p đ&oacute; l&agrave; cần phun xịt thu ngắn k&eacute;o d&agrave;i dạng như chiếc ăng ten chiều d&agrave;i tới 3,25m. Dụng cụ rất hữu dụng để phun xịt c&aacute;c t&aacute;n c&acirc;y cao xa m&agrave; gọn g&agrave;n hơn l&agrave; tự chế cần xịt d&agrave;i cố định cồng kềnh.</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table border="1">
	<tbody>
		<tr>
			<td>Khuyến m&atilde;i</td>
			<td>&nbsp;<strong>Tặng 1 b&eacute;c loa phun thuốc khi mua 3 cần phun</strong></td>
		</tr>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>&nbsp;HM199</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>&nbsp;Inox, nhựa</td>
		</tr>
		<tr>
			<td>C&ocirc;ng năng</td>
			<td>&nbsp;Cần phun thuốc tr&ecirc;n cao, cần xịt thuốc tr&ecirc;n cao, dụng cụ phun thuốc tầm cao</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>&nbsp;58 cm k&eacute;o d&agrave;i ra 3,25m&nbsp;</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>&nbsp;330g</td>
		</tr>
		<tr>
			<td>Đường k&iacute;nh đầu v&ocirc;</td>
			<td>&nbsp;Kết hợp được nhiều đầu nối v&ocirc; kh&aacute;c nhau, c&oacute; c&aacute;c đầu nối đường k&iacute;nh ren ngo&agrave;i 1,7cm, ren trong 1,7cm, ren ngo&agrave;i 1,2cm đi k&egrave;m</td>
		</tr>
		<tr>
			<td>Lưu &yacute;</td>
			<td>&nbsp;Cần phun chưa bao gồm b&eacute;c phun b&agrave; con cần mua th&ecirc;m b&eacute;c phun để sử dụng</td>
		</tr>
	</tbody>
</table>
', N'Cần-phun-xịt-kéo-dài-3,25m-HM199', CAST(5.59 AS Decimal(18, 2)), 7, 7, N'44fa9345-ff83-4fc5-998a-5a0658397c2e_can-phun-xit-keo-dai-325m-hm199.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (25, N'Bộ 10 béc tưới phun mưa hạt nhỏ HM290', N'<p><strong>M&ocirc; h&igrave;nh tưới nước bằng hệ thống tưới tự động</strong>&nbsp;ng&agrave;y c&agrave;ng được sử dụng rộng r&atilde;i cho b&agrave; con tr&ecirc;n khắp cả nước v&igrave; lợi &iacute;ch n&oacute; mang lại ng&agrave;y c&agrave;ng được minh chứng như : tiết kiệm được lượng nước ti&ecirc;u thụ, tiết kiệm điện tối đa, giảm c&ocirc;ng lao động.</p>

<h2>TH&Ocirc;NG TIN KỸ THUẬT</h2>

<table>
	<tbody>
		<tr>
			<td>M&atilde; sản phẩm</td>
			<td>HM290</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>Đen</td>
		</tr>
		<tr>
			<td>Chế độ phun</td>
			<td>Phun x&ograve;e xoay đều 360 độ</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Nhựa kỹ thuật độ bền cao</td>
		</tr>
		<tr>
			<td>Ứng dụng</td>
			<td>Tới n&ocirc;ng nghiệp, b&atilde;i cỏ, hoa vi&ecirc;n, c&ocirc;ng vi&ecirc;n, vườn ươm, vườn rau</td>
		</tr>
		<tr>
			<td>B&aacute;n k&iacute;nh phun</td>
			<td>1.0-2.0 m&eacute;t</td>
		</tr>
		<tr>
			<td>Tốc độ d&ograve;ng chảy</td>
			<td>22-183 L/h</td>
		</tr>
		<tr>
			<td>&Aacute;p lực</td>
			<td>1,5-3kg</td>
		</tr>
		<tr>
			<td>Đầu nối</td>
			<td>Ren ngo&agrave;i 21mm</td>
		</tr>
		<tr>
			<td>Đơn vị b&aacute;n</td>
			<td>10 c&aacute;i</td>
		</tr>
	</tbody>
</table>
', N'Bộ-10-béc-tưới-phun-mưa-hạt-nhỏ-HM290', CAST(2.99 AS Decimal(18, 2)), 7, 7, N'4db4a4fe-1c3e-4311-b1d2-cf8716f48301_bo-10-bec-tuoi-phun-mua-hat-nho-hm290.jpg', 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [CategoryId], [BrandId], [Image], [IsDelete]) VALUES (26, N'Bộ Phun Tưới Lan và Cây cảnh Đa Năng T111 ( miễn ship )  Bộ Phun Tưới Lan và Cây cảnh Đa Năng T111', N'<h2>Bộ Phun Tưới Lan v&agrave; C&acirc;y cảnh Đa Năng T111</h2>

<p>Bộ sản phẩm n&agrave;y qu&yacute; kh&aacute;ch c&oacute; thể d&ugrave;ng cho việc phun tưới, xịt ph&acirc;n thuốc, khử khuẩn chuồng trại, s&acirc;n vườn v&agrave; nhiều mục đ&iacute;ch kh&aacute;c.</p>

<p>Trước khi hướng dẩn sử dụng thực tế, em xin đi v&agrave;o chi tiết giới thiệu cho qu&yacute; kh&aacute;ch h&agrave;ng linh kiện của bộ sản phẩm:</p>

<ol>
	<li><em>Bơm tăng &aacute;p sinleader 12v c&ocirc;ng xuất 5lit / ph&uacute;t</em></li>
	<li><em>Nguồn Adapter 12v 5A</em></li>
	<li><em>Điều tốc hay c&ograve;n gọi volum chỉnh &aacute;p</em></li>
	<li><em>Rọ lọc r&aacute;c, ống h&uacute;t trong cấp nguồn nước v&agrave;o</em></li>
	<li><em>Hộp chống nước, chống bẩn bảo vệ tăng độ bền cho bơm</em></li>
	<li><em>Bộ d&acirc;y dẩn 2 lớp 10mm d&agrave;i 10m</em></li>
	<li><em>Bộ cần xịt inox kh&oacute;a van đồng k&egrave;m loa xịt mịn</em></li>
</ol>

<p>Tất cả c&aacute;c linh kiện tr&ecirc;n đều l&agrave; tốt nhất, bền nhất tr&ecirc;n thị trường được đội ngủ nh&acirc;n vi&ecirc;n b&ecirc;n em lắp r&aacute;p tỉ mỉ thử test v&agrave; c&oacute; bảo h&agrave;nh.</p>
', N'Bộ-Phun-Tưới-Lan-và-Cây-cảnh-Đa-Năng-T111-(-miễn-ship-)--Bộ-Phun-Tưới-Lan-và-Cây-cảnh-Đa-Năng-T111', CAST(699.00 AS Decimal(18, 2)), 7, 7, N'4911c8f8-1b3f-451e-b4a3-ed5f6d5fe5af_bo-phun-tuoi-lan-va-cay-canh-da-nang-t111-mien-ship.jpg', 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 12/21/2023 9:41:52 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TypeCheckout]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [DoAn2_VatTuNongNghiep] SET  READ_WRITE 
GO
