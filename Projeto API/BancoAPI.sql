USE [master]
GO

/****** Object:  Database [BancoAPI]    Script Date: 06/07/2024 15:29:16 ******/
CREATE DATABASE [BancoAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BancoAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BancoAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BancoAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BancoAPI.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BancoAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BancoAPI] SET ANSI_NULL_DEFAULT ON 
GO

ALTER DATABASE [BancoAPI] SET ANSI_NULLS ON 
GO

ALTER DATABASE [BancoAPI] SET ANSI_PADDING ON 
GO

ALTER DATABASE [BancoAPI] SET ANSI_WARNINGS ON 
GO

ALTER DATABASE [BancoAPI] SET ARITHABORT ON 
GO

ALTER DATABASE [BancoAPI] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BancoAPI] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BancoAPI] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BancoAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BancoAPI] SET CURSOR_DEFAULT  LOCAL 
GO

ALTER DATABASE [BancoAPI] SET CONCAT_NULL_YIELDS_NULL ON 
GO

ALTER DATABASE [BancoAPI] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BancoAPI] SET QUOTED_IDENTIFIER ON 
GO

ALTER DATABASE [BancoAPI] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BancoAPI] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BancoAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BancoAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BancoAPI] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BancoAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BancoAPI] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BancoAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BancoAPI] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BancoAPI] SET RECOVERY FULL 
GO

ALTER DATABASE [BancoAPI] SET  MULTI_USER 
GO

ALTER DATABASE [BancoAPI] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BancoAPI] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BancoAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BancoAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BancoAPI] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BancoAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BancoAPI] SET QUERY_STORE = ON
GO

ALTER DATABASE [BancoAPI] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [BancoAPI] SET  READ_WRITE 
GO

