USE [master]
GO
/****** Object:  Database [project1]    Script Date: 13-06-2022 03:08:51 ******/
CREATE DATABASE [project1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\project1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\project1_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [project1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project1] SET ARITHABORT OFF 
GO
ALTER DATABASE [project1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project1] SET  MULTI_USER 
GO
ALTER DATABASE [project1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [project1] SET QUERY_STORE = OFF
GO
USE [project1]
GO
/****** Object:  Table [dbo].[Leave_Return_Status]    Script Date: 13-06-2022 03:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_Return_Status](
	[lrid] [int] IDENTITY(1,1) NOT NULL,
	[l_id] [int] NULL,
	[SPno] [varchar](50) NULL,
	[OPno_Return_Req_By] [varchar](50) NULL,
	[Designation_Return_Req_By] [varchar](50) NULL,
	[Return_Req_Date] [datetime] NULL,
	[Remarks_Return_Req_By] [varchar](max) NULL,
	[OPno_Return_Req_To] [varchar](50) NULL,
	[Designation_Return_Req_To] [varchar](50) NULL,
	[Return_Req_Submission_Date] [datetime] NULL,
	[Remarks_Return_Req_To] [varchar](max) NULL,
	[Type] [varchar](15) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Leave_Return_Status] PRIMARY KEY CLUSTERED 
(
	[lrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_Status]    Script Date: 13-06-2022 03:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[l_id] [int] NULL,
	[SPno] [varchar](50) NULL,
	[OPno] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[App_Date] [datetime] NULL,
	[status] [varchar](50) NULL,
	[FlowLevel] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_Leave_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leaveapp]    Script Date: 13-06-2022 03:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leaveapp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flowid] [int] NOT NULL,
	[rank] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[pno] [varchar](50) NOT NULL,
	[ration] [varchar](50) NOT NULL,
	[department] [varchar](50) NOT NULL,
	[leavetype] [varchar](50) NOT NULL,
	[requestingDays] [varchar](50) NULL,
	[multileaveType1] [varchar](50) NULL,
	[multileaveDays1] [varchar](50) NULL,
	[multileavefromdate1] [varchar](50) NULL,
	[multileavetodate1] [varchar](50) NULL,
	[multileaveType2] [varchar](50) NULL,
	[multileaveDays2] [varchar](50) NULL,
	[multileavefromdate2] [varchar](50) NULL,
	[multileavetodate2] [varchar](50) NULL,
	[service] [varchar](50) NULL,
	[Reason_for] [varchar](50) NULL,
	[ofyear] [varchar](50) NOT NULL,
	[tt] [varchar](50) NULL,
	[prefixfrom] [varchar](50) NULL,
	[prefixto] [varchar](50) NULL,
	[prefixbeing] [varchar](50) NULL,
	[interfixfrom] [varchar](50) NULL,
	[interfixto] [varchar](50) NULL,
	[interfixbeing] [varchar](50) NULL,
	[suffixfrom] [varchar](50) NULL,
	[suffixto] [varchar](50) NULL,
	[suffixbeing] [varchar](50) NULL,
	[encash] [varchar](50) NOT NULL,
	[Total_Encash] [varchar](50) NULL,
	[date_commencement] [varchar](50) NOT NULL,
	[pages] [varchar](50) NOT NULL,
	[leave_station] [varchar](max) NOT NULL,
	[Railway_station] [varchar](max) NOT NULL,
	[leave_address] [varchar](max) NOT NULL,
	[police_station] [varchar](max) NULL,
	[mobileno] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[officiating_officer] [varchar](50) NOT NULL,
	[curent_leave] [bigint] NOT NULL,
	[adharno] [varchar](50) NOT NULL,
	[nok_name] [varchar](50) NOT NULL,
	[nok_mobile] [varchar](50) NOT NULL,
	[military_hos] [varchar](max) NOT NULL,
	[co_name] [varchar](50) NULL,
	[co_relation] [varchar](50) NULL,
	[co_address] [varchar](max) NULL,
	[zila_sainik_board] [varchar](max) NULL,
	[post_office] [varchar](max) NULL,
	[remarks] [varchar](50) NULL,
	[civil_hos] [varchar](max) NOT NULL,
	[date_initiate] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[State] [bit] NULL,
	[declaration] [varchar](150) NULL,
	[declaredate] [varchar](50) NULL,
	[leaveyearAL] [varchar](10) NULL,
	[leaveyearCL] [varchar](10) NULL,
	[leaveyearENCASH] [varchar](10) NULL,
	[firstdose] [varchar](10) NULL,
	[firstdosedate] [varchar](50) NULL,
	[seconddose] [varchar](10) NULL,
	[seconddosedate] [varchar](50) NULL,
	[Div_Officer] [varchar](50) NULL,
	[Dept_Officer] [varchar](50) NULL,
	[MedicalCategory] [varchar](20) NULL,
	[MedicalOption] [varchar](20) NULL,
	[MedicalWEFDate] [varchar](15) NULL,
	[AMEStatus] [varchar](10) NULL,
	[AMEDate] [varchar](15) NULL,
	[Release_Duo] [bit] NULL,
	[Release_Duo_Date] [varchar](50) NULL,
	[gxnumber] [varchar](50) NULL,
	[gxdate] [date] NULL,
	[gxoption] [varchar](50) NULL,
 CONSTRAINT [PK_leaveapp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table1]    Script Date: 13-06-2022 03:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table1](
	[id] [nchar](10) NULL,
	[name] [nchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Leave_Status]  WITH CHECK ADD  CONSTRAINT [FK_Leave_Status_Leave_Status1] FOREIGN KEY([Id])
REFERENCES [dbo].[Leave_Status] ([Id])
GO
ALTER TABLE [dbo].[Leave_Status] CHECK CONSTRAINT [FK_Leave_Status_Leave_Status1]
GO
USE [master]
GO
ALTER DATABASE [project1] SET  READ_WRITE 
GO
