USE [master]
GO
/****** Object:  Database [Digixperts]    Script Date: 2/17/2021 11:36:14 PM ******/
CREATE DATABASE [Digixperts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digixperts', FILENAME = N'F:\Eman\DigiXperts Task\Digixperts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Digixperts_log', FILENAME = N'F:\Eman\DigiXperts Task\Digixperts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Digixperts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Digixperts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Digixperts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Digixperts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Digixperts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Digixperts] SET ARITHABORT OFF 
GO
ALTER DATABASE [Digixperts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Digixperts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Digixperts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Digixperts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Digixperts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Digixperts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Digixperts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Digixperts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Digixperts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Digixperts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Digixperts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Digixperts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Digixperts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Digixperts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Digixperts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Digixperts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Digixperts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Digixperts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Digixperts] SET  MULTI_USER 
GO
ALTER DATABASE [Digixperts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Digixperts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Digixperts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Digixperts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Digixperts] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Digixperts]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/17/2021 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[BirthDate] [date] NULL,
	[HireDate] [date] NULL,
	[Address] [varchar](100) NULL,
	[Title] [varchar](50) NULL,
	[Salary] [int] NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (1, N'Eman Salah', CAST(N'1995-04-25' AS Date), CAST(N'2021-02-28' AS Date), N'Cairo', N'Developer', 4000, 1100903126)
INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (2, N'Amira Ali', CAST(N'1994-03-15' AS Date), CAST(N'2021-02-28' AS Date), N'Cairo', N'Developer', 5000, 1123654789)
INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (3, N'Kahled Ali', CAST(N'1992-08-24' AS Date), CAST(N'2019-02-10' AS Date), N'Giza', N'Engineer', 6000, 1232547899)
INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (4, N'Hannan Ahmed', CAST(N'1994-03-20' AS Date), CAST(N'2018-02-15' AS Date), N'Giza', N'HR', 5000, 1236547899)
INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (5, N'Amany Elnagar', CAST(N'1994-03-25' AS Date), CAST(N'2020-06-11' AS Date), N'Giza', N'Developer', 4000, 123658799)
INSERT [dbo].[Employees] ([Id], [Name], [BirthDate], [HireDate], [Address], [Title], [Salary], [Phone]) VALUES (6, N'Ahmed Mohamed', CAST(N'1993-05-01' AS Date), CAST(N'2017-01-15' AS Date), N'Giza', N'Developer', 7000, 112365897)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
USE [master]
GO
ALTER DATABASE [Digixperts] SET  READ_WRITE 
GO
