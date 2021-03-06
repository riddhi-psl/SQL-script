USE [master]
GO
/****** Object:  Database [hospital]    Script Date: 5/20/2022 12:01:32 PM ******/
CREATE DATABASE [hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hospital', FILENAME = N'C:\Users\riddhi_pal\hospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'hospital_log', FILENAME = N'C:\Users\riddhi_pal\hospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [hospital] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [hospital] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hospital] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hospital] SET  MULTI_USER 
GO
ALTER DATABASE [hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hospital] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hospital] SET QUERY_STORE = OFF
GO
USE [hospital]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [hospital]
GO
/****** Object:  Table [dbo].[AddPatient]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddPatient](
	[Name] [varchar](150) NULL,
	[Full_Address] [varchar](300) NULL,
	[Contact] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](10) NULL,
	[Blood_Group] [varchar](20) NULL,
	[Major_Disease] [varchar](400) NULL,
	[pid] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[Name] [varchar](150) NULL,
	[Full_Address] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientDetails]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDetails](
	[pid] [int] NOT NULL,
 CONSTRAINT [PK_PatientDetails] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientMore]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientMore](
	[pid] [bigint] NULL,
	[Symptoms] [varchar](150) NULL,
	[Diagonosis] [varchar](150) NULL,
	[Medicines] [varchar](150) NULL,
	[Ward] [varchar](15) NULL,
	[Ward_Type] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 5/20/2022 12:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[confirm_password] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'swati', N'pune', N'1234567890', 23, N'female', N'a+', N'NA', 1)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'riddhi', N'kolkata', N'23456', 22, N'Female', N'A+', N'no', 2)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'sneha', N'pune', N'1234567890', 21, N'female', N'A+', N'no', 3)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'vineetha', N'andhra', N'1234567890', 22, N'female', N'A+', N'no', 4)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'divya', N'andhra', N'12345674590', 23, N'female', N'b+', N'no', 5)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'shreelakshmi', N'karnataka', N'12345674590', 21, N'female', N'ab+', N'no', 6)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'sweta', N'bihar', N'12345674590', 22, N'female', N'ab+', N'no', 7)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'rohit', N'pune', N'12345674590', 30, N'male', N'O-', N'yes', 8)
INSERT [dbo].[AddPatient] ([Name], [Full_Address], [Contact], [Age], [Gender], [Blood_Group], [Major_Disease], [pid]) VALUES (N'gayan', N'australia', N'12345674590', 35, N'male', N'A+', N'yes', 9)
GO
INSERT [dbo].[FeedBack] ([Name], [Full_Address]) VALUES (N'riddhi', N'nice')
INSERT [dbo].[FeedBack] ([Name], [Full_Address]) VALUES (N'sneha', N'very good')
INSERT [dbo].[FeedBack] ([Name], [Full_Address]) VALUES (N'priya', N'moderate')
GO
INSERT [dbo].[PatientDetails] ([pid]) VALUES (2)
GO
INSERT [dbo].[PatientMore] ([pid], [Symptoms], [Diagonosis], [Medicines], [Ward], [Ward_Type]) VALUES (2, N'fever, headache', N'corona', N'calpol, vicks', N'Yes', N'Single')
GO
INSERT [dbo].[Register] ([username], [password], [confirm_password]) VALUES (N'riddhi', N'1234', N'1234')
INSERT [dbo].[Register] ([username], [password], [confirm_password]) VALUES (N'subha', N'456', N'456')
GO
/****** Object:  Index [UQ__AddPatie__DD37D91BC72DEC61]    Script Date: 5/20/2022 12:01:33 PM ******/
ALTER TABLE [dbo].[AddPatient] ADD UNIQUE NONCLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [hospital] SET  READ_WRITE 
GO
