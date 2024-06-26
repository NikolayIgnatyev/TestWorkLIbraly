USE [master]
GO
/****** Object:  Database [test]    Script Date: 18.06.2024 21:07:34 ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [test] SET QUERY_STORE = OFF
GO
USE [test]
GO
/****** Object:  Table [dbo].[Categoyes]    Script Date: 18.06.2024 21:07:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoyes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoyes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoreys]    Script Date: 18.06.2024 21:07:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoreys](
	[CategoryesId] [int] NULL,
	[ProductId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.06.2024 21:07:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tovars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoyes] ON 

INSERT [dbo].[Categoyes] ([Id], [CategoryName]) VALUES (1, N'Category1')
INSERT [dbo].[Categoyes] ([Id], [CategoryName]) VALUES (2, N'Category2')
INSERT [dbo].[Categoyes] ([Id], [CategoryName]) VALUES (3, N'Category3')
SET IDENTITY_INSERT [dbo].[Categoyes] OFF
GO
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (1, 1)
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (1, 2)
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (2, 2)
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (2, 3)
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (NULL, 4)
INSERT [dbo].[ProductCategoreys] ([CategoryesId], [ProductId]) VALUES (3, 5)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (1, N'Product1')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (2, N'Product2')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (3, N'Product3')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (4, N'Product4')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (5, N'Product5')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[ProductCategoreys]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategoreys_Categoyes] FOREIGN KEY([CategoryesId])
REFERENCES [dbo].[Categoyes] ([Id])
GO
ALTER TABLE [dbo].[ProductCategoreys] CHECK CONSTRAINT [FK_ProductCategoreys_Categoyes]
GO
ALTER TABLE [dbo].[ProductCategoreys]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategoreys_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductCategoreys] CHECK CONSTRAINT [FK_ProductCategoreys_Products]
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
