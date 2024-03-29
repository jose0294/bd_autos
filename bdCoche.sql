USE [master]
GO
/****** Object:  Database [coche]    Script Date: 24/01/2019 09:50:14 ******/
CREATE DATABASE [coche]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'coche', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\coche.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'coche_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\coche_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [coche] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [coche].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [coche] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [coche] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [coche] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [coche] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [coche] SET ARITHABORT OFF 
GO
ALTER DATABASE [coche] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [coche] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [coche] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [coche] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [coche] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [coche] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [coche] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [coche] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [coche] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [coche] SET  DISABLE_BROKER 
GO
ALTER DATABASE [coche] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [coche] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [coche] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [coche] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [coche] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [coche] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [coche] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [coche] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [coche] SET  MULTI_USER 
GO
ALTER DATABASE [coche] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [coche] SET DB_CHAINING OFF 
GO
ALTER DATABASE [coche] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [coche] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [coche] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [coche] SET QUERY_STORE = OFF
GO
USE [coche]
GO
/****** Object:  Table [dbo].[tCoche]    Script Date: 24/01/2019 09:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCoche](
	[coche_Id] [uniqueidentifier] NOT NULL,
	[coche_color] [varchar](20) NULL,
	[coche_fabri] [int] NULL,
	[coche_placa] [varchar](10) NULL,
	[coche_n_asientos] [int] NULL,
	[coche_mec] [char](2) NULL,
	[coche_full] [char](2) NULL,
	[coche_marca] [varchar](20) NULL,
 CONSTRAINT [PK_tCoche] PRIMARY KEY CLUSTERED 
(
	[coche_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [coche] SET  READ_WRITE 
GO
