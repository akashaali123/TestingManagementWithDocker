USE [master]
GO
/****** Object:  Database [TestManagementSystem1]    Script Date: 2/26/2020 4:01:56 PM ******/
CREATE DATABASE [TestManagementSystem1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestManagementSystem1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TestManagementSystem1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestManagementSystem1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TestManagementSystem1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TestManagementSystem1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestManagementSystem1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestManagementSystem1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestManagementSystem1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestManagementSystem1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestManagementSystem1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestManagementSystem1] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TestManagementSystem1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET RECOVERY FULL 
GO
ALTER DATABASE [TestManagementSystem1] SET  MULTI_USER 
GO
ALTER DATABASE [TestManagementSystem1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestManagementSystem1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestManagementSystem1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestManagementSystem1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestManagementSystem1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestManagementSystem1', N'ON'
GO
ALTER DATABASE [TestManagementSystem1] SET QUERY_STORE = OFF
GO
USE [TestManagementSystem1]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 2/26/2020 4:01:56 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/26/2020 4:01:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/26/2020 4:01:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Discriminator] [nvarchar](max) NOT NULL,
	[JwtToken] [nvarchar](max) NULL,
	[RoleId] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CategoryId] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/26/2020 4:01:57 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCandidate]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCandidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CurrentCompany] [nvarchar](250) NULL,
	[TechStack] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[VacancyId] [int] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ExperienceLevelId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_TblCandidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCompany]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TblCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblExperienceLevel]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblExperienceLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[MinExp] [int] NULL,
	[MaxExp] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TblExperienceLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLogging]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogging](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Application] [nvarchar](max) NULL,
	[Logged] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Logger] [nvarchar](max) NULL,
	[CallSite] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblLogging] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOption]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOption](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[OptionDescription] [nvarchar](500) NOT NULL,
	[IsCorrect] [bit] NULL,
	[QuestionId] [int] NULL,
	[Duration] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TblOption] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblQuestion]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblQuestion](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Time] [datetime2](7) NULL,
	[Marks] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[CategoryId] [int] NULL,
	[ExperienceLevelId] [int] NULL,
	[Roleid] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblQuestionCategoryAndExpMapping]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblQuestionCategoryAndExpMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NULL,
	[CategoryId] [int] NULL,
	[ExpLevelId] [int] NULL,
 CONSTRAINT [PK_TblQuestionCategoryAndExpMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRole]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TblRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSessionHistory]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSessionHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[SessionId] [int] NULL,
	[IsActive] [bit] NULL,
	[Jwt] [nvarchar](250) NULL,
	[Created] [datetime2](7) NULL,
 CONSTRAINT [PK_TblSessionHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTest]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTest](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateId] [int] NULL,
	[CategoryId] [int] NULL,
	[ExpLevelId] [int] NULL,
	[TestDate] [datetime2](7) NULL,
	[TestStatus] [nvarchar](500) NULL,
	[TotalQuestion] [int] NULL,
	[AttemptedQuestion] [int] NULL,
	[Percentage] [float] NULL,
	[CorrectAnswer] [int] NULL,
	[WrongAnswer] [int] NULL,
	[QuestionSkipped] [int] NULL,
	[Duration] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TblTest] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTestDetails]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTestDetails](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NULL,
	[SelectedOptionId] [nvarchar](max) NULL,
	[CorrectOptionId] [nvarchar](max) NULL,
	[AttemptedInDuration] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[CandidateId] [int] NOT NULL,
 CONSTRAINT [PK_TblTestDetails] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUserRole]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_TblUserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblVerifierCategoryAndRole]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblVerifierCategoryAndRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](max) NULL,
	[RoleId] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblVerifierCategoryAndRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131120823_Add Identity', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131121632_Add table Candidate', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131121835_Add table Category', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131122043_Add table TblExperienceLevel', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131122222_Add table TblOption', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131122509_Add table TblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131122745_Add table Tbl QuestionCategoryAndExpMapping', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131122931_Add table TblRole', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131123103_Add table TbSessionHistory', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131123305_Add table TblTest', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131123431_Add table TblTestDetail', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131123624_Add table TblUserRole', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200203043629_Add Table Logging', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212042522_add FilePath Property To Logging', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212111542_Increase length of jwt in tbl user', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212112458_Increase length to 2000 of jwt in tbl user', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214061831_Change Datatype of CreatedBy to String', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214062151_Change Datatype of UpdatedBy to String in TblExperienceLevel', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214062430_Change Datatype of CreatedBy to String in TblCandidate', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063237_Change Datatype of CreatedBy to String in TblCategory', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063355_Change Datatype of CreatedBy and UpdatedBy to String in TblOption', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063459_Change Datatype of CreatedBy and UpdatedBy to String in TblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063626_Change Datatype of CreatedBy and UpdatedBy to String in TblTest', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063742_Change Datatype of CreatedBy and UpdatedBy to String in TblTestDetails', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214063856_Change Datatype of CreatedBy to String in TblUser', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200218063540_Increase length to max in tbluser jwttoken property', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200218112233_add new column TestDetailId in tblTestDetails', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200218123647_Rename TestDetailId to CandidateId in tblTestDetails', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200219104840_add categoryId in TblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200219113857_add ExperienceLevelId in TblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200219115102_add ExperienceLevelId in TblCandidate', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200219125850_nullable UpdatedDate in TblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200220074750_change data type selectedOptionId and correctedOptionId to string', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200220120638_add column of categoryId in tblCandidate', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200221060212_change data type float to double of percentage in TblTest', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200224112912_add new table TblCompany', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200225062714_add new column RoleId in tblQuestion', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200225102041_add CategoryId in tblUser', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200225111004_add table TblVerifierCategoryAndRole', N'3.1.1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3351c29f-5c30-4d70-b02e-58bb1b8e1a5c', N'verifier', N'VERIFIER', N'133f2f03-e643-4be0-86f0-259443daa531')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'35963952-06d7-48d1-bfd3-93f09c592ea2', N'contributor', N'CONTRIBUTOR', N'eb302a57-a24a-4312-8a12-9a136d23eca2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191', N'SuperAdmin', N'SUPERADMIN', N'e238f7a5-1b55-4440-8e62-78baf3ad88aa')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9b1621e8-27c8-4632-aab3-5d88c22fc948', N'Admin', N'ADMIN', N'9585d5d7-196d-41a1-9489-0019d617b609')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eda4a25e-25b6-4815-96fe-e909bc89b481', N'3351c29f-5c30-4d70-b02e-58bb1b8e1a5c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1ed10c5b-1058-444a-ae7f-adf6d284fc02', N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8c1c362a-3bb4-4f11-ad6e-6b971f24b5e5', N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [JwtToken], [RoleId], [IsActive], [CreatedBy], [CreatedDate], [CategoryId]) VALUES (N'1ed10c5b-1058-444a-ae7f-adf6d284fc02', N'akasha', N'AKASHA', N'akashaali2012@gmail.com', N'AKASHAALI2012@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOOFzv/5pSVaeoXa1RUYGvqDIYwshhzJxOCSmAKqqrZ8Z8frHbhcCE1j2SVnUeKcLw==', N'T5IMHRWSY4SN7UIE3NGXXIDFHH3R5LHB', N'f75e5fde-b142-4f04-872f-94b49c894df3', NULL, 0, 0, NULL, 1, 0, N'TblUser', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiIxZWQxMGM1Yi0xMDU4LTQ0NGEtYWU3Zi1hZGY2ZDI4NGZjMDIiLCJlbWFpbCI6ImFrYXNoYWFsaTIwMTJAZ21haWwuY29tIiwicm9sZSI6IlN1cGVyQWRtaW4iLCJyb2xlaWQiOiI3ZTdiOWJmNC1hM2E5LTQzYTktOGZmMS02YTVlZTlmM2UxOTEiLCJ1c2VybmFtZSI6ImFrYXNoYSIsImlzYWN0aXZlIjoiVHJ1ZSIsIm5iZiI6MTU4MjcwMjI4NywiZXhwIjoxNTgyNzIwMjg3LCJpYXQiOjE1ODI3MDIyODd9.KKo6IKqXEYlgXf_Z9XzjOFNUhsUMwTTcpKoECpP3oEI', N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191', 1, NULL, CAST(N'2020-02-25T15:53:56.3159115' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [JwtToken], [RoleId], [IsActive], [CreatedBy], [CreatedDate], [CategoryId]) VALUES (N'8c1c362a-3bb4-4f11-ad6e-6b971f24b5e5', N'umer', N'UMER', N'umerhasan2010gmail.com', N'UMERHASAN2010GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAqg+DbVDu7K7LxgsTN9AtB2+jMig1GAz0iDhDooASrOD4tt6iktbmgXsTPqG/SeXw==', N'B6GH7NCBRFZOEMDAZHCFHFOKYDIQ34VE', N'cb1d3168-1658-46d8-8d22-c2939624b9fd', NULL, 0, 0, NULL, 1, 0, N'TblUser', NULL, N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191', 1, NULL, CAST(N'2020-02-25T15:54:37.4318079' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [JwtToken], [RoleId], [IsActive], [CreatedBy], [CreatedDate], [CategoryId]) VALUES (N'eda4a25e-25b6-4815-96fe-e909bc89b481', N'Daniyal', N'DANIYAL', N'daniyal2010gmail.com', N'DANIYAL2010GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAk0mFKd8QB2Nm0CCrxuNN2z8HbPTj/t8cL8Gaf4OtUPXuEQe1iOPAJ8HZBjbwGs4A==', N'FEZ7W7G2JW2VRA47H2ZVBB3UU6JGDSGF', N'4979324a-6358-4e2d-815c-3edd9b595d2d', NULL, 0, 0, NULL, 1, 0, N'TblUser', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiJlZGE0YTI1ZS0yNWI2LTQ4MTUtOTZmZS1lOTA5YmM4OWI0ODEiLCJlbWFpbCI6ImRhbml5YWwyMDEwZ21haWwuY29tIiwicm9sZSI6InZlcmlmaWVyIiwicm9sZWlkIjoiMzM1MWMyOWYtNWMzMC00ZDcwLWIwMmUtNThiYjFiOGUxYTVjIiwidXNlcm5hbWUiOiJEYW5peWFsIiwiaXNhY3RpdmUiOiJUcnVlIiwibmJmIjoxNTgyNzEzNzQyLCJleHAiOjE1ODI3MzE3NDIsImlhdCI6MTU4MjcxMzc0Mn0.7dQoc70IvEinAH_aN3rPl-t1Ejik2C77ak89QE9G_vM', N'3351c29f-5c30-4d70-b02e-58bb1b8e1a5c', 1, NULL, CAST(N'2020-02-25T16:22:58.0785102' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[TblCandidate] ON 

INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (45, N'Akasha ', N'Nasir', N'akashanasir@gmail.com', N'Arpatech', NULL, 1, NULL, NULL, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), 21, 19)
INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (46, N'Syed Umer ', N'Hasan', N'umerhasan2010@gmail.com', N'Arpatech', NULL, 1, NULL, NULL, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), 21, 19)
INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (47, N'Hamza ', N'Umer', N'hamza@gmail.com', N'Arpatech', NULL, 1, NULL, NULL, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), 22, 19)
INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (48, N'Kashaf', N'Hameed', N'kashafhameed@gmail.com', N'Arpatech', NULL, 1, NULL, NULL, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), 21, 22)
INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (49, N'Arsalan', N'Khan', N'arsalan@gmail.com', N'Arpatech', NULL, 1, NULL, NULL, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), 21, 22)
INSERT [dbo].[TblCandidate] ([CandidateId], [FirstName], [LastName], [Email], [CurrentCompany], [TechStack], [IsActive], [VacancyId], [CreatedBy], [CreatedDate], [ExperienceLevelId], [CategoryId]) VALUES (51, N'Sample', N'Student', N'sample@gmail.com', N'dfgyh', NULL, 1, NULL, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), 21, 20)
SET IDENTITY_INSERT [dbo].[TblCandidate] OFF
SET IDENTITY_INSERT [dbo].[TblCategory] ON 

INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (19, N'PHP', 1, NULL, CAST(N'2020-02-19T14:57:31.6765813' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (20, N'.NET', 1, NULL, CAST(N'2020-02-19T14:57:44.7390856' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (21, N'Data Science', 1, NULL, CAST(N'2020-02-19T14:57:51.8170342' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (22, N'Software Quality Assurance', 1, NULL, CAST(N'2020-02-19T14:58:42.8475338' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (23, N'IOS', 1, NULL, CAST(N'2020-02-19T14:58:49.0706906' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (24, N'Android ', 1, NULL, CAST(N'2020-02-19T14:58:52.9081900' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (25, N'Front-End Development', 1, NULL, CAST(N'2020-02-19T14:59:04.1445168' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (27, N'asdsdsdaasd', 1, NULL, CAST(N'2020-02-20T14:54:19.0487389' AS DateTime2))
INSERT [dbo].[TblCategory] ([CategoryId], [Name], [IsActive], [CreatedBy], [CreatedDate]) VALUES (28, N'XYZ', 1, NULL, CAST(N'2020-02-20T17:56:28.0777879' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TblCategory] OFF
SET IDENTITY_INSERT [dbo].[TblExperienceLevel] ON 

INSERT [dbo].[TblExperienceLevel] ([Id], [Name], [MinExp], [MaxExp], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'Fresher', 0, 1, 1, N'37476ed8-c025-478c-a1b0-5b6987f0fbce', CAST(N'2020-02-19T18:28:51.5230734' AS DateTime2), NULL, NULL)
INSERT [dbo].[TblExperienceLevel] ([Id], [Name], [MinExp], [MaxExp], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, N'Trainee PHP', 1, 2, 1, N'37476ed8-c025-478c-a1b0-5b6987f0fbce', CAST(N'2020-02-19T18:29:05.8103294' AS DateTime2), NULL, NULL)
INSERT [dbo].[TblExperienceLevel] ([Id], [Name], [MinExp], [MaxExp], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'Junior PHP', 2, 4, 1, N'37476ed8-c025-478c-a1b0-5b6987f0fbce', CAST(N'2020-02-19T18:29:19.7275436' AS DateTime2), NULL, NULL)
INSERT [dbo].[TblExperienceLevel] ([Id], [Name], [MinExp], [MaxExp], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, N'Senior PHP', 4, 6, 1, N'37476ed8-c025-478c-a1b0-5b6987f0fbce', CAST(N'2020-02-19T18:29:31.2339564' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblExperienceLevel] OFF
SET IDENTITY_INSERT [dbo].[TblLogging] ON 

INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (38, N'AspNetCoreNlog', N'2020/02/03 14:07:25.780', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (39, N'AspNetCoreNlog', N'2020/02/03 14:07:27.083', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (40, N'AspNetCoreNlog', N'2020/02/03 14:21:41.819', N'Error', N'Stopped program because of exception', N'TestManagement1.Program', N'TestManagement1.Program.Main(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Program.cs:21)', N'System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.SqlUser'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (45, N'AspNetCoreNlog', N'2020/02/03 14:25:59.753', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (50, N'AspNetCoreNlog', N'2020/02/03 14:35:13.871', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (51, N'AspNetCoreNlog', N'2020/02/03 14:35:15.109', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (52, N'AspNetCoreNlog', N'2020/02/03 14:35:15.969', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (53, N'AspNetCoreNlog', N'2020/02/03 14:35:27.594', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (54, N'AspNetCoreNlog', N'2020/02/03 14:44:46.669', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.SqlRepository.SqlUser'' while attempting to activate ''TestManagement1.Controllers.ApplicationUserController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (78, N'AspNetCoreNlog', N'2020/02/03 16:03:11.666', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.DivideByZeroException: Attempted to divide by zero.
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 49
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (79, N'AspNetCoreNlog', N'2020/02/03 17:42:24.134', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.RepositoryInterface.ICandidateRepository'' while attempting to activate ''TestManagement1.Controllers.CandidateController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (80, N'AspNetCoreNlog', N'2020/02/04 09:33:39.099', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagement1.RepositoryInterface.ICategory'' while attempting to activate ''TestManagement1.Controllers.CategoryController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (81, N'AspNetCoreNlog', N'2020/02/04 11:53:01.081', N'Error', N'Error in Weather ControllerSystem.DivideByZeroException: Attempted to divide by zero.
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 50', N'TestManagement1.Controllers.WeatherForecastController', N'TestManagement1.Controllers.WeatherForecastController.Get(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:50)', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (82, N'TestManagement1', N'2020/02/04 15:05:10.485', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''Microsoft.Extensions.Logging.ILogger'' while attempting to activate ''TestManagement1.Controllers.CandidateController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (83, N'TestManagement1', N'2020/02/04 15:05:37.628', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''Microsoft.Extensions.Logging.ILogger'' while attempting to activate ''TestManagement1.Controllers.CandidateController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (84, N'TestManagement1', N'2020/02/06 17:36:55.414', N'Error', N'Error in Candidate Update Methode in CandidatePresenterSystem.InvalidOperationException: The property ''CandidateId'' on entity type ''TblCandidate'' has a temporary value while attempting to change the entity''s state to ''Modified''. Either set a permanent value explicitly or ensure that the database is configured to generate values for this property.
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState oldState, EntityState newState, Boolean acceptChanges, Boolean modifyProperties)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState entityState, Boolean acceptChanges, Boolean modifyProperties, Nullable`1 forceStateWhenUnknownKey)
   at Microsoft.EntityFrameworkCore.ChangeTracking.EntityEntry.set_State(EntityState value)
   at TestManagement1.SqlRepository.SqlCandidateRepository.Update(CandidateViewModel candidateModel) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\SqlRepository\SqlCandidateRepository.cs:line 121
   at TestManagement1.Presenter.CandidatePresenter.Update(CandidateViewModel candidateChanges) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:line 80', N'TestManagement1.Presenter.CandidatePresenter', N'TestManagement1.Presenter.CandidatePresenter.Update(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:80)', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (85, N'TestManagement1', N'2020/02/06 17:40:58.678', N'Error', N'Error in Candidate Update Methode in CandidatePresenterSystem.InvalidOperationException: The property ''CandidateId'' on entity type ''TblCandidate'' has a temporary value while attempting to change the entity''s state to ''Modified''. Either set a permanent value explicitly or ensure that the database is configured to generate values for this property.
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState oldState, EntityState newState, Boolean acceptChanges, Boolean modifyProperties)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState entityState, Boolean acceptChanges, Boolean modifyProperties, Nullable`1 forceStateWhenUnknownKey)
   at Microsoft.EntityFrameworkCore.ChangeTracking.EntityEntry.set_State(EntityState value)
   at TestManagement1.SqlRepository.SqlCandidateRepository.Update(CandidateViewModel candidateModel) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\SqlRepository\SqlCandidateRepository.cs:line 122
   at TestManagement1.Presenter.CandidatePresenter.Update(CandidateViewModel candidateChanges) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:line 80', N'TestManagement1.Presenter.CandidatePresenter', N'TestManagement1.Presenter.CandidatePresenter.Update(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:80)', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (86, N'TestManagement1', N'2020/02/06 17:44:38.312', N'Error', N'Error in Candidate Update Methode in CandidatePresenterSystem.InvalidOperationException: The property ''CandidateId'' on entity type ''TblCandidate'' has a temporary value while attempting to change the entity''s state to ''Modified''. Either set a permanent value explicitly or ensure that the database is configured to generate values for this property.
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState oldState, EntityState newState, Boolean acceptChanges, Boolean modifyProperties)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetEntityState(EntityState entityState, Boolean acceptChanges, Boolean modifyProperties, Nullable`1 forceStateWhenUnknownKey)
   at Microsoft.EntityFrameworkCore.ChangeTracking.EntityEntry.set_State(EntityState value)
   at TestManagement1.SqlRepository.SqlCandidateRepository.Update(CandidateViewModel candidateModel) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\SqlRepository\SqlCandidateRepository.cs:line 122
   at TestManagement1.Presenter.CandidatePresenter.Update(CandidateViewModel candidateChanges) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:line 80', N'TestManagement1.Presenter.CandidatePresenter', N'TestManagement1.Presenter.CandidatePresenter.Update(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\Presenter\CandidatePresenter.cs:80)', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (87, N'TestManagement1', N'2020/02/07 11:37:29.095', N'Error', N'Failed executing DbCommand (125ms) [Parameters=[@p0=''?'' (DbType = Int32), @p1=''?'' (DbType = DateTime2), @p2=''?'' (Size = 250), @p3=''?'' (Size = 4000), @p4=''?'' (Size = 250), @p5=''?'' (DbType = Boolean), @p6=''?'' (Size = 250), @p7=''?'' (Size = 250), @p8=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
INSERT INTO [TblCandidate] ([CreatedBy], [CreatedDate], [CurrentCompany], [Email], [FirstName], [IsActive], [LastName], [TechStack], [VacancyId])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8);
SELECT [CandidateId]
FROM [TblCandidate]
WHERE @@ROWCOUNT = 1 AND [CandidateId] = scope_identity();', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (88, N'TestManagement1', N'2020/02/07 11:37:29.324', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): Cannot insert the value NULL into column ''FirstName'', table ''TestManagementSystem1.dbo.TblCandidate''; column does not allow nulls. INSERT fails.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at Microsoft.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at Microsoft.Data.SqlClient.SqlDataReader.get_MetaData()
   at Microsoft.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean isAsync, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReader(RelationalCommandParameterObject parameterObject)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
ClientConnectionId:5e13e9db-65d5-42bc-8c86-8ec37a616d7b
Error Number:515,State:2,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.Execute(IEnumerable`1 commandBatches, IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Storage.RelationalDatabase.SaveChanges(IList`1 entries)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(IList`1 entriesToSave)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(DbContext _, Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges(Boolean acceptAllChangesOnSuccess)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): Cannot insert the value NULL into column ''FirstName'', table ''TestManagementSystem1.dbo.TblCandidate''; column does not allow nulls. INSERT fails.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at Microsoft.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at Microsoft.Data.SqlClient.SqlDataReader.get_MetaData()
   at Microsoft.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean isAsync, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReader(RelationalCommandParameterObject parameterObject)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
ClientConnectionId:5e13e9db-65d5-42bc-8c86-8ec37a616d7b
Error Number:515,State:2,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.Execute(IEnumerable`1 commandBatches, IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Storage.RelationalDatabase.SaveChanges(IList`1 entries)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(IList`1 entriesToSave)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(DbContext _, Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges(Boolean acceptAllChangesOnSuccess)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (89, N'TestManagement1', N'2020/02/07 11:37:29.397', N'Error', N'Error in Candidate Add Methode in Sql RepositoryMicrosoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): Cannot insert the value NULL into column ''FirstName'', table ''TestManagementSystem1.dbo.TblCandidate''; column does not allow nulls. INSERT fails.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at Microsoft.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at Microsoft.Data.SqlClient.SqlDataReader.get_MetaData()
   at Microsoft.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean isAsync, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReader(RelationalCommandParameterObject parameterObject)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
ClientConnectionId:5e13e9db-65d5-42bc-8c86-8ec37a616d7b
Error Number:515,State:2,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.Execute(IEnumerable`1 commandBatches, IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Storage.RelationalDatabase.SaveChanges(IList`1 entries)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(IList`1 entriesToSave)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(DbContext _, Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges()
   at TestManagement1.SqlRepository.SqlCandidateRepository.Add(CandidateViewModel candidateModel) in C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\SqlRepository\SqlCandidateRepository.cs:line 46', N'TestManagement1.SqlRepository.SqlCandidateRepository', N'TestManagement1.SqlRepository.SqlCandidateRepository.Add(C:\Users\akasha.nasir\Desktop\TestManagement1\TestManagement1\SqlRepository\SqlCandidateRepository.cs:46)', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (90, N'TestManagement1', N'2020/02/07 19:42:16.584', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.Text.Json.JsonException: A possible object cycle was detected which is not supported. This can either be due to a cycle or if the object depth is larger than the maximum allowed depth of 32.
   at System.Text.Json.ThrowHelper.ThrowInvalidOperationException_SerializerCycleDetected(Int32 maxDepth)
   at System.Text.Json.JsonSerializer.Write(Utf8JsonWriter writer, Int32 originalWriterDepth, Int32 flushThreshold, JsonSerializerOptions options, WriteStack& state)
   at System.Text.Json.JsonSerializer.WriteAsyncCore(Stream utf8Json, Object value, Type inputType, JsonSerializerOptions options, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (91, N'TestManagement1', N'2020/02/07 19:45:36.886', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.Text.Json.JsonException: A possible object cycle was detected which is not supported. This can either be due to a cycle or if the object depth is larger than the maximum allowed depth of 32.
   at System.Text.Json.ThrowHelper.ThrowInvalidOperationException_SerializerCycleDetected(Int32 maxDepth)
   at System.Text.Json.JsonSerializer.Write(Utf8JsonWriter writer, Int32 originalWriterDepth, Int32 flushThreshold, JsonSerializerOptions options, WriteStack& state)
   at System.Text.Json.JsonSerializer.WriteAsyncCore(Stream utf8Json, Object value, Type inputType, JsonSerializerOptions options, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (92, N'TestManagement1', N'2020/02/10 09:36:33.253', N'Warn', N'Role 9116962e-4c20-45c1-8061-9fbef73d9f38 validation failed: DuplicateRoleName.', N'Microsoft.AspNetCore.Identity.RoleManager', N'Microsoft.AspNetCore.Identity.RoleManager`1+<ValidateRoleAsync>d__45.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (93, N'TestManagement1', N'2020/02/10 16:38:16.587', N'Error', N'Stopped program because of exception', N'TestManagement1.Program', N'TestManagement1.Program.Main(C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Program.cs:21)', N'System.AggregateException: Some services are not able to be constructed (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.)
 ---> System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)
   --- End of inner exception stack trace ---
 ---> (Inner Exception #1) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---

 ---> (Inner Exception #2) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---

 ---> (Inner Exception #3) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---
', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (94, N'TestManagement1', N'2020/02/10 18:37:33.438', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (95, N'TestManagement1', N'2020/02/10 18:43:03.449', N'Error', N'Stopped program because of exception', N'TestManagement1.Program', N'TestManagement1.Program.Main(C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Program.cs:21)', N'System.AggregateException: Some services are not able to be constructed (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.) (Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.)
 ---> System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IUser Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.UserRepository'': Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''Microsoft.AspNetCore.Identity.UserManager`1[TestManagement1.Model.TblUser]'' from singleton ''TestManagement1.RepositoryInterface.IUser''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)
   --- End of inner exception stack trace ---
 ---> (Inner Exception #1) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICandidate Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CandidateRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICandidate''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---

 ---> (Inner Exception #2) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.ICategory Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.CategoryRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.ICategory''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---

 ---> (Inner Exception #3) System.InvalidOperationException: Error while validating the service descriptor ''ServiceType: TestManagement1.RepositoryInterface.IExperienceLevel Lifetime: Singleton ImplementationType: TestManagement1.SqlRepository.ExperienceLevelRepository'': Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.
 ---> System.InvalidOperationException: Cannot consume scoped service ''TestManagement1.Model.TestManagementContext'' from singleton ''TestManagement1.RepositoryInterface.IExperienceLevel''.
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitScopeCache(ServiceCallSite scopedCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitConstructor(ConstructorCallSite constructorCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSiteMain(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.VisitRootCache(ServiceCallSite singletonCallSite, CallSiteValidatorState state)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteVisitor`2.VisitCallSite(ServiceCallSite callSite, TArgument argument)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.CallSiteValidator.ValidateCallSite(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider.Microsoft.Extensions.DependencyInjection.ServiceLookup.IServiceProviderEngineCallback.OnCreate(ServiceCallSite callSite)
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   --- End of inner exception stack trace ---
   at Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngine.ValidateService(ServiceDescriptor descriptor)
   at Microsoft.Extensions.DependencyInjection.ServiceProvider..ctor(IEnumerable`1 serviceDescriptors, ServiceProviderOptions options)<---
', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (96, N'TestManagement1', N'2020/02/10 18:59:39.205', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (97, N'TestManagement1', N'2020/02/10 19:05:02.217', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (98, N'TestManagement1', N'2020/02/10 19:40:51.519', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (99, N'TestManagement1', N'2020/02/10 19:43:55.257', N'Warn', N'User a8e75917-f549-4752-8a30-29db63ee43f6 validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (100, N'TestManagement1', N'2020/02/10 19:44:42.770', N'Warn', N'User 23ad488a-28ad-4cd5-af03-fa0f2519f785 validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (101, N'TestManagement1', N'2020/02/10 19:51:50.024', N'Warn', N'User d1452ab7-79d8-48a0-8c1d-c71cf3a0ef5a validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (102, N'TestManagement1', N'2020/02/10 19:55:38.383', N'Warn', N'User 16b4504c-41ad-45ed-bbb3-7875f92f389d validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (103, N'TestManagement1', N'2020/02/10 19:57:36.792', N'Warn', N'User 4b9659c9-9fd8-4271-ad86-c30970ee73f8 validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (104, N'TestManagement1', N'2020/02/11 15:14:50.859', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.Text.Json.JsonException: A possible object cycle was detected which is not supported. This can either be due to a cycle or if the object depth is larger than the maximum allowed depth of 32.
   at System.Text.Json.ThrowHelper.ThrowInvalidOperationException_SerializerCycleDetected(Int32 maxDepth)
   at System.Text.Json.JsonSerializer.Write(Utf8JsonWriter writer, Int32 originalWriterDepth, Int32 flushThreshold, JsonSerializerOptions options, WriteStack& state)
   at System.Text.Json.JsonSerializer.WriteAsyncCore(Stream utf8Json, Object value, Type inputType, JsonSerializerOptions options, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeResultAsync>g__Logged|21_0(ResourceInvoker invoker, IActionResult result)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (105, N'TestManagement1', N'2020/02/11 15:15:57.276', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.Text.Json.JsonException: A possible object cycle was detected which is not supported. This can either be due to a cycle or if the object depth is larger than the maximum allowed depth of 32.
   at System.Text.Json.ThrowHelper.ThrowInvalidOperationException_SerializerCycleDetected(Int32 maxDepth)
   at System.Text.Json.JsonSerializer.Write(Utf8JsonWriter writer, Int32 originalWriterDepth, Int32 flushThreshold, JsonSerializerOptions options, WriteStack& state)
   at System.Text.Json.JsonSerializer.WriteAsyncCore(Stream utf8Json, Object value, Type inputType, JsonSerializerOptions options, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeResultAsync>g__Logged|21_0(ResourceInvoker invoker, IActionResult result)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (106, N'TestManagement1', N'2020/02/11 15:17:22.165', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (107, N'TestManagement1', N'2020/02/11 15:17:22.582', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.Text.Json.JsonException: A possible object cycle was detected which is not supported. This can either be due to a cycle or if the object depth is larger than the maximum allowed depth of 32.
   at System.Text.Json.ThrowHelper.ThrowInvalidOperationException_SerializerCycleDetected(Int32 maxDepth)
   at System.Text.Json.JsonSerializer.Write(Utf8JsonWriter writer, Int32 originalWriterDepth, Int32 flushThreshold, JsonSerializerOptions options, WriteStack& state)
   at System.Text.Json.JsonSerializer.WriteAsyncCore(Stream utf8Json, Object value, Type inputType, JsonSerializerOptions options, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonOutputFormatter.WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (108, N'TestManagement1', N'2020/02/11 15:23:50.240', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (109, N'TestManagement1', N'2020/02/11 15:32:08.689', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (110, N'TestManagement1', N'2020/02/11 16:30:33.331', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (111, N'TestManagement1', N'2020/02/11 16:30:34.217', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (112, N'TestManagement1', N'2020/02/11 16:39:18.320', N'Warn', N'Invalid password for user 37476ed8-c025-478c-a1b0-5b6987f0fbce.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<CheckPasswordAsync>d__87.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (113, N'TestManagement1', N'2020/02/12 09:37:37.151', N'Error', N'Error in Weather ControllerSystem.DivideByZeroException: Attempted to divide by zero.
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 50', N'TestManagement1.Controllers.WeatherForecastController', N'TestManagement1.Controllers.WeatherForecastController.Get(C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:50)', N'', N'ObjectMethodExecutor.Execute => <no type>.lambda_method => WeatherForecastController.Get')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (114, N'TestManagement1', N'2020/02/12 09:41:01.782', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.DivideByZeroException: Attempted to divide by zero.
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 54
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (115, N'TestManagement1', N'2020/02/12 15:13:38.200', N'Error', N'Failed executing DbCommand (156ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (116, N'TestManagement1', N'2020/02/12 15:13:38.308', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (117, N'TestManagement1', N'2020/02/12 15:14:47.100', N'Error', N'Failed executing DbCommand (6ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (118, N'TestManagement1', N'2020/02/12 15:14:47.119', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (119, N'TestManagement1', N'2020/02/12 15:15:22.597', N'Error', N'Failed executing DbCommand (2ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (120, N'TestManagement1', N'2020/02/12 15:15:22.597', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (121, N'TestManagement1', N'2020/02/12 15:15:29.688', N'Error', N'Failed executing DbCommand (10ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (122, N'TestManagement1', N'2020/02/12 15:15:29.688', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:74f4b414-8cd8-4e53-ba1a-8ec507d45a4c
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (123, N'TestManagement1', N'2020/02/12 15:15:56.058', N'Error', N'Failed executing DbCommand (41ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (124, N'TestManagement1', N'2020/02/12 15:15:56.126', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:87143dd0-f98b-4fdb-9183-ff06d3b48cbf
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:87143dd0-f98b-4fdb-9183-ff06d3b48cbf
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (125, N'TestManagement1', N'2020/02/12 15:19:35.994', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (126, N'TestManagement1', N'2020/02/12 15:19:36.061', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:201ad4c3-cdef-4e70-8696-03e8f4480468
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:201ad4c3-cdef-4e70-8696-03e8f4480468
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (127, N'TestManagement1', N'2020/02/12 15:21:36.952', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (128, N'TestManagement1', N'2020/02/12 15:21:37.020', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:4d4fc55d-f041-44a8-a254-62ba3577410e
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:4d4fc55d-f041-44a8-a254-62ba3577410e
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (129, N'TestManagement1', N'2020/02/12 15:22:20.183', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (130, N'TestManagement1', N'2020/02/12 15:22:20.284', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:962ee4b5-821f-48df-94d7-e2a05da2ed48
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:962ee4b5-821f-48df-94d7-e2a05da2ed48
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (131, N'TestManagement1', N'2020/02/12 15:22:22.331', N'Error', N'Failed executing DbCommand (1ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (132, N'TestManagement1', N'2020/02/12 15:22:22.331', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:962ee4b5-821f-48df-94d7-e2a05da2ed48
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:962ee4b5-821f-48df-94d7-e2a05da2ed48
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (133, N'TestManagement1', N'2020/02/12 15:22:44.835', N'Error', N'Failed executing DbCommand (5ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (134, N'TestManagement1', N'2020/02/12 15:22:44.940', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:9c4f1a09-d834-486e-9bbf-9127d47bd0df
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:9c4f1a09-d834-486e-9bbf-9127d47bd0df
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (135, N'TestManagement1', N'2020/02/12 15:23:01.113', N'Error', N'Failed executing DbCommand (5ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (136, N'TestManagement1', N'2020/02/12 15:23:01.182', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:327957bd-3caf-40e1-9cb3-0e0253c9a83a
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:327957bd-3caf-40e1-9cb3-0e0253c9a83a
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (137, N'TestManagement1', N'2020/02/12 15:24:48.170', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (138, N'TestManagement1', N'2020/02/12 15:24:48.268', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:c28bcfcf-0d5e-47f6-a035-2e9db5ff9d0a
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:c28bcfcf-0d5e-47f6-a035-2e9db5ff9d0a
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (139, N'TestManagement1', N'2020/02/12 15:29:34.151', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (140, N'TestManagement1', N'2020/02/12 15:29:34.284', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:4e994024-ddae-4281-b50c-49b4be683e80
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:4e994024-ddae-4281-b50c-49b4be683e80
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (141, N'TestManagement1', N'2020/02/12 15:29:58.601', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (142, N'TestManagement1', N'2020/02/12 15:29:58.684', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:8a51562a-dca8-4eec-be40-cacc33585912
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:8a51562a-dca8-4eec-be40-cacc33585912
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (143, N'TestManagement1', N'2020/02/12 15:30:00.460', N'Error', N'Failed executing DbCommand (1ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (144, N'TestManagement1', N'2020/02/12 15:30:00.460', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:8a51562a-dca8-4eec-be40-cacc33585912
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:8a51562a-dca8-4eec-be40-cacc33585912
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (145, N'TestManagement1', N'2020/02/12 15:32:32.595', N'Error', N'Failed executing DbCommand (9ms) [Parameters=[@p20=''?'' (Size = 450), @p0=''?'' (DbType = Int32), @p1=''?'' (Size = 4000), @p21=''?'' (Size = 4000), @p2=''?'' (Size = 4000), @p3=''?'' (Size = 256), @p4=''?'' (DbType = Boolean), @p5=''?'' (DbType = Boolean), @p6=''?'' (DbType = DateTimeOffset), @p7=''?'' (Size = 256), @p8=''?'' (Size = 256), @p9=''?'' (Size = 4000), @p10=''?'' (Size = 4000), @p11=''?'' (DbType = Boolean), @p12=''?'' (Size = 4000), @p13=''?'' (DbType = Boolean), @p14=''?'' (Size = 256), @p15=''?'' (DbType = Int32), @p16=''?'' (DbType = DateTime2), @p17=''?'' (DbType = Boolean), @p18=''?'' (Size = -1), @p19=''?'' (DbType = Int32)], CommandType=''Text'', CommandTimeout=''30'']
SET NOCOUNT ON;
UPDATE [AspNetUsers] SET [AccessFailedCount] = @p0, [ConcurrencyStamp] = @p1, [Discriminator] = @p2, [Email] = @p3, [EmailConfirmed] = @p4, [LockoutEnabled] = @p5, [LockoutEnd] = @p6, [NormalizedEmail] = @p7, [NormalizedUserName] = @p8, [PasswordHash] = @p9, [PhoneNumber] = @p10, [PhoneNumberConfirmed] = @p11, [SecurityStamp] = @p12, [TwoFactorEnabled] = @p13, [UserName] = @p14, [CreatedBy] = @p15, [CreatedDate] = @p16, [IsActive] = @p17, [JwtToken] = @p18, [RoleId] = @p19
WHERE [Id] = @p20 AND [ConcurrencyStamp] = @p21;
SELECT @@ROWCOUNT;', N'Microsoft.EntityFrameworkCore.Database.Command', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`6.Log', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (146, N'TestManagement1', N'2020/02/12 15:32:32.692', N'Error', N'An exception occurred in the database while saving changes for context type ''TestManagement1.Model.TestManagementContext''.
Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:c3b482dd-6be4-4b19-960d-a399ae0e9e69
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', N'Microsoft.EntityFrameworkCore.Update', N'Microsoft.EntityFrameworkCore.Diagnostics.EventDefinition`3.Log', N'Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details.
 ---> Microsoft.Data.SqlClient.SqlException (0x80131904): String or binary data would be truncated.
The statement has been terminated.
   at Microsoft.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__164_0(Task`1 result)
   at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()
   at System.Threading.Tasks.Task.<>c.<.cctor>b__274_0(Object obj)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread)
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReaderAsync(RelationalCommandParameterObject parameterObject, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
ClientConnectionId:c3b482dd-6be4-4b19-960d-a399ae0e9e69
Error Number:8152,State:10,Class:16
   --- End of inner exception stack trace ---
   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.ExecuteAsync(IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.ExecuteAsync(IEnumerable`1 commandBatches, IRelationalConnection connection, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(IList`1 entriesToSave, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChangesAsync(DbContext _, Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.ExecuteAsync[TState,TResult](TState state, Func`4 operation, Func`4 verifySucceeded, CancellationToken cancellationToken)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChangesAsync(Boolean acceptAllChangesOnSuccess, CancellationToken cancellationToken)', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (147, N'TestManagement1', N'2020/02/13 18:29:45.836', N'Warn', N'User de2eccc7-880b-41aa-aae4-9d1a12b29d0a validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (148, N'TestManagement1', N'2020/02/14 14:53:21.139', N'Warn', N'User 3ca1464d-1737-41ba-931d-7648d5714d47 validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (149, N'TestManagement1', N'2020/02/14 14:53:25.400', N'Warn', N'User 1fb51a4a-5656-4c26-874f-c32de8826fee validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (150, N'TestManagement1', N'2020/02/14 14:53:26.889', N'Warn', N'User d0fe4636-9139-41d4-949b-92d5a757db23 validation failed: DuplicateUserName.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1+<ValidateUserAsync>d__173.MoveNext', N'', NULL)
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (151, N'TestManagement1', N'2020/02/21 11:40:49.851', N'Error', N'Error in Weather ControllerSystem.DivideByZeroException: Attempted to divide by zero.
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 50', N'TestManagement1.Controllers.WeatherForecastController', N'TestManagement1.Controllers.WeatherForecastController.Get(C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:50)', N'', N'ObjectMethodExecutor.Execute => <no type>.lambda_method => WeatherForecastController.Get')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (152, N'TestManagement1', N'2020/02/26 14:32:18.650', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagementCore.Email_Services.EmailSender'' while attempting to activate ''TestManagement1.Controllers.WeatherForecastController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (153, N'TestManagement1', N'2020/02/26 14:35:28.574', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagementCore.Email_Services.EmailSender'' while attempting to activate ''TestManagement1.Controllers.WeatherForecastController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (154, N'TestManagement1', N'2020/02/26 14:35:46.763', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'System.InvalidOperationException: Unable to resolve service for type ''TestManagementCore.Email_Services.EmailSender'' while attempting to activate ''TestManagement1.Controllers.WeatherForecastController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (155, N'TestManagement1', N'2020/02/26 14:36:56.572', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'MailKit.Security.AuthenticationException: AuthenticationInvalidCredentials: 5.7.8 Username and Password not accepted. Learn more at
5.7.8  https://support.google.com/mail/?p=BadCredentials p24sm2217488pff.69 - gsmtp
   at MailKit.Net.Smtp.SmtpClient.AuthenticateAsync(Encoding encoding, ICredentials credentials, Boolean doAsync, CancellationToken cancellationToken)
   at MailKit.Net.Smtp.SmtpClient.Authenticate(Encoding encoding, ICredentials credentials, CancellationToken cancellationToken)
   at MailKit.MailService.Authenticate(String userName, String password, CancellationToken cancellationToken)
   at TestManagementCore.Email_Services.EmailSender.Send(MimeMessage mailMessage) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 48
   at TestManagementCore.Email_Services.EmailSender.SendEmail(Message message) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 23
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 36
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (156, N'TestManagement1', N'2020/02/26 14:42:36.591', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'MailKit.Security.AuthenticationException: AuthenticationMechanismTooWeak: 5.7.9 Application-specific password required. Learn more at
5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor f13sm2383211pfk.64 - gsmtp
   at MailKit.Net.Smtp.SmtpClient.AuthenticateAsync(Encoding encoding, ICredentials credentials, Boolean doAsync, CancellationToken cancellationToken)
   at MailKit.Net.Smtp.SmtpClient.Authenticate(Encoding encoding, ICredentials credentials, CancellationToken cancellationToken)
   at MailKit.MailService.Authenticate(String userName, String password, CancellationToken cancellationToken)
   at TestManagementCore.Email_Services.EmailSender.Send(MimeMessage mailMessage) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 48
   at TestManagementCore.Email_Services.EmailSender.SendEmail(Message message) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 23
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 36
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
INSERT [dbo].[TblLogging] ([Id], [Application], [Logged], [Level], [Message], [Logger], [CallSite], [Exception], [FilePath]) VALUES (157, N'TestManagement1', N'2020/02/26 14:52:41.793', N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DiagnosticsLoggerExtensions.UnhandledException', N'MailKit.Security.AuthenticationException: AuthenticationInvalidCredentials: 5.7.8 Username and Password not accepted. Learn more at
5.7.8  https://support.google.com/mail/?p=BadCredentials 10sm2250607pfu.132 - gsmtp
   at MailKit.Net.Smtp.SmtpClient.AuthenticateAsync(Encoding encoding, ICredentials credentials, Boolean doAsync, CancellationToken cancellationToken)
   at MailKit.Net.Smtp.SmtpClient.Authenticate(Encoding encoding, ICredentials credentials, CancellationToken cancellationToken)
   at MailKit.MailService.Authenticate(String userName, String password, CancellationToken cancellationToken)
   at TestManagementCore.Email_Services.EmailSender.Send(MimeMessage mailMessage) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 48
   at TestManagementCore.Email_Services.EmailSender.SendEmail(Message message) in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Email Services\EmailSender.cs:line 23
   at TestManagement1.Controllers.WeatherForecastController.Get() in C:\Users\akasha.nasir\Desktop\TestSystem\TestManagement1\TestManagement1\Controllers\WeatherForecastController.cs:line 36
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location where exception was thrown ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|19_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)', N'AsyncMethodBuilderCore.Start => <Invoke>d__9.MoveNext => DiagnosticsLoggerExtensions.UnhandledException')
SET IDENTITY_INSERT [dbo].[TblLogging] OFF
SET IDENTITY_INSERT [dbo].[TblOption] ON 

INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (109, N'Inheritance', 0, 60, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (110, N'Encapsulation', 0, 60, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (111, N'Polymorphism', 0, 60, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (112, N'Compilation', 1, 60, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (113, N'Compile time polymorphism', 1, 61, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (114, N'Execution time polymorphism', 0, 61, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (115, N'Multiple polymorphism', 0, 61, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (116, N'Multilevel polymorphism', 0, 61, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (117, N'At run time', NULL, 62, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (118, N'At compile time', 1, 62, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (119, N'At coding time', NULL, 62, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (120, N' At execution time', NULL, 62, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (121, N'More than one method with same name but different method signature and different number or type of parameters', NULL, 63, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (122, N'More than one method with same name, same signature but different number of signature', NULL, 63, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (123, N'More than one method with same name, same signature, same number of parameters but different type', NULL, 63, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (124, N' More than one method with same name, same number of parameters and type but different signature', 1, 63, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (125, N'Polymorphism', NULL, 64, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (126, N'Encapsulation', NULL, 64, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (127, N'Abstraction', 1, 64, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (128, N'Inheritance', NULL, 64, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (129, N'Encapsulation', 1, 65, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (130, N'Inheritance', NULL, 65, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (131, N'Polymorphism', NULL, 65, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (132, N'Abstraction', NULL, 65, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (133, N'Aggregation', NULL, 66, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (134, N'Composition', NULL, 66, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (135, N'Encapsulation', NULL, 66, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (136, N'Association', 1, 66, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (137, N'ewrwerwer', 1, 67, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (138, N'OPTION1', 0, 68, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (139, N'OPTION2', 1, 68, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (140, N'OPTION3', 1, 68, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (141, N'OPTION1', 0, 69, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (142, N'OPTION2', 1, 69, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (143, N'OPTION3', 1, 69, CAST(N'2020-02-25T05:10:00.0000000' AS DateTime2), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (144, N'sda', 0, 70, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblOption] ([OptionId], [OptionDescription], [IsCorrect], [QuestionId], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (145, N'asdds', 1, 70, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblOption] OFF
SET IDENTITY_INSERT [dbo].[TblQuestion] ON 

INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (60, N' Which of the following is not OOPS concept in Java?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 2, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (61, N'Which of the following is a type of polymorphism in Java?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (62, N'When does method overloading is determined?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (63, N'When Overloading does not occur?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 2, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (64, N'Which concept of Java is a way of converting real world objects in terms of class?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (65, N'Which concept of Java is achieved by combining methods and attribute into a class?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 2, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (66, N'What is it called if an object has its own lifecycle and there is no owner?', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 2, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (67, N'werwer', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (68, N'afsdkafsdgfs', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 4, 1, N'eda4a25e-25b6-4815-96fe-e909bc89b481', CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 2, 21, N'3351c29f-5c30-4d70-b02e-58bb1b8e1a5c')
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (69, N'afsdkafsdgfs', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 4, 1, N'1ed10c5b-1058-444a-ae7f-adf6d284fc02', CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 2, 21, N'7e7b9bf4-a3a9-43a9-8ff1-6a5ee9f3e191')
INSERT [dbo].[TblQuestion] ([QuestionId], [Description], [Type], [Time], [Marks], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CategoryId], [ExperienceLevelId], [Roleid]) VALUES (70, N'sadds', N'ASP.NET', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 1, NULL, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), NULL, NULL, 20, 21, NULL)
SET IDENTITY_INSERT [dbo].[TblQuestion] OFF
SET IDENTITY_INSERT [dbo].[TblTest] ON 

INSERT [dbo].[TblTest] ([TestId], [CandidateId], [CategoryId], [ExpLevelId], [TestDate], [TestStatus], [TotalQuestion], [AttemptedQuestion], [Percentage], [CorrectAnswer], [WrongAnswer], [QuestionSkipped], [Duration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, 51, 20, 21, CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2), N'Fail', 5, 5, 20, 1, 4, 0, NULL, 1, NULL, CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblTest] OFF
SET IDENTITY_INSERT [dbo].[TblTestDetails] ON 

INSERT [dbo].[TblTestDetails] ([TestId], [QuestionId], [SelectedOptionId], [CorrectOptionId], [AttemptedInDuration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CandidateId]) VALUES (98, 62, N'117,118', N'118', NULL, NULL, NULL, NULL, NULL, NULL, 51)
INSERT [dbo].[TblTestDetails] ([TestId], [QuestionId], [SelectedOptionId], [CorrectOptionId], [AttemptedInDuration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CandidateId]) VALUES (99, 64, N'125', N'127', NULL, NULL, NULL, NULL, NULL, NULL, 51)
INSERT [dbo].[TblTestDetails] ([TestId], [QuestionId], [SelectedOptionId], [CorrectOptionId], [AttemptedInDuration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CandidateId]) VALUES (100, 61, N'113', N'113', NULL, NULL, NULL, NULL, NULL, NULL, 51)
INSERT [dbo].[TblTestDetails] ([TestId], [QuestionId], [SelectedOptionId], [CorrectOptionId], [AttemptedInDuration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CandidateId]) VALUES (101, 60, N'109', N'112', NULL, NULL, NULL, NULL, NULL, NULL, 51)
INSERT [dbo].[TblTestDetails] ([TestId], [QuestionId], [SelectedOptionId], [CorrectOptionId], [AttemptedInDuration], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [CandidateId]) VALUES (102, 63, N'121', N'124', NULL, NULL, NULL, NULL, NULL, NULL, 51)
SET IDENTITY_INSERT [dbo].[TblTestDetails] OFF
SET IDENTITY_INSERT [dbo].[TblVerifierCategoryAndRole] ON 

INSERT [dbo].[TblVerifierCategoryAndRole] ([Id], [UserId], [CategoryId], [RoleId]) VALUES (3, N'eda4a25e-25b6-4815-96fe-e909bc89b481', N'20', N'3351c29f-5c30-4d70-b02e-58bb1b8e1a5c')
SET IDENTITY_INSERT [dbo].[TblVerifierCategoryAndRole] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/26/2020 4:01:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblTestDetails] ADD  DEFAULT ((0)) FOR [CandidateId]
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
/****** Object:  StoredProcedure [dbo].[RetriveQuestionAndOptionById]    Script Date: 2/26/2020 4:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[RetriveQuestionAndOptionById] 
	-- Add the parameters for the stored procedure here
	@QuestionId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select QuestionId,OptionDescription,IsCorrect from TblOption where QuestionId = @QuestionId
END
GO
USE [master]
GO
ALTER DATABASE [TestManagementSystem1] SET  READ_WRITE 
GO
