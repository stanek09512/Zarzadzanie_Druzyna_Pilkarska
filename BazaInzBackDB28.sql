USE [master]
GO
/****** Object:  Database [InzBackDB28]    Script Date: 01.03.2019 20:45:56 ******/
CREATE DATABASE [InzBackDB28]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InzBackDB28', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InzBackDB28.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InzBackDB28_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InzBackDB28_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InzBackDB28] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InzBackDB28].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InzBackDB28] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InzBackDB28] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InzBackDB28] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InzBackDB28] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InzBackDB28] SET ARITHABORT OFF 
GO
ALTER DATABASE [InzBackDB28] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [InzBackDB28] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InzBackDB28] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InzBackDB28] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InzBackDB28] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InzBackDB28] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InzBackDB28] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InzBackDB28] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InzBackDB28] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InzBackDB28] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InzBackDB28] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InzBackDB28] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InzBackDB28] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InzBackDB28] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InzBackDB28] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InzBackDB28] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [InzBackDB28] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InzBackDB28] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InzBackDB28] SET  MULTI_USER 
GO
ALTER DATABASE [InzBackDB28] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InzBackDB28] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InzBackDB28] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InzBackDB28] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InzBackDB28] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InzBackDB28]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01.03.2019 20:45:56 ******/
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
/****** Object:  Table [dbo].[Matches]    Script Date: 01.03.2019 20:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OpponentTeam] [nvarchar](max) NULL,
	[MatchDate] [datetime2](7) NULL,
	[Place] [nvarchar](max) NULL,
	[ScoreFirstTeam] [int] NULL,
	[ScoreSecondTeam] [int] NULL,
	[CreatDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchhPlayer]    Script Date: 01.03.2019 20:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchhPlayer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Goals] [int] NULL,
	[Assists] [int] NULL,
	[YellowCard] [int] NULL,
	[RedCard] [int] NULL,
	[PlayInMatch] [bit] NULL,
	[MatchhId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
 CONSTRAINT [PK_MatchhPlayer] PRIMARY KEY CLUSTERED 
(
	[MatchhId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Players]    Script Date: 01.03.2019 20:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlrStats]    Script Date: 01.03.2019 20:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlrStats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Matches] [int] NULL,
	[Goals] [int] NULL,
	[Assists] [int] NULL,
	[YellowCard] [int] NULL,
	[RedCard] [int] NULL,
	[PlayerId] [int] NOT NULL,
 CONSTRAINT [PK_PlrStats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 01.03.2019 20:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190110125113_fm', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190111172254_addRoleToUser', N'2.1.4-rtm-31024')
SET IDENTITY_INSERT [dbo].[Matches] ON 

INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (4, N'dsssadsad', CAST(N'2019-01-26 12:03:00.0000000' AS DateTime2), N'asdadssd', 0, 0, CAST(N'2019-01-11 23:16:59.5829816' AS DateTime2), CAST(N'2019-01-11 23:28:48.0196025' AS DateTime2), 8)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (5, N'asdsa', CAST(N'2019-01-18 21:03:00.0000000' AS DateTime2), N'asdsda', NULL, NULL, CAST(N'2019-01-11 23:18:56.7706313' AS DateTime2), CAST(N'2019-01-11 23:18:56.7706327' AS DateTime2), 8)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (6, N'sdsa', CAST(N'2019-01-26 12:03:00.0000000' AS DateTime2), N'saddsas', 0, 0, CAST(N'2019-01-11 23:19:55.3156552' AS DateTime2), CAST(N'2019-01-11 23:29:41.6263892' AS DateTime2), 8)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (7, N'dsd', CAST(N'2019-01-26 12:03:00.0000000' AS DateTime2), N'saddas', NULL, NULL, CAST(N'2019-01-11 23:21:56.0171512' AS DateTime2), CAST(N'2019-01-11 23:21:56.0171516' AS DateTime2), 8)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (8, N'dsfds', CAST(N'2019-01-02 12:03:00.0000000' AS DateTime2), N'asdsdasda', 2, 0, CAST(N'2019-01-11 23:30:02.5473793' AS DateTime2), CAST(N'2019-01-11 23:30:14.1770463' AS DateTime2), 8)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (9, N'Iskra Braniewo', CAST(N'2019-01-20 16:45:00.0000000' AS DateTime2), N'Stadion miejski', NULL, NULL, CAST(N'2019-01-12 16:00:21.2860890' AS DateTime2), CAST(N'2019-01-12 16:00:21.2861934' AS DateTime2), 9)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (10, N'Polonia Warszawa', CAST(N'2019-01-11 12:00:00.0000000' AS DateTime2), N'Polonia Stadium', 0, 2, CAST(N'2019-01-12 16:01:12.6432618' AS DateTime2), CAST(N'2019-01-12 16:01:26.4551949' AS DateTime2), 9)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (11, N'Portugalia', CAST(N'2018-11-20 20:45:00.0000000' AS DateTime2), N'Estádio D. Afonso Henriques', 0, 0, CAST(N'2019-01-12 21:28:31.8580635' AS DateTime2), CAST(N'2019-01-12 21:54:41.7666386' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (12, N'Włochy', CAST(N'2018-10-14 20:45:00.0000000' AS DateTime2), N'PGE Narodowy', 0, 0, CAST(N'2019-01-12 21:29:54.0396834' AS DateTime2), CAST(N'2019-01-12 21:39:13.4942460' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (13, N'Portugalia', CAST(N'2018-10-11 20:45:00.0000000' AS DateTime2), N'PGE Narodowy', 2, 0, CAST(N'2019-01-12 21:30:56.8236138' AS DateTime2), CAST(N'2019-01-12 21:41:12.2385925' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (14, N'Austria', CAST(N'2019-03-21 20:45:00.0000000' AS DateTime2), N'Ernst-Happel-Stadion', 0, 0, CAST(N'2019-01-12 21:32:02.3561507' AS DateTime2), CAST(N'2019-01-17 18:16:32.0196870' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (15, N'Łotwa', CAST(N'2019-03-24 20:45:00.0000000' AS DateTime2), N'PGE Narodowy', NULL, NULL, CAST(N'2019-01-12 21:32:55.4130326' AS DateTime2), CAST(N'2019-01-12 21:32:55.4130336' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (16, N'Macedonia', CAST(N'2019-06-07 20:45:00.0000000' AS DateTime2), N'Nacionalna Arena Filip II Makedonski', NULL, NULL, CAST(N'2019-01-12 21:33:45.7720378' AS DateTime2), CAST(N'2019-01-12 21:33:45.7720383' AS DateTime2), 3)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (18, N'fafdsdsff', CAST(N'2019-01-17 12:03:00.0000000' AS DateTime2), N'xzfzfddfd', NULL, NULL, CAST(N'2019-01-16 22:46:52.3852245' AS DateTime2), CAST(N'2019-01-16 22:46:52.3854575' AS DateTime2), 13)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (19, N'pierwszadruzyna', CAST(N'2019-01-17 12:03:00.0000000' AS DateTime2), N'xzcxzczzzzz', 0, 0, CAST(N'2019-01-16 23:40:22.0267717' AS DateTime2), CAST(N'2019-01-16 23:48:35.0310773' AS DateTime2), 14)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (20, N'drugadruzyna', CAST(N'2019-01-08 12:03:00.0000000' AS DateTime2), N'xzcxxc', NULL, NULL, CAST(N'2019-01-16 23:41:58.5049016' AS DateTime2), CAST(N'2019-01-16 23:41:58.5049021' AS DateTime2), 14)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (22, N'zzzzzzz', CAST(N'2019-01-16 21:03:00.0000000' AS DateTime2), N'zzzzzzzzzzz', NULL, NULL, CAST(N'2019-01-17 11:09:12.3867301' AS DateTime2), CAST(N'2019-01-17 11:09:12.3867306' AS DateTime2), 14)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (24, N'asddsa', CAST(N'2019-01-19 21:03:00.0000000' AS DateTime2), N'asddsasad', NULL, NULL, CAST(N'2019-01-17 13:18:49.0644683' AS DateTime2), CAST(N'2019-01-17 13:18:49.0647061' AS DateTime2), 14)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (25, N'rrrrrrrrrrrr', CAST(N'2019-01-18 12:03:00.0000000' AS DateTime2), N'rrrrrrrrrrrrrrr', NULL, NULL, CAST(N'2019-01-17 13:22:06.4835549' AS DateTime2), CAST(N'2019-01-17 13:22:06.4836621' AS DateTime2), 14)
INSERT [dbo].[Matches] ([Id], [OpponentTeam], [MatchDate], [Place], [ScoreFirstTeam], [ScoreSecondTeam], [CreatDate], [UpdateDate], [UserId]) VALUES (26, N'fdsfsd', CAST(N'2019-01-16 21:03:00.0000000' AS DateTime2), N'sasdasad', NULL, NULL, CAST(N'2019-01-17 13:34:38.8530288' AS DateTime2), CAST(N'2019-01-17 13:34:38.8531542' AS DateTime2), 14)
SET IDENTITY_INSERT [dbo].[Matches] OFF
SET IDENTITY_INSERT [dbo].[MatchhPlayer] ON 

INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (15, 0, 0, 0, 0, 0, 8, 6)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (14, 0, 0, 0, 0, 0, 8, 7)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (12, NULL, NULL, NULL, NULL, NULL, 8, 8)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (16, NULL, NULL, NULL, NULL, NULL, 9, 10)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (22, NULL, NULL, NULL, NULL, NULL, 9, 11)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (23, NULL, NULL, NULL, NULL, NULL, 9, 13)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (19, NULL, NULL, NULL, NULL, NULL, 9, 14)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (20, NULL, NULL, NULL, NULL, NULL, 9, 15)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (17, NULL, NULL, NULL, NULL, NULL, 9, 17)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (18, NULL, NULL, NULL, NULL, NULL, 9, 21)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (21, NULL, NULL, NULL, NULL, NULL, 9, 22)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (24, NULL, NULL, NULL, NULL, NULL, 10, 14)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (25, NULL, NULL, NULL, NULL, NULL, 10, 15)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (26, NULL, NULL, NULL, NULL, NULL, 10, 20)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (28, 1, 0, 0, 0, 1, 10, 22)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (142, 0, 0, 0, 0, 1, 11, 25)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (30, NULL, NULL, NULL, NULL, NULL, 11, 26)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (31, NULL, NULL, NULL, NULL, NULL, 11, 27)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (32, NULL, NULL, NULL, NULL, NULL, 11, 28)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (141, 0, 0, 0, 0, 1, 11, 29)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (34, NULL, NULL, NULL, NULL, NULL, 11, 30)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (35, NULL, NULL, NULL, NULL, NULL, 11, 31)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (140, 0, 0, 0, 0, 1, 11, 32)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (37, NULL, NULL, NULL, NULL, NULL, 11, 33)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (139, 0, 0, 0, 0, 1, 11, 34)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (138, 0, 0, 0, 0, 1, 11, 35)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (137, 0, 1, 0, 0, 1, 11, 36)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (136, 0, 0, 1, 0, 1, 11, 37)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (135, 0, 0, 0, 0, 1, 11, 38)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (134, 1, 0, 0, 0, 1, 11, 39)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (258, 5, 0, 0, 0, 1, 11, 40)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (45, NULL, NULL, NULL, NULL, NULL, 12, 23)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (261, 0, 0, 0, 0, 1, 12, 24)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (47, NULL, NULL, NULL, NULL, NULL, 12, 25)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (183, 0, 0, 1, 0, 1, 12, 26)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (184, 0, 0, 1, 0, 1, 12, 27)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (50, NULL, NULL, NULL, NULL, NULL, 12, 28)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (51, NULL, NULL, NULL, NULL, NULL, 12, 29)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (52, NULL, NULL, NULL, NULL, NULL, 12, 30)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (53, NULL, NULL, NULL, NULL, NULL, 12, 31)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (181, 0, 0, 0, 0, 1, 12, 32)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (180, 0, 0, 1, 0, 1, 12, 33)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (56, NULL, NULL, NULL, NULL, NULL, 12, 34)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (57, NULL, NULL, NULL, NULL, NULL, 12, 35)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (178, 0, 0, 0, 0, 1, 12, 36)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (238, 10, 0, 0, 0, 0, 12, 37)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (179, 0, 0, 0, 0, 1, 12, 38)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (177, 0, 0, 0, 0, 1, 12, 39)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (176, 0, 0, 0, 0, 1, 12, 40)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (63, NULL, NULL, NULL, NULL, NULL, 13, 23)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (64, NULL, NULL, NULL, NULL, NULL, 13, 24)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (228, 0, 0, 0, 0, 1, 13, 25)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (227, 0, 0, 0, 1, 1, 13, 26)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (67, NULL, NULL, NULL, NULL, NULL, 13, 27)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (229, 0, 0, 1, 0, 1, 13, 28)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (226, 0, 0, 1, 0, 1, 13, 29)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (70, NULL, NULL, NULL, NULL, NULL, 13, 30)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (71, NULL, NULL, NULL, NULL, NULL, 13, 31)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (72, NULL, NULL, NULL, NULL, NULL, 13, 32)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (73, NULL, NULL, NULL, NULL, NULL, 13, 33)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (225, 1, 0, 0, 0, 1, 13, 34)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (75, NULL, NULL, NULL, NULL, NULL, 13, 35)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (223, 0, 0, 0, 0, 1, 13, 36)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (224, 0, 0, 0, 0, 1, 13, 37)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (222, 0, 0, 0, 0, 1, 13, 38)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (79, NULL, NULL, NULL, NULL, NULL, 13, 39)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (237, 1, 0, 0, 0, 1, 13, 40)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (259, NULL, NULL, NULL, NULL, NULL, 14, 25)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (260, NULL, NULL, NULL, NULL, NULL, 14, 27)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (231, NULL, NULL, NULL, NULL, NULL, 14, 30)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (255, NULL, NULL, NULL, NULL, NULL, 14, 31)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (232, NULL, NULL, NULL, NULL, NULL, 14, 32)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (256, NULL, NULL, NULL, NULL, NULL, 14, 33)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (262, NULL, NULL, NULL, NULL, NULL, 14, 35)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (94, NULL, NULL, NULL, NULL, NULL, 14, 36)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (263, NULL, NULL, NULL, NULL, NULL, 14, 37)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (98, NULL, NULL, NULL, NULL, NULL, 14, 40)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (99, NULL, NULL, NULL, NULL, NULL, 15, 24)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (100, NULL, NULL, NULL, NULL, NULL, 15, 25)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (101, NULL, NULL, NULL, NULL, NULL, 15, 26)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (102, NULL, NULL, NULL, NULL, NULL, 15, 27)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (103, NULL, NULL, NULL, NULL, NULL, 15, 28)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (104, NULL, NULL, NULL, NULL, NULL, 15, 33)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (105, NULL, NULL, NULL, NULL, NULL, 15, 34)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (106, NULL, NULL, NULL, NULL, NULL, 15, 35)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (107, NULL, NULL, NULL, NULL, NULL, 15, 36)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (108, NULL, NULL, NULL, NULL, NULL, 15, 37)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (109, NULL, NULL, NULL, NULL, NULL, 15, 38)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (110, NULL, NULL, NULL, NULL, NULL, 15, 39)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (241, NULL, NULL, NULL, NULL, NULL, 22, 45)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (242, NULL, NULL, NULL, NULL, NULL, 22, 46)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (244, 1, 1, 1, 1, 1, 22, 47)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (248, NULL, NULL, NULL, NULL, NULL, 25, 45)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (249, NULL, NULL, NULL, NULL, NULL, 25, 46)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (250, NULL, NULL, NULL, NULL, NULL, 26, 45)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (254, 1, 1, 0, 0, 0, 26, 46)
INSERT [dbo].[MatchhPlayer] ([Id], [Goals], [Assists], [YellowCard], [RedCard], [PlayInMatch], [MatchhId], [PlayerId]) VALUES (253, 0, 0, 0, 0, 1, 26, 47)
SET IDENTITY_INSERT [dbo].[MatchhPlayer] OFF
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (6, N'dassadsad', N'sadsda', N'Bramkarz', 213, 8)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (7, N'dssda', N'asdsad', N'Pomocnik', 34, 8)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (8, N'sdffds', N'fsdfsd', N'Pomocnik', 65, 8)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (9, N'fggd', N'gd', N'Napastnik', 54, 8)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (10, N'Adam', N'Dzieńcioł', N'Bramkarz', 23, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (11, N'Marek', N'Pruchnicki', N'Napastnik', 24, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (12, N'Adam', N'Widzew', N'Obronca', 32, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (13, N'Patryk', N'Grzyb', N'Napastnik', 29, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (14, N'Robert', N'Zieliński', N'Pomocnik', 27, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (15, N'Adam', N'Kowalski', N'Pomocnik', 22, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (16, N'Miłosz', N'Nowak', N'Napastnik', 35, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (17, N'Łukasz', N'Fabian', N'Bramkarz', 30, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (18, N'Bartosz', N'Salmon', N'Obronca', 25, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (19, N'Mirosław', N'Grabowski', N'Obronca', 19, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (20, N'Patryk', N'Milczar', N'Pomocnik', 36, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (21, N'Łukasz', N'Gorgoń', N'Obronca', 34, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (22, N'Fabian', N'Mirosławski', N'Pomocnik', 20, 9)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (23, N'Wojciech', N'Szczęsny', N'Bramkarz', 28, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (24, N'Łukasz', N'Fabiański', N'Bramkarz', 33, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (25, N'Łukasz', N'Skorupski', N'Bramkarz', 27, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (26, N'Jan', N'Bednarek', N'Obronca', 22, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (27, N'Marcin', N'Kamiński', N'Obronca', 26, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (28, N'Thiago', N'Cionek', N'Obronca', 32, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (29, N'Tomasz', N'Kędziora', N'Obronca', 24, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (30, N'Kamil', N'Glik', N'Obronca', 29, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (31, N'Grzegorz', N'Krychowiak', N'Pomocnik', 28, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (32, N'Piotr', N'Zieliński', N'Pomocnik', 24, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (33, N'Mateusz', N'Klich', N'Pomocnik', 28, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (34, N'Jakub', N'Błaszczykowski', N'Pomocnik', 33, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (35, N'Damian', N'Szymański', N'Pomocnik', 23, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (36, N'Kamil', N'Grosicki', N'Pomocnik', 30, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (37, N'Przemysław', N'Frankowski', N'Pomocnik', 23, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (38, N'Robert', N'Lewandowski', N'Napastnik', 30, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (39, N'Arkadiusz', N'Milik', N'Napastnik', 24, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (40, N'Krzysztof', N'Piątek', N'Napastnik', 23, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (43, N'qqqqqq', N'qqqq', N'Bramkarz', 34, 13)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (45, N'aaaaaaaaaa', N'aaaaaaaaaa', N'Bramkarz', 123, 14)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (46, N'bbbbbb', N'bbbbbbbbbb', N'Bramkarz', 432, 14)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (47, N'sad', N'sad', N'Bramkarz', 112, 14)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (49, N'Adam', N'Przykładowy', N'Pomocnik', 22, 3)
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Position], [Age], [UserId]) VALUES (50, N'sadsadsa', N'saddssda', N'Bramkarz', 123, 3)
SET IDENTITY_INSERT [dbo].[Players] OFF
SET IDENTITY_INSERT [dbo].[PlrStats] ON 

INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (73, 0, 0, 0, 0, 0, 6)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (74, 0, 0, 0, 0, 0, 7)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (75, 0, 0, 0, 0, 0, 8)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (76, 0, 0, 0, 0, 0, 9)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (101, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (102, 0, 0, 0, 0, 0, 11)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (103, 0, 0, 0, 0, 0, 12)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (104, 0, 0, 0, 0, 0, 13)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (105, 0, 0, 0, 0, 0, 14)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (106, 0, 0, 0, 0, 0, 15)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (107, 0, 0, 0, 0, 0, 16)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (108, 0, 0, 0, 0, 0, 17)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (109, 0, 0, 0, 0, 0, 18)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (110, 0, 0, 0, 0, 0, 19)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (111, 0, 0, 0, 0, 0, 20)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (112, 0, 0, 0, 0, 0, 21)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (113, 1, 1, 0, 0, 0, 22)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (366, 0, 0, 0, 0, 0, 23)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (367, 1, 0, 0, 0, 0, 24)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (368, 2, 0, 0, 0, 0, 25)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (369, 2, 0, 0, 1, 1, 26)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (370, 1, 0, 0, 1, 0, 27)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (371, 1, 0, 0, 1, 0, 28)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (372, 2, 0, 0, 1, 0, 29)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (373, 0, 0, 0, 0, 0, 30)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (374, 0, 0, 0, 0, 0, 31)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (375, 2, 0, 0, 0, 0, 32)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (376, 1, 0, 0, 1, 0, 33)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (377, 2, 1, 0, 0, 0, 34)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (378, 1, 0, 0, 0, 0, 35)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (379, 3, 0, 1, 0, 0, 36)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (380, 2, 10, 0, 1, 0, 37)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (381, 3, 0, 0, 0, 0, 38)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (382, 2, 1, 0, 0, 0, 39)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (383, 3, 6, 0, 0, 0, 40)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (385, 0, 0, 0, 0, 0, 43)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (387, 0, 0, 0, 0, 0, 45)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (388, 0, 1, 1, 0, 0, 46)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (389, 2, 1, 1, 1, 1, 47)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (391, 0, 0, 0, 0, 0, 49)
INSERT [dbo].[PlrStats] ([Id], [Matches], [Goals], [Assists], [YellowCard], [RedCard], [PlayerId]) VALUES (392, 0, 0, 0, 0, 0, 50)
SET IDENTITY_INSERT [dbo].[PlrStats] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (3, N'administrator', 0x66420F9EC5E79C538B12C3EE52405674001300830233165AF9EBD708473FB9E3AEA40B7DB42564F234E0106B11BC3FE877A2C392BCFDDD061AA84199A20CACB3, 0xB6D4A3830307CE9214D5A46A1D20931C421415794593AEDEC9FFDE18D392CAD7ECC1A60E882A58AE88014C07B2E0BFF5F0138F4EF7B3301382569115E4EC5CB3C745752D094E40186669369BBB7901BB0289E617069B8912EAEAABB9D336E2CB07BF5FABA57A20D768560769EF16FC91B9EDA015D7F619FD185CE5799E0A4187, N'admin')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (5, N'radek1', 0xC86AEB1B8C3CD6CA15D95883AEFD8FF8D26709017E55879EAB20F2E4066818A30FE14FBC81E4EC0C1756E30B4152BF4661EAF80C124162161487C426EA076C4D, 0xF621B32638C60FD3896EE621D760218A3FD8E3E17102D43182910DF5B15D6DF44A899299E1E6BA4A838FADCBA19E1CB26E5F2A15982B8943F49488FAEBC6BBC977C9C559EDA6B84ECE190707A21218E240637E220D1C0AB791065B5BCDAA020DAB65F3C8A16B3F5C640F6167F8AE7B2692774D68EEB2C0621B020B44C2199E6C, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (7, N'nowy1', 0xE5D9346732E3B5A1DB2C983502C86F9E1D011E962CF5312C796340EE060FBD205F8D75F41342511A44CAA9CC844452F2002F965D86BA09F68B95D3B7D3666F0A, 0x04891CEDC4FCC35C32CD902DF51FA00B54EA3617DB63BFCFA640A39D6BD65F285C2B199203DCE5B7F6A5E0A026B2817EC1B2C3688C707BA8AF19EFB6178E369400B092B073C86AFB5FCED5C181718AB64B45F5101C090133FD43566933AAA88D326279318EC14C81356F7E9F1E9E3E85DB62FBD7F9665B3563A1E4154018E802, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (8, N'radekstanek', 0x78FA9CBEEA7BC467DDDCA23CEA425FBE3EABBACEEB0E520A2A0D272996631911013609FB10F6919683F07F85B12C85434C8BFB8A0F169DEEE9B68A4594AFCB08, 0x91A3F3F5FE844F5E940CF946C07A4D9FD792598BED4461ADE2D07B55509D9D7BED8975890BD584499774088BDF2517FD20FD8436B1733321D288FE788D9AECA0CF5B60D55720F8E6A9116F75E361D4D6DB52E9DA81653ABDF178675785A46CF1D49C9C25D9CC15EC90B076B5B9BFB369D60AAA918D9305D9CD9F9FFEF042B5DF, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (9, N'newuser', 0xB5FD370B088CE38F28EA2997B939EDC7B7CE98ECEA3E7E0B3D306E59584CD9E478E50F7DD34F3014CE0EDB7CA9462BCF332C31C61A298D387A83F59AC3256AF1, 0x54A3C5E5586FF6E3E382F0C4596F2A5E59F123583D457AF85F7BF41402ACE0EA3BE1637F329E34B1DD15406E801AA712DD15A637AAB93D8515120B9D9519CF04FFCD06F3C93C32C6C05E308462EB2046304B9D87A95F1291F1F83BC372112DC72D8FD92344BE765E716D43E6397C64CEDEC8C34079163982C12335088253212F, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (13, N'nowyja', 0xE991A3F4B32EB0DFD828CFEC9F5E83F7E779A565967D0B3AD48F3C9148BC5A3AD9BE2C9B2A384ED79D7D912ED2D446A76FF9C8E5E2F1739270AF5497D2688F7F, 0x59A5408FBDBA3D474D1696E13F837D5153806C489A394F5CA157E970D0D1FCD85EDACD879C064E15690162D605E6FD5E7F60DCE2A2CD56629EC6E4FB98AD4BD922416625B4DD0915C93F3AFE87B2C73563E21DEE93426F97661E4DF10A6D183FE965FDCE8337CCD0F729528D8E34BBD10502220E91069FE46D6F63BD9476D47A, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (14, N'nowyja1', 0x97C4D03CE7B4553AFAA9948491E8E0EC4AD5A3222C55EEC5AFE392158E534D70F67D2A73A5B6CAD55F8DF0EBE728A60EF5570942E1D84B487696D1555BAF8E23, 0x88998FB2B8E41B7478A02B9E2FB283227F09F99E6880B37F13ADD81B3D9B414CF10789BA9776BE390C306A36786C4E03067A7278DDFA18FCBA0F5E50C20162CC4807F8A33123687F2F46BCB856F8E75576870BD283D27B7F207A80702A4089A25EC47845B0EDB768DB849AE846087A5AB84E7E3A97D682EFBEA89148C2261274, N'guest')
INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt], [Role]) VALUES (15, N'nowyja2', 0xCEAD9E227D039325458062245A67EF5280C0632A7233CB8467C28B6C60B7DE5BDFC66742D06DB12C1221D24A639556CE6C346DB9EB133F31D9C63AB33CB7F026, 0x449AD9447F0C9F8BED4ACA684E2134E608A01608BE0537A490B2588ADC96C063650EC060D7DBF0D4111C983F1F674356554C8475FA0E7959B858AFB60A58CAA712214939BEB5C597C2FF491A07DC0308B63AABF5AC58D0B50EF4E5826DAFEFE95428C94746B61F5CBCFD2776F5A2006479B5F24FE47F630F3E2A23889763414A, N'guest')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_Matches_UserId]    Script Date: 01.03.2019 20:45:56 ******/
CREATE NONCLUSTERED INDEX [IX_Matches_UserId] ON [dbo].[Matches]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AK_MatchhPlayer_Id_MatchhId_PlayerId]    Script Date: 01.03.2019 20:45:56 ******/
ALTER TABLE [dbo].[MatchhPlayer] ADD  CONSTRAINT [AK_MatchhPlayer_Id_MatchhId_PlayerId] UNIQUE NONCLUSTERED 
(
	[Id] ASC,
	[MatchhId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MatchhPlayer_PlayerId]    Script Date: 01.03.2019 20:45:56 ******/
CREATE NONCLUSTERED INDEX [IX_MatchhPlayer_PlayerId] ON [dbo].[MatchhPlayer]
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Players_UserId]    Script Date: 01.03.2019 20:45:56 ******/
CREATE NONCLUSTERED INDEX [IX_Players_UserId] ON [dbo].[Players]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AK_PlrStats_Id_PlayerId]    Script Date: 01.03.2019 20:45:56 ******/
ALTER TABLE [dbo].[PlrStats] ADD  CONSTRAINT [AK_PlrStats_Id_PlayerId] UNIQUE NONCLUSTERED 
(
	[Id] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlrStats_PlayerId]    Script Date: 01.03.2019 20:45:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlrStats_PlayerId] ON [dbo].[PlrStats]
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Users_UserId]
GO
ALTER TABLE [dbo].[MatchhPlayer]  WITH CHECK ADD  CONSTRAINT [FK_MatchhPlayer_Matches_MatchhId] FOREIGN KEY([MatchhId])
REFERENCES [dbo].[Matches] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MatchhPlayer] CHECK CONSTRAINT [FK_MatchhPlayer_Matches_MatchhId]
GO
ALTER TABLE [dbo].[MatchhPlayer]  WITH CHECK ADD  CONSTRAINT [FK_MatchhPlayer_Players_PlayerId] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MatchhPlayer] CHECK CONSTRAINT [FK_MatchhPlayer_Players_PlayerId]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Users_UserId]
GO
ALTER TABLE [dbo].[PlrStats]  WITH CHECK ADD  CONSTRAINT [FK_PlrStats_Players_PlayerId] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlrStats] CHECK CONSTRAINT [FK_PlrStats_Players_PlayerId]
GO
USE [master]
GO
ALTER DATABASE [InzBackDB28] SET  READ_WRITE 
GO
