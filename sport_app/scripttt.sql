USE [master]
GO
/****** Object:  Database [anisimov_sport_products]    Script Date: 27.04.2024 21:59:10 ******/
CREATE DATABASE [anisimov_sport_products]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'anisimov_sport_products', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\anisimov_sport_products.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'anisimov_sport_products_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\anisimov_sport_products_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [anisimov_sport_products] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [anisimov_sport_products].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [anisimov_sport_products] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET ARITHABORT OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [anisimov_sport_products] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [anisimov_sport_products] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET  DISABLE_BROKER 
GO
ALTER DATABASE [anisimov_sport_products] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [anisimov_sport_products] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET RECOVERY FULL 
GO
ALTER DATABASE [anisimov_sport_products] SET  MULTI_USER 
GO
ALTER DATABASE [anisimov_sport_products] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [anisimov_sport_products] SET DB_CHAINING OFF 
GO
ALTER DATABASE [anisimov_sport_products] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [anisimov_sport_products] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [anisimov_sport_products] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'anisimov_sport_products', N'ON'
GO
ALTER DATABASE [anisimov_sport_products] SET QUERY_STORE = OFF
GO
USE [anisimov_sport_products]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [anisimov_sport_products]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27.04.2024 21:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacter]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manufacter_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[id_pickup_point] [int] NOT NULL,
	[date_order] [date] NOT NULL,
	[date_delivery] [date] NOT NULL,
	[id_status] [int] NOT NULL,
	[code] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_order] [int] NOT NULL,
	[id_product] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[index] [int] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[street] [varchar](50) NOT NULL,
	[home] [int] NOT NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[article] [varchar](50) NOT NULL,
	[id_manufacter] [int] NOT NULL,
	[id_provider] [int] NOT NULL,
	[id_category] [int] NOT NULL,
	[current_discount] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[cost] [int] NOT NULL,
	[max_discount] [smallint] NOT NULL,
	[quantity_on_base] [int] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[photo] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[provider_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_role] [int] NOT NULL,
	[firts_name] [varchar](25) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[patronymic] [varchar](30) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name_category]) VALUES (1, N'Спортивный инвентарь')
INSERT [dbo].[Category] ([id], [name_category]) VALUES (2, N'Одежда')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Manufacter] ON 

INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (2, N'Abtoys')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (3, N'Atemi')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (4, N'Bradex')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (5, N'Colton')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (6, N'Demix')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (7, N'DFC')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (8, N'Green Hill')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (9, N'Mikasa')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (10, N'Moby Kids')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (11, N'Molten')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (12, N'Nordway')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (13, N'Perfetto Sport')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (14, N'playToday')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (15, N'Ridex')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (16, N'ROMANA Next')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (17, N'Salomon')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (18, N'SKIF')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (19, N'Starfit')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (20, N'X-Match')
INSERT [dbo].[Manufacter] ([id], [manufacter_name]) VALUES (21, N'Совтехстром')
SET IDENTITY_INSERT [dbo].[Manufacter] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (1, 9, 38, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 1, 401)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (2, 10, 40, CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 1, 402)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (3, 14, 42, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 2, 403)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (4, 11, 42, CAST(N'2022-05-18' AS Date), CAST(N'2022-05-24' AS Date), 1, 404)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (7, NULL, 43, CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 1, 405)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (8, NULL, 36, CAST(N'2022-05-21' AS Date), CAST(N'2022-05-27' AS Date), 2, 406)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (10, NULL, 44, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-30' AS Date), 2, 407)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (11, NULL, 45, CAST(N'2022-07-22' AS Date), CAST(N'2022-08-08' AS Date), 2, 408)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (12, NULL, 47, CAST(N'2022-05-23' AS Date), CAST(N'2022-05-24' AS Date), 2, 409)
INSERT [dbo].[Order] ([id], [id_user], [id_pickup_point], [date_order], [date_delivery], [id_status], [code]) VALUES (13, NULL, 48, CAST(N'2022-03-03' AS Date), CAST(N'2022-05-05' AS Date), 1, 410)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (1, 1, N'А112Т4', 2)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (2, 2, N'F746E6', 3)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (3, 3, N'D648N7', 10)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (4, 4, N'F937G4', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (5, 7, N'N483G5', 10)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (6, 8, N'G480F5', 2)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (7, 10, N'V312R4', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (8, 11, N'G522B5', 3)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (9, 12, N'F047J7', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (10, 13, N'N836R5', 5)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (11, 1, N'G598Y6', 2)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (12, 2, N'D830R5', 3)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (13, 3, N'F735B6', 10)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (14, 4, N'E324U7', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (15, 7, N'D038G6', 10)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (16, 8, N'C324S5', 2)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (17, 10, N'J4DF5E', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (18, 11, N'K432G6', 3)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (19, 12, N'S374B5', 1)
INSERT [dbo].[OrderProduct] ([id], [id_order], [id_product], [quantity]) VALUES (20, 13, N'D927K3', 5)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (20, 344288, N' г. Дубна', N' ул. Чехова', 1)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (21, 614164, N' г.Дубна', N'  ул. Степная', 30)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (22, 394242, N' г. Дубна', N' ул. Коммунистическая', 43)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (23, 660540, N' г. Дубна', N' ул. Солнечная', 25)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (24, 125837, N' г. Дубна', N' ул. Шоссейная', 40)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (25, 125703, N' г. Дубна', N' ул. Партизанская', 49)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (26, 625283, N' г. Дубна', N' ул. Победы', 46)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (27, 614611, N' г. Дубна', N' ул. Молодежная', 50)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (28, 454311, N' г.Дубна', N' ул. Новая', 19)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (29, 660007, N' г.Дубна', N' ул. Октябрьская', 19)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (30, 603036, N' г. Дубна', N' ул. Садовая', 4)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (31, 450983, N' г.Дубна', N' ул. Комсомольская', 26)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (32, 394782, N' г. Дубна', N' ул. Чехова', 3)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (33, 603002, N' г. Дубна', N' ул. Дзержинского', 28)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (34, 450558, N' г. Дубна', N' ул. Набережная', 30)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (35, 394060, N' г.Дубна', N' ул. Фрунзе', 43)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (36, 410661, N' г. Дубна', N' ул. Школьная', 50)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (37, 625590, N' г. Дубна', N' ул. Коммунистическая', 20)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (38, 625683, N' г. Дубна', N' ул. 8 Марта', 26)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (39, 400562, N' г. Дубна', N' ул. Зеленая', 32)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (40, 614510, N' г. Дубна', N' ул. Маяковского', 47)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (41, 410542, N' г. Дубна', N' ул. Светлая', 46)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (42, 620839, N' г. Дубна', N' ул. Цветочная', 8)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (43, 443890, N' г. Дубна', N' ул. Коммунистическая', 1)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (44, 603379, N' г. Дубна', N' ул. Спортивная', 46)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (45, 603721, N' г. Дубна', N' ул. Гоголя', 41)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (46, 410172, N' г. Дубна', N' ул. Северная', 13)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (47, 420151, N' г. Дубна', N' ул. Вишневая', 32)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (48, 125061, N' г. Дубна', N' ул. Подгорная', 8)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (49, 630370, N' г. Дубна', N' ул. Шоссейная', 24)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (50, 614753, N' г. Дубна', N' ул. Полевая', 35)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (51, 426030, N' г. Дубна', N' ул. Маяковского', 44)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (52, 450375, N' г. Дубна', N'ул. Клубная', 44)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (53, 625560, N' г. Дубна', N' ул. Некрасова', 12)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (54, 630201, N' г. Дубна', N' ул. Комсомольская', 17)
INSERT [dbo].[PickupPoint] ([id], [index], [city], [street], [home]) VALUES (55, 190949, N' г. Дубна', N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'B538G6', 14, 1, 2, 3, N'Спортивный костюм', 839, 5, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'C324S5', 17, 2, 1, 5, N'Шлем', 4000, 10, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'D038G6', 12, 1, 1, 4, N'Лыжный комплект', 3000, 30, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'D648N7', 21, 2, 1, 4, N'Набор для хоккея', 350, 10, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'D830R5', 10, 2, 1, 4, N'Тренажер прыжков', 1120, 15, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'D893W4', 6, 1, 1, 2, N'Мяч', 900, 5, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'D927K3', 19, 2, 1, 4, N'Перчатки ', 660, 15, 3, N'Перчатки Starfit SU-125 атлетические S черный', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'E324U7', 7, 1, 1, 5, N'Велотренажер', 6480, 25, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'F047J7', 4, 2, 1, 5, N'Коврик', 720, 15, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'F687G5', 8, 1, 1, 4, N'Защита голени', 1900, 15, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'F735B6', 21, 2, 1, 2, N'Игровой набор', 320, 15, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'F746E6', 16, 1, 1, 3, N'Шведская стенка', 9900, 10, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'F937G4', 2, 1, 1, 4, N'Игровой набор', 480, 10, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'G403T5', 12, 2, 1, 4, N'Тюбинг', 1450, 15, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'G480F5', 15, 1, 1, 4, N'Ролики', 1600, 15, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'G522B5', 5, 2, 1, 3, N'Ласты', 1980, 15, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'G598Y6', 13, 2, 1, 2, N'Спортивный мат', 2390, 15, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'G873H4', 18, 1, 1, 4, N'Велосипед', 14930, 5, 6, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'J4DF5E', 11, 2, 1, 4, N'Насос', 300, 5, 12, N'Насос Molten HP-18-B для мячей мультиколор', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'J532D4', 8, 2, 1, 3, N'Перчатки для карате', 1050, 15, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'K432G6', 3, 2, 1, 5, N'Шапочка для плавания', 440, 25, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'K937A5', 19, 1, 1, 4, N'Гиря', 890, 5, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'N483G5', 12, 2, 1, 3, N'Клюшка', 1299, 10, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'N836R5', 3, 1, 1, 3, N'Коньки', 2000, 10, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'N892G6', 3, 2, 1, 5, N'Очки для плавания', 500, 5, 14, N'Очки для плавания Atemi N8401 синий', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'S374B5', 4, 2, 1, 3, N'Ролик для йоги', 700, 10, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'V312R4', 9, 1, 1, 2, N'Мяч', 4150, 20, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'V392H7', 19, 2, 1, 3, N'Степ-платформа', 4790, 10, 15, N'Степ-платформа Starfit SP-204 серый/черный', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'V423D4', 19, 2, 1, 3, N'Штанга', 5600, 10, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', NULL)
INSERT [dbo].[Product] ([article], [id_manufacter], [id_provider], [id_category], [current_discount], [name], [cost], [max_discount], [quantity_on_base], [description], [photo]) VALUES (N'А112Т4', 20, 1, 1, 5, N'Боксерская груша', 778, 30, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([id], [provider_name]) VALUES (1, N'Спортмастер
')
INSERT [dbo].[Provider] ([id], [provider_name]) VALUES (2, N'Декатлон
')
SET IDENTITY_INSERT [dbo].[Provider] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [status_name]) VALUES (1, N'Новый')
INSERT [dbo].[status] ([id], [status_name]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[status] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (1, 1, N'Аиша
', N'Пахомова
', N'Анатольевна
', N'm4ic8j5qgstw@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (2, 1, N'Роман
', N'Жуков
', N'Богданович
', N'd43zfg9tlsyv@gmail.com', N'uzWC67')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (3, 1, N'Анастасия
', N'Киселева
', N'Максимовна
', N'8ohgisf6k45w@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (4, 2, N'Арина', N'Григорьева
', N'Арсентьевна
', N'hi1brwj46czx@mail.com', N'YOyhfR')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (6, 2, N'Лев', N'Иванов
', N'Михайлович
', N'fvkbcamhlj52@gmail.com', N'RSbvHv')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (8, 2, N'Лев', N'Григорьев
', N'Давидович
', N'9qxnce8jwruv@gmail.com', N'rwVDh9')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (9, 3, N'Степан', N'Поляков
', N'Егорович
', N'dotiex942p1r@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (10, 3, N'Алиса', N'Леонова
', N'Кирилловна
', N'n0bmi2h1xral@tutanota.com', N'gynQMT')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (11, 3, N'Ева', N'Ковалева
', N'Яковлевна
', N'ilb8rdut0v7e@mail.com', N'JlFRCZ')
INSERT [dbo].[User] ([id], [id_role], [firts_name], [last_name], [patronymic], [login], [password]) VALUES (14, 3, N'Платон', N'Яковлев
', N'Константинович
', N'sfm3t278kdvz@yahoo.com', N'AtnDjr')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([id_pickup_point])
REFERENCES [dbo].[PickupPoint] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([id_order])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product1] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([article])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([id_category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacter] FOREIGN KEY([id_manufacter])
REFERENCES [dbo].[Manufacter] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacter]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Provider] FOREIGN KEY([id_provider])
REFERENCES [dbo].[Provider] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Provider]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[CheckUser]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CheckUser]

@login varchar(50),
@password varchar(50)
as
begin
	select * from [User]
	where [login] = @login and [password] = @password

end
GO
/****** Object:  StoredProcedure [dbo].[SelectCategories]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SelectCategories]
	
as
begin
	select *
	from [Category]
end
GO
/****** Object:  StoredProcedure [dbo].[SelectManufacters]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectManufacters]
	
as
begin
	select *
	from [Manufacter]
end
GO
/****** Object:  StoredProcedure [dbo].[SelectProducts]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SelectProducts]

as
begin 
select 
		trim(article) as Артикул, 
		trim(m.manufacter_name) as Производитель,
		trim(p.provider_name) as Поставщик,
		trim(c.name_category) as Категория,
		pr.current_discount as 'Текущая скидка',
		trim(pr.[name]) as Наименование,
		pr.cost as Стоимость,
		pr.max_discount as 'Максимальная скидка' ,
		pr.quantity_on_base as 'Количество на базе, шт.',
		trim(pr.[description]) as 'Описание',
		trim(isnull(pr.photo, 'picture.png')) as Фото
	
from Product pr

INNER JOIN Manufacter m on m.id = pr.id_manufacter
inner join [Provider] p on p.id = pr.id_provider
inner join Category c on c.id = pr.id_category

end
GO
/****** Object:  StoredProcedure [dbo].[SelectProviders]    Script Date: 27.04.2024 21:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SelectProviders]
	
as
begin
	select *
	from [Provider]
end
GO
USE [master]
GO
ALTER DATABASE [anisimov_sport_products] SET  READ_WRITE 
GO
