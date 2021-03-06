USE [master]
GO
/****** Object:  Database [SMTIDatabase]    Script Date: 2020-10-02 8:15:27 AM ******/
CREATE DATABASE [SMTIDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SMTIDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTIDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SMTIDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTIDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SMTIDatabase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SMTIDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SMTIDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMTIDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMTIDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMTIDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMTIDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMTIDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMTIDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SMTIDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMTIDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMTIDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMTIDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMTIDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMTIDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMTIDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMTIDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SMTIDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SMTIDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SMTIDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SMTIDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SMTIDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SMTIDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SMTIDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SMTIDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [SMTIDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [SMTIDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SMTIDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SMTIDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SMTIDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SMTIDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SMTIDatabase', N'ON'
GO
ALTER DATABASE [SMTIDatabase] SET QUERY_STORE = OFF
GO
USE [SMTIDatabase]
GO
/****** Object:  Table [dbo].[CourseRegistrations]    Script Date: 2020-10-02 8:15:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseRegistrations](
	[RegistrationNumber] [int] IDENTITY(1,1) NOT NULL,
	[StudentNumber] [int] NOT NULL,
	[CourseNumber] [nvarchar](10) NOT NULL,
	[RegistrationDate] [date] NULL,
 CONSTRAINT [PK_CourseRegistrations_1] PRIMARY KEY CLUSTERED 
(
	[RegistrationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2020-10-02 8:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseNumber] [nvarchar](10) NOT NULL,
	[CourseTitle] [nvarchar](50) NOT NULL,
	[Duration] [int] NOT NULL,
	[Prerequisite] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2020-10-02 8:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2020-10-02 8:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CourseRegistrations] ON 

INSERT [dbo].[CourseRegistrations] ([RegistrationNumber], [StudentNumber], [CourseNumber], [RegistrationDate]) VALUES (1, 11111, N'COMP101', CAST(N'2020-10-10' AS Date))
INSERT [dbo].[CourseRegistrations] ([RegistrationNumber], [StudentNumber], [CourseNumber], [RegistrationDate]) VALUES (2, 11111, N'COMP102', CAST(N'2020-11-11' AS Date))
INSERT [dbo].[CourseRegistrations] ([RegistrationNumber], [StudentNumber], [CourseNumber], [RegistrationDate]) VALUES (26, 22222, N'COMP101', CAST(N'2020-09-05' AS Date))
SET IDENTITY_INSERT [dbo].[CourseRegistrations] OFF
INSERT [dbo].[Courses] ([CourseNumber], [CourseTitle], [Duration], [Prerequisite]) VALUES (N'COMP101', N'Structured Programming', 90, N'None')
INSERT [dbo].[Courses] ([CourseNumber], [CourseTitle], [Duration], [Prerequisite]) VALUES (N'COMP102', N'Introduction to C#', 75, N'COMP101')
INSERT [dbo].[Courses] ([CourseNumber], [CourseTitle], [Duration], [Prerequisite]) VALUES (N'COMP103', N'Advanced Programming in C#', 75, N'COMP102')
INSERT [dbo].[Courses] ([CourseNumber], [CourseTitle], [Duration], [Prerequisite]) VALUES (N'COMP104', N'Web Programming I', 90, N'None')
INSERT [dbo].[Courses] ([CourseNumber], [CourseTitle], [Duration], [Prerequisite]) VALUES (N'COMP105', N'Web Programming II', 90, N'COMP104')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (11111, N'Mary', N'Brown', N'(514)111-1111', N'mary@yahoo.com')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (22222, N'Wei', N'Huang', N'(514)222-2222', N'wei@gmail.com')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (33333, N'Michael', N'Freitag', N'(514)333-3333', N'michael@hotmail.com')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (44444, N'Daniel', N'Rother', N'(514)555-5555', N'daniel@yahoo.com')
INSERT [dbo].[Users] ([UserId], [Password]) VALUES (11111, N'12345')
INSERT [dbo].[Users] ([UserId], [Password]) VALUES (22222, N'12345')
ALTER TABLE [dbo].[CourseRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_CourseRegistrations_Courses] FOREIGN KEY([CourseNumber])
REFERENCES [dbo].[Courses] ([CourseNumber])
GO
ALTER TABLE [dbo].[CourseRegistrations] CHECK CONSTRAINT [FK_CourseRegistrations_Courses]
GO
ALTER TABLE [dbo].[CourseRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_CourseRegistrations_Students] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Students] ([StudentNumber])
GO
ALTER TABLE [dbo].[CourseRegistrations] CHECK CONSTRAINT [FK_CourseRegistrations_Students]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Students] FOREIGN KEY([UserId])
REFERENCES [dbo].[Students] ([StudentNumber])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Students]
GO
USE [master]
GO
ALTER DATABASE [SMTIDatabase] SET  READ_WRITE 
GO
