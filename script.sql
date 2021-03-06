USE [master]
GO
/****** Object:  Database [studiocomplete]    Script Date: 04/12/2015 09:07:21 ******/
CREATE DATABASE [studiocomplete] ON  PRIMARY 
( NAME = N'studiocomplete', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\studiocomplete.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'studiocomplete_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\studiocomplete_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [studiocomplete] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [studiocomplete].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [studiocomplete] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [studiocomplete] SET ANSI_NULLS OFF
GO
ALTER DATABASE [studiocomplete] SET ANSI_PADDING OFF
GO
ALTER DATABASE [studiocomplete] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [studiocomplete] SET ARITHABORT OFF
GO
ALTER DATABASE [studiocomplete] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [studiocomplete] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [studiocomplete] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [studiocomplete] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [studiocomplete] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [studiocomplete] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [studiocomplete] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [studiocomplete] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [studiocomplete] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [studiocomplete] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [studiocomplete] SET  DISABLE_BROKER
GO
ALTER DATABASE [studiocomplete] SET AUTO_UPDATE_STATISTICS_ASYNC ON
GO
ALTER DATABASE [studiocomplete] SET DATE_CORRELATION_OPTIMIZATION ON
GO
ALTER DATABASE [studiocomplete] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [studiocomplete] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [studiocomplete] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [studiocomplete] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [studiocomplete] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [studiocomplete] SET  READ_WRITE
GO
ALTER DATABASE [studiocomplete] SET RECOVERY SIMPLE
GO
ALTER DATABASE [studiocomplete] SET  MULTI_USER
GO
ALTER DATABASE [studiocomplete] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [studiocomplete] SET DB_CHAINING OFF
GO
USE [studiocomplete]
GO
/****** Object:  Table [dbo].[eventtype]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventtype](
	[etypeid] [int] IDENTITY(1,1) NOT NULL,
	[eventname] [nvarchar](50) NULL,
	[eventimage] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[insertdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_eventtype] PRIMARY KEY CLUSTERED 
(
	[etypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[eventtype] ON
INSERT [dbo].[eventtype] ([etypeid], [eventname], [eventimage], [description], [insertdate], [updatedate], [isactive]) VALUES (1, N'social', N'Tulips.jpg', N'abc', CAST(0x0000000100000000 AS DateTime), CAST(0x000007DB00000000 AS DateTime), 1)
INSERT [dbo].[eventtype] ([etypeid], [eventname], [eventimage], [description], [insertdate], [updatedate], [isactive]) VALUES (2, N'corporate', N'Desert.jpg', N'abc', CAST(0x0000000100000000 AS DateTime), CAST(0x000007DB00000000 AS DateTime), 1)
INSERT [dbo].[eventtype] ([etypeid], [eventname], [eventimage], [description], [insertdate], [updatedate], [isactive]) VALUES (3, N'family', N'Tulips.jpg', N'abc', CAST(0x0000000100000000 AS DateTime), CAST(0x000007DB00000000 AS DateTime), 1)
INSERT [dbo].[eventtype] ([etypeid], [eventname], [eventimage], [description], [insertdate], [updatedate], [isactive]) VALUES (4, N'business', N'Tulips.jpg', N'abc', CAST(0x0000000100000000 AS DateTime), CAST(0x000007DB00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[eventtype] OFF
/****** Object:  Table [dbo].[eventsubtype]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventsubtype](
	[stypeid] [int] IDENTITY(1,1) NOT NULL,
	[etypeid] [int] NULL,
	[stypename] [varchar](50) NULL,
	[stypeimage] [nvarchar](max) NULL,
	[descriptions] [nvarchar](max) NULL,
	[insertdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_eventsubtype] PRIMARY KEY CLUSTERED 
(
	[stypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[eventsubtype] ON
INSERT [dbo].[eventsubtype] ([stypeid], [etypeid], [stypename], [stypeimage], [descriptions], [insertdate], [updatedate], [isactive]) VALUES (3, 1, N'birthday', N'Lighthouse.jpg', N'birthday party', CAST(0x0000A46E00AD6C3F AS DateTime), CAST(0x0000A46E00AD6C3F AS DateTime), 1)
INSERT [dbo].[eventsubtype] ([stypeid], [etypeid], [stypename], [stypeimage], [descriptions], [insertdate], [updatedate], [isactive]) VALUES (5, 2, N'yhgygh', N'Koala.jpg', N'yhhyhyhy', CAST(0x0000A46E00E4EEC1 AS DateTime), CAST(0x0000A46E00E4EEC1 AS DateTime), 1)
INSERT [dbo].[eventsubtype] ([stypeid], [etypeid], [stypename], [stypeimage], [descriptions], [insertdate], [updatedate], [isactive]) VALUES (6, 1, N'dfdf', N'03.JPG', N'sedfe', CAST(0x0000A46E00E746F4 AS DateTime), CAST(0x0000A46E00E746F4 AS DateTime), 1)
INSERT [dbo].[eventsubtype] ([stypeid], [etypeid], [stypename], [stypeimage], [descriptions], [insertdate], [updatedate], [isactive]) VALUES (7, 4, N'general meeting', N'(R)Land-w26-14.jpg', N' meeting', CAST(0x0000A46E014A8A5F AS DateTime), CAST(0x0000A46E014A8A5F AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[eventsubtype] OFF
/****** Object:  Table [dbo].[countrymst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[countrymst](
	[contryId] [int] IDENTITY(1,1) NOT NULL,
	[countrycode] [int] NOT NULL,
	[countryname] [varchar](50) NULL,
	[shortname] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_countrymst] PRIMARY KEY CLUSTERED 
(
	[contryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contactmst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contactmst](
	[contactid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[contactno] [nvarchar](50) NULL,
	[emailid] [nvarchar](50) NULL,
	[messages] [nvarchar](max) NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_contactmst] PRIMARY KEY CLUSTERED 
(
	[contactid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[contactmst] ON
INSERT [dbo].[contactmst] ([contactid], [username], [contactno], [emailid], [messages], [isactive], [isdelete]) VALUES (2, N'mayurahir', N'8128780808', N'mayurahir4044', N'pathri
gandevi', 1, NULL)
INSERT [dbo].[contactmst] ([contactid], [username], [contactno], [emailid], [messages], [isactive], [isdelete]) VALUES (3, N'akshay', N'3332444', N'jhgjhgj@yahoo.com', N'hjhkjhkjhkjhk', 1, NULL)
SET IDENTITY_INSERT [dbo].[contactmst] OFF
/****** Object:  Table [dbo].[adminloginmst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminloginmst](
	[adminid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[passwords] [nvarchar](50) NULL,
	[emailid] [nvarchar](50) NULL,
 CONSTRAINT [PK_adminloginmst] PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[adminloginmst] ON
INSERT [dbo].[adminloginmst] ([adminid], [username], [passwords], [emailid]) VALUES (1, N'mayurahir', N'xyz', N'mayurahir404@yahoo.com')
SET IDENTITY_INSERT [dbo].[adminloginmst] OFF
/****** Object:  Table [dbo].[packagemst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[packagemst](
	[packageid] [int] IDENTITY(1,1) NOT NULL,
	[packagetype] [varchar](50) NULL,
	[descriptions] [nvarchar](max) NULL,
	[price] [int] NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
	[imagepath] [nvarchar](max) NULL,
 CONSTRAINT [PK_packagemst] PRIMARY KEY CLUSTERED 
(
	[packageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[packagemst] ON
INSERT [dbo].[packagemst] ([packageid], [packagetype], [descriptions], [price], [startdate], [enddate], [isactive], [isdelete], [imagepath]) VALUES (11, N'GOLDEN', N'bhjjgkhk', 25000, CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2C600000000 AS DateTime), 1, NULL, N'(R)Land-w26-14.jpg')
INSERT [dbo].[packagemst] ([packageid], [packagetype], [descriptions], [price], [startdate], [enddate], [isactive], [isdelete], [imagepath]) VALUES (12, N'PLATINUME', N'fdfhd', 20000, CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2C600000000 AS DateTime), 1, NULL, N'(R)Land-w27-15.jpg')
INSERT [dbo].[packagemst] ([packageid], [packagetype], [descriptions], [price], [startdate], [enddate], [isactive], [isdelete], [imagepath]) VALUES (15, N'SILVER', N'this is cool', 23000, CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2C600000000 AS DateTime), 1, NULL, N'Lamborghini_3[1].jpg')
SET IDENTITY_INSERT [dbo].[packagemst] OFF
/****** Object:  Table [dbo].[reg1mst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg1mst](
	[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[dateofbirth] [date] NULL,
	[useraddress] [nvarchar](max) NULL,
	[contactno] [nvarchar](15) NULL,
	[emailid] [nvarchar](50) NULL,
	[couuntry] [nvarchar](50) NULL,
	[states] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[pincode] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
	[packagetype] [nvarchar](50) NULL,
 CONSTRAINT [PK_reg1mst] PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[reg1mst] ON
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (1, N'hgjjh', N'gjhgjh', CAST(0x80360B00 AS Date), N'jhkhjkhk', N'66768778', N'hhjkjhkj', N'hghjjhg', N'hkjhkj', N'hghjjh', N'687687', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (2, N'hjkjhkj', N'hjhkjhj', CAST(0x76250B00 AS Date), N'hkjhkjhkjhjhkj', N'798798798798', N'klkjlkjkk', N'UK', N'jhkjhk', N'hkiuu', N'79798', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (3, N'mayur', N'ahir', CAST(0x95250B00 AS Date), N'pathri', N'8128780808', N'mayurahir', N'INDIA', N'gujarat', N'gandevi', N'396360', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (4, N'xyz', N'hjkhkhj', CAST(0xE3260B00 AS Date), N'hbhkjhkjh', N'6876867687687', N'pqrxyz@yahoo.com', N'UK', N'ghjgjhgj', N'hkjhkj', N'hkjhkh', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (5, N'gjhgjh', N'dfdhg', CAST(0x80360B00 AS Date), N'ljlkjlk', N'768768', N'hgjhgkjhk', N'gkhgkjhk', N'jhjkhkj', N'hkjhk', N'323224', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (6, N'jhgjh', N'hgjhg', CAST(0x57360B00 AS Date), N'ghjgj', N'8687687', N'jhkjhkj', N'hgkj', N'hgjhg', N'gjhgj', N'8008', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (7, N'akshay', N'ahir', CAST(0xD31C0B00 AS Date), N'pathri', N'7698452318', N'akshayahoir', N'indiagjarat', N'gujdjbjk', N'jjffff', N'876773', 1, NULL, NULL)
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (8, N'mayur', N'ahir', CAST(0x2F1D0B00 AS Date), N'PATHRI', N'677676878', N'mayurahir@yahoo.com', N'UK', N'amjhgj', N'hghgjh', N'396360', 1, NULL, N'PLATINUM')
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (9, N'nadeem', N'shaikh', CAST(0xD71C0B00 AS Date), N'ttuyty', N'667687', N'nadeem@yahoo.com', N'USA', N'yyguytyutytyt', N'ygtuyt', N'7868768', 1, NULL, N'SILVER')
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (10, N'nadeem', N'shaikh', CAST(0x62250B00 AS Date), N'ygyyt', N'657657657', N'nadeem786@yahoo.com', N'INDIA', N'jgiuyy', N'yyt', N'68687', 1, NULL, N'PLATINUM')
INSERT [dbo].[reg1mst] ([RegistrationId], [firstname], [lastname], [dateofbirth], [useraddress], [contactno], [emailid], [couuntry], [states], [city], [pincode], [isactive], [isdelete], [packagetype]) VALUES (11, N'na', N'jhhg', CAST(0x07240B00 AS Date), N'hjfhjfh', N'76674', N'khaman@yahoo.com', N'UK', N'nnhf', N'hgf', N'876785', 1, NULL, N'GOLDEN')
SET IDENTITY_INSERT [dbo].[reg1mst] OFF
/****** Object:  Table [dbo].[orderbooking]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderbooking](
	[obid] [int] IDENTITY(1,1) NOT NULL,
	[etypeid] [int] NULL,
	[packageid] [int] NULL,
	[RegistrationId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[address1] [nvarchar](100) NULL,
	[place] [nvarchar](max) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[currentdt] [datetime] NULL,
	[contactno] [nvarchar](50) NULL,
	[emailid] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_orderbooking] PRIMARY KEY CLUSTERED 
(
	[obid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orderbooking] ON
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (2, NULL, NULL, NULL, N'gfftf', N'ghsjahgjhfgaj', N'nzvgzhgz', CAST(0x0000A46400000000 AS DateTime), CAST(0x0000A46500000000 AS DateTime), CAST(0x0000A46C00ED979B AS DateTime), N'8128780808', N'jhgfsjhgs', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (3, NULL, NULL, NULL, N'gfftf', N'ghsjahgjhfgaj', N'nzvgzhgz', CAST(0x0000A46400000000 AS DateTime), CAST(0x0000A46500000000 AS DateTime), CAST(0x0000A46C00EDDFDC AS DateTime), N'8128780808', N'jhgfsjhgs', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (5, NULL, 15, NULL, N'rrrggf', N'hkjhkj', N'hio', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A47300ED3184 AS DateTime), N'678687', N'jhkjh@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (6, NULL, 15, NULL, N'rrrggf', N'hkjhkj', N'hio', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A47300EEDA9D AS DateTime), N'678687', N'jhkjh@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (7, NULL, 12, NULL, N'rrrggf', N'hkjhkj', N'hio', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A47300EEEAE7 AS DateTime), N'678687', N'jhkjh@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (8, NULL, 12, NULL, N'rrrggf', N'hkjhkj', N'hio', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A47300EF18AB AS DateTime), N'678687', N'jhkjh@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (9, NULL, 11, NULL, N'rrrggff', N'gf', N'hio', CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A48200000000 AS DateTime), CAST(0x0000A47300EF6109 AS DateTime), N'87787887', N'jhkjh@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (10, NULL, 11, NULL, N'fgggfgf', N'ggfgf', N'gfgggffg', CAST(0x0000A48100000000 AS DateTime), CAST(0x0000A48300000000 AS DateTime), CAST(0x0000A47300EFE045 AS DateTime), N'3443556565', N'dffd@yahoo.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (11, NULL, 12, NULL, N'hgjghf', N'fhfhgfbgfg', N'hhghfhgffhg', CAST(0x0000A47F00000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400CDB3F6 AS DateTime), N'3235654566', N'fytfytf@ymail.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (12, NULL, 11, NULL, N'sdsd', N'hhhh', N'hhhjkkh', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400CEF53A AS DateTime), N'sdsd', N'hhgi@n.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (13, NULL, 11, NULL, N'sdsd', N'hhhh', N'hhhjkkh', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400D32E4D AS DateTime), N'sdsd', N'hhgi@n.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (14, NULL, 11, NULL, N'sdsd', N'hhhh', N'hhhjkkh', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400D33560 AS DateTime), N'sdsd', N'hhgi@n.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (15, NULL, 15, NULL, N'sdsd', N'hhhh', N'hhhjkkh', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400D3410F AS DateTime), N'sdsd', N'hhgi@n.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (16, NULL, 12, NULL, N'marrige', N'pathri', N'kjkj', CAST(0x0000A48300000000 AS DateTime), CAST(0x0000A48000000000 AS DateTime), CAST(0x0000A47400D3B38D AS DateTime), N'7676876876876', N'nbjhj@ymail.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (17, NULL, 15, NULL, N'ghgjh', N'yy', N'yyuyi', CAST(0x0000A48000000000 AS DateTime), CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A47400D8488A AS DateTime), N'776868768', N'jhghjgj@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (18, NULL, 15, NULL, N'ghgjh', N'yy', N'yyuyi', CAST(0x0000A48000000000 AS DateTime), CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A47400D9B28A AS DateTime), N'776868768', N'jhghjgj@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (19, NULL, 15, NULL, N'ghgjh', N'yy', N'yyuyi', CAST(0x0000A48000000000 AS DateTime), CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A47400D9BAE5 AS DateTime), N'776868768', N'jhghjgj@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (20, NULL, 12, NULL, N'hijhiy', N'iuuyiyi', N'iyiuyi', CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400DA086B AS DateTime), N'67576587687', N'yiyi@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (21, NULL, 12, NULL, N'hijhiy', N'iuuyiyi', N'iyiuyi', CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400DA5D20 AS DateTime), N'67576587687', N'yiyi@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (22, NULL, 15, NULL, N'hghjh', N'yiyiy', N'iuyiyi', CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400DAA4E3 AS DateTime), N'67687878', N'ygy@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (23, NULL, 12, NULL, N'hghjj', N'ygyhuy', N'yjhjhj', CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400DBA061 AS DateTime), N'657687687', N'yyi@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (24, NULL, 15, NULL, N'hgjh', N'ytytiyi', N'gjhii', CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400DFD1AB AS DateTime), N'768768768', N'yyygu@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (25, NULL, 11, NULL, N'marrage', N'pathri', N'wfaf', CAST(0x0000A48700000000 AS DateTime), CAST(0x0000A48900000000 AS DateTime), CAST(0x0000A47400E10FF5 AS DateTime), N'874643436436', N'akshayahir@ymail.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (26, NULL, 12, NULL, N'bvhjh', N'gjhgjh', N'hgjhj', CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400E3A95D AS DateTime), N'5767687', N'yyiyi@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (27, NULL, 11, NULL, N'assfsf', N'gfhgfhgf', N'fhfhgfh', CAST(0x0000A48600000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400E49F51 AS DateTime), N'354364365', N'gfdfgdgf@yml.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (28, NULL, 12, NULL, N'jhghjjhj', N'ytjyty', N'yuyiuyi', CAST(0x0000A48800000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400E7CD0D AS DateTime), N'767767', N'hgfhgh@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (29, NULL, 11, NULL, N'birthday', N'jhgjhjy', N'hggjgj', CAST(0x0000A48400000000 AS DateTime), CAST(0x0000A48A00000000 AS DateTime), CAST(0x0000A47400EA1E17 AS DateTime), N'66568768', N'yygyt@y.vom', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (31, 2, 11, 7, N'khkjhkj', N'jhkjhjkhk', N'jkhkjhkj', CAST(0x0000A48400000000 AS DateTime), CAST(0x0000A48500000000 AS DateTime), CAST(0x0000A47600D86B84 AS DateTime), N'7687687687', N'jhkjhk@y.com', 1)
INSERT [dbo].[orderbooking] ([obid], [etypeid], [packageid], [RegistrationId], [name], [address1], [place], [startdate], [enddate], [currentdt], [contactno], [emailid], [isactive]) VALUES (32, 1, 12, 8, N'marrige', N'poioioi', N'hjbhjhj', CAST(0x0000A48200000000 AS DateTime), CAST(0x0000A48400000000 AS DateTime), CAST(0x0000A47600DBBCF5 AS DateTime), N'767657567', N'jhghjj@yy.com', 1)
SET IDENTITY_INSERT [dbo].[orderbooking] OFF
/****** Object:  Table [dbo].[feedbackmst1]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedbackmst1](
	[feedbackid] [int] IDENTITY(1,1) NOT NULL,
	[emailid] [nvarchar](50) NULL,
	[username] [varchar](50) NULL,
	[contactno] [nvarchar](50) NULL,
	[feedbacktext] [nvarchar](max) NULL,
	[Isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_feedbackmst1] PRIMARY KEY CLUSTERED 
(
	[feedbackid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[feedbackmst1] ON
INSERT [dbo].[feedbackmst1] ([feedbackid], [emailid], [username], [contactno], [feedbacktext], [Isactive], [isdelete]) VALUES (1, N'akshay@yahoo.com', N'akshay', N'213355464747', N'its excellent', 1, NULL)
SET IDENTITY_INSERT [dbo].[feedbackmst1] OFF
/****** Object:  Table [dbo].[imagemst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagemst](
	[imageid] [int] IDENTITY(1,1) NOT NULL,
	[imagename] [nvarchar](50) NULL,
	[descriptions] [nvarchar](50) NULL,
	[imagepath] [nvarchar](max) NULL,
	[Isdefault] [int] NULL,
	[Isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_imagemst] PRIMARY KEY CLUSTERED 
(
	[imageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[imagemst] ON
INSERT [dbo].[imagemst] ([imageid], [imagename], [descriptions], [imagepath], [Isdefault], [Isactive], [isdelete]) VALUES (14, N'akshay', N'this is cool', N'Koala.jpg', NULL, 1, NULL)
INSERT [dbo].[imagemst] ([imageid], [imagename], [descriptions], [imagepath], [Isdefault], [Isactive], [isdelete]) VALUES (15, N'hhhhh', N'sgddakgfkagf', N'Desert.jpg', NULL, 1, NULL)
INSERT [dbo].[imagemst] ([imageid], [imagename], [descriptions], [imagepath], [Isdefault], [Isactive], [isdelete]) VALUES (16, N'jellyfish', N'jellyfish', N'Jellyfish.jpg', NULL, 1, NULL)
INSERT [dbo].[imagemst] ([imageid], [imagename], [descriptions], [imagepath], [Isdefault], [Isactive], [isdelete]) VALUES (17, N'mmmm', N'nhbjhb', N'Lighthouse.jpg', NULL, 1, NULL)
INSERT [dbo].[imagemst] ([imageid], [imagename], [descriptions], [imagepath], [Isdefault], [Isactive], [isdelete]) VALUES (18, N'', N'', N'', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[imagemst] OFF
/****** Object:  Table [dbo].[videomst]    Script Date: 04/12/2015 09:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videomst](
	[videoid] [int] IDENTITY(1,1) NOT NULL,
	[videoname] [nvarchar](100) NULL,
	[videolink] [nvarchar](max) NULL,
	[videopath] [nvarchar](max) NULL,
	[Isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_videomst] PRIMARY KEY CLUSTERED 
(
	[videoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[update_subevent]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[update_subevent]
@stypeid int,
@stypename varchar(50),
@stypeimage nvarchar(max),
@descriptions nvarchar(max)



AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update eventsubtype set stypename=@stypename,stypeimage=@stypeimage,descriptions=@descriptions where stypeid=@stypeid;
END
GO
/****** Object:  StoredProcedure [dbo].[subeventselect_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[subeventselect_sp]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from eventsubtype; 
END
GO
/****** Object:  Table [dbo].[statesmast]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[statesmast](
	[stateid] [int] IDENTITY(1,1) NOT NULL,
	[contryId] [int] NULL,
	[statecode] [int] NOT NULL,
	[statename] [varchar](50) NULL,
	[shortname] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_statesmast] PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[selectpackage]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectpackage]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from packagemst;
   
END
GO
/****** Object:  StoredProcedure [dbo].[selectoreder]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectoreder]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from orderbooking;
   
END
GO
/****** Object:  StoredProcedure [dbo].[selectimage]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectimage]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from imagemst
  
END
GO
/****** Object:  StoredProcedure [dbo].[selectfeedback]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectfeedback]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from feedbackmst1
END
GO
/****** Object:  StoredProcedure [dbo].[selecteventmain_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selecteventmain_sp]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from eventtype;
END
GO
/****** Object:  StoredProcedure [dbo].[registartionIn_id]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[registartionIn_id]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select RegistrationId from reg1mst;
END
GO
/****** Object:  StoredProcedure [dbo].[packageimg_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[packageimg_sp]
@packageid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select imagepath,descriptions from packagemst where packageid=@packageid;
END
GO
/****** Object:  StoredProcedure [dbo].[insertimage]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertimage]
@imagename nvarchar(50),
@descriptions nvarchar(50),
@imagepath nvarchar(max),
@Isactive bit


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
insert into imagemst (imagename,descriptions,imagepath,Isactive) values(@imagename,@descriptions,@imagepath,@Isactive);

END
GO
/****** Object:  StoredProcedure [dbo].[selectcontact]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectcontact]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from contactmst;
 END
GO
/****** Object:  StoredProcedure [dbo].[registrationCheck_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[registrationCheck_sp]
@emailid nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from  reg1mst where emailid=@emailid;
END
GO
/****** Object:  StoredProcedure [dbo].[updateimage]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateimage]
@imageid int,
@imagename nvarchar(50),
@descriptions nvarchar(50),
@imagepath nvarchar(max),
@Isactive bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update imagemst set imagename=@imagename,descriptions=@descriptions,imagepath=@imagepath,Isactive=@Isactive where imageid=@imageid;
   
END
GO
/****** Object:  StoredProcedure [dbo].[feedbackup]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[feedbackup]
@feedbackid int,
@feedbacktext nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 update feedbackmst1 set feedbacktext=@feedbacktext where feedbackid=@feedbackid;
END
GO
/****** Object:  StoredProcedure [dbo].[feedback_insert]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[feedback_insert]
@emailid nvarchar(50),
@username varchar(50),
@contactno nvarchar(50),
@feedbacktext nvarchar(max),
@Isactive bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	insert into feedbackmst1(emailid,username,contactno,feedbacktext,Isactive)values(@emailid,@username,@contactno,@feedbacktext,@Isactive)

END
GO
/****** Object:  StoredProcedure [dbo].[eventtype_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventtype_sp]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from eventtype;

END
GO
/****** Object:  Table [dbo].[loginmst]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginmst](
	[loginid] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationId] [int] NULL,
	[username] [nvarchar](100) NULL,
	[passwords] [nvarchar](50) NULL,
	[Isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_loginmst] PRIMARY KEY CLUSTERED 
(
	[loginid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[loginmst] ON
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (1, NULL, N'gffhj', N'ytdyt', NULL, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (2, NULL, N'hhjkjhkj', N'akshay', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (3, NULL, N'klkjlkjkk', N'yuyiui', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (4, NULL, N'mayurahir', N'akshay1', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (5, NULL, N'pqrxyz@yahoo.com', N'1234567', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (6, 5, N'hgjhgkjhk', N'ahir', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (7, 6, N'jhkjhkj', N'ahir', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (8, 7, N'akshayahoir', N'mayur', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (9, 8, N'mayurahir@yahoo.com', N'mayur8008', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (10, 9, N'nadeem@yahoo.com', N'hhhh', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (11, 10, N'nadeem786@yahoo.com', N'nnn', 1, NULL)
INSERT [dbo].[loginmst] ([loginid], [RegistrationId], [username], [passwords], [Isactive], [isdelete]) VALUES (12, 11, N'khaman@yahoo.com', N'khaman', 1, NULL)
SET IDENTITY_INSERT [dbo].[loginmst] OFF
/****** Object:  StoredProcedure [dbo].[pricedynamic_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[pricedynamic_sp]
@packageid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select  pg.price from  dbo.packagemst as pg left join orderbooking as ob on ob.packageid=pg.packageid where ob.packageid=@packageid;




    
END
GO
/****** Object:  StoredProcedure [dbo].[passwordchange]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[passwordchange]
@adminid int,
@passwords nvarchar(50)
 AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	update adminloginmst set passwords=@passwords where adminid=@adminid;

   
END
GO
/****** Object:  StoredProcedure [dbo].[packgedelete]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[packgedelete]
@packageid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	delete from packagemst where packageid=@packageid;
    
END
GO
/****** Object:  StoredProcedure [dbo].[packageupdate]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[packageupdate]
@packageid int,
@packagetype varchar(50),
@descriptions nvarchar(max),
@price int,
@startdate datetime,
@enddate datetime,
@isactive bit,
@imagepath nvarchar(max)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update packagemst set packagetype=@packagetype,descriptions=@descriptions,price=@price,startdate=@startdate,enddate=@enddate,isactive=@isactive,imagepath=@imagepath where packageid=@packageid;
   
END
GO
/****** Object:  StoredProcedure [dbo].[alogin]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[alogin]
@username nvarchar(50),
@passwords nvarchar(50)
--@emailid nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from adminloginmst where username=@username and passwords=@passwords; 
    -- Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[afeedback_select]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[afeedback_select]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from feedbackmst1;
END
GO
/****** Object:  StoredProcedure [dbo].[eventdynamic]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventdynamic]
@etypeid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

select est.stypename,est.stypeimage from dbo.eventtype as et left join dbo.eventsubtype as est on et.etypeid=est.etypeid where est.etypeid=@etypeid;
    
END
GO
/****** Object:  StoredProcedure [dbo].[eventbookingsp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventbookingsp]
@etypeid int,
@packageid int,
@RegistrationId int,
@name nvarchar(50),
@address1 nvarchar(100),
@place nvarchar(max),
@startdate datetime,
@enddate datetime,
@contactno nvarchar(50),
@emailid nvarchar(50),
@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   insert into orderbooking (etypeid,packageid,RegistrationId,name,address1,place,startdate,enddate,currentdt,contactno,emailid,isactive) values (@etypeid,@packageid,@RegistrationId,@name,@address1,@place,@startdate,@enddate,GETDATE(),@contactno,@emailid,@isactive)
END
GO
/****** Object:  StoredProcedure [dbo].[eventbookingprice_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventbookingprice_sp]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from packagemst;
END
GO
/****** Object:  StoredProcedure [dbo].[contact_insert]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[contact_insert]
@username varchar(50),
@contactno nvarchar(50),
@emailid nvarchar(50),
@messages nvarchar(max),
@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into contactmst(username,contactno,emailid,messages,isactive) values(@username,@contactno,@emailid,@messages,@isactive);
	
END
GO
/****** Object:  StoredProcedure [dbo].[eventsub_sp]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventsub_sp]
@etypeid int,
@stypename varchar(50),
@stypeimage nvarchar(max),
@descriptions nvarchar(max),
@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into eventsubtype (etypeid,stypename,stypeimage,descriptions,insertdate,updatedate,isactive) values(@etypeid,@stypename,@stypeimage,@descriptions,GETDATE(),GETDATE(),@isactive);
    
END
GO
/****** Object:  Table [dbo].[eventmast]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventmast](
	[eventid] [int] IDENTITY(1,1) NOT NULL,
	[packageid] [int] NULL,
	[loginid] [int] NULL,
	[imagepath] [nvarchar](50) NULL,
	[eventname] [nvarchar](50) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[place] [nvarchar](50) NULL,
	[city] [varchar](50) NULL,
	[state1] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[contactno] [nvarchar](50) NULL,
	[statuse] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
 CONSTRAINT [PK_eventmast] PRIMARY KEY CLUSTERED 
(
	[eventid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[eventmast] ON
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (12, NULL, NULL, N'Hydrangeas.jpg', N'gcgcg', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'gfctfctc', N'ycgcg', N'ghvhgvh', N'cgcgc', N'777777', N'gvghvh', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (18, NULL, NULL, N'Lighthouse.jpg', N'marrige', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'hbbgkhg', N'gujarat', N'india', N'678768', N'ytyt', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (19, NULL, NULL, N'Penguins.jpg', N'birthday', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'1234567890', N'running', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (20, NULL, NULL, N'Lighthouse.jpg', N'marrige', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'1234567890', N'ready', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (21, NULL, NULL, N'Tulips.jpg', N'marrige', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'1234567890', N'running', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (22, NULL, NULL, N'Chrysanthemum.jpg', N'hgk', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'1234567890', N'running', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (31, NULL, NULL, N'Wailua_Falls.jpg', N'social', CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'777777', N'jj', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (32, NULL, NULL, N'@TELE (.jpg', N'social', CAST(0x0000A2CF00000000 AS DateTime), CAST(0x0000A2B100000000 AS DateTime), N'pathri', N'gandevi', N'gujarat', N'india', N'1234567890', N'ready', 1, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (36, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (37, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (38, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[eventmast] ([eventid], [packageid], [loginid], [imagepath], [eventname], [startdate], [enddate], [place], [city], [state1], [country], [contactno], [statuse], [isactive], [isdelete]) VALUES (39, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[eventmast] OFF
/****** Object:  Table [dbo].[citymst]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[citymst](
	[cityid] [int] IDENTITY(1,1) NOT NULL,
	[stateid] [int] NULL,
	[citycode] [int] NOT NULL,
	[cityname] [varchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_citymst] PRIMARY KEY CLUSTERED 
(
	[cityid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[changepassuser2]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[changepassuser2]
@loginid int,
@passwords nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update loginmst set passwords=@passwords where loginid=@loginid;
END
GO
/****** Object:  StoredProcedure [dbo].[changepassuser1]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[changepassuser1]
@username nvarchar(100),
@passwords nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

select * from loginmst where username=@username and passwords=@passwords;
   
END
GO
/****** Object:  StoredProcedure [dbo].[updateevent]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateevent]
@eventid int,
@imagepath nvarchar(50),
@eventname nvarchar(50),
@startdate datetime,
@enddate datetime,
@place nvarchar(50),
@city varchar(50),
@state1 varchar(50),
@country varchar(50),
@contactno nvarchar(50),
@statuse nvarchar(50)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update eventmast set imagepath=@imagepath,eventname=@eventname,startdate=@startdate,enddate=@enddate,place=@place,city=@city,state1=@state1,country=@country,contactno=@contactno,statuse=@statuse where eventid=@eventid;
END
GO
/****** Object:  StoredProcedure [dbo].[registration1_insert]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- [registration1_insert]1,'abc','xyz','5-7-1990','asdasda',7777777,'asdasd','asdsa','asdsad','123456',0;
-- =============================================
CREATE PROCEDURE [dbo].[registration1_insert]

@firstname varchar(50),
@lastname varchar(50),
@dateofbirth date,
@useraddress nvarchar(max),
@contactno nvarchar(15),
@emailid nvarchar(50),
@couuntry nvarchar(50), 
@states varchar(50),
@city varchar(50),
@pincode nvarchar(50),
@isactive bit,
@username nvarchar(100),
@passwords nvarchar(50),
@packagetype nvarchar(50)

AS
BEGIN
declare @uid int
	SET NOCOUNT ON;
	
		insert into reg1mst (firstname,lastname,dateofbirth,useraddress,contactno,emailid,couuntry,states,city,pincode,isactive,packagetype) values(@firstname,@lastname,@dateofbirth,@useraddress,@contactno,@emailid,@couuntry,@states,@city,@pincode,@isactive,@packagetype)
   set @uid=SCOPE_IDENTITY();
   print @uid
  
    insert into loginmst(RegistrationId,username,passwords,Isactive) values (@uid,@emailid,@passwords,'true')
insert into eventmast (loginid) values (@uid)
   
END
GO
/****** Object:  StoredProcedure [dbo].[insertevnt]    Script Date: 04/12/2015 09:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertevnt]
@imagepath nvarchar(50),
@eventname varchar(50), 
@startdate datetime,
@enddate datetime,
@place nvarchar(100),
@city varchar(50),
@state1 varchar(50),
@country varchar(50),
@contactno nvarchar(50),
@statuse nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into eventmast (imagepath,eventname,startdate,enddate,place,city,state1,country,contactno,statuse,isactive) values (@imagepath,@eventname,@startdate,@enddate,@place,@city,@state1,@country,@contactno,@statuse,1)
    
END
GO
/****** Object:  StoredProcedure [dbo].[selectevent]    Script Date: 04/12/2015 09:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectevent]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select * from eventmast;
    
END
GO
/****** Object:  StoredProcedure [dbo].[packageinsert]    Script Date: 04/12/2015 09:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[packageinsert]
@packagetype varchar(50),
@descriptions nvarchar(max),
@price int,
@startdate datetime,
@enddate datetime,
@isactive bit,
@imagepath nvarchar(max)
AS
BEGIN
declare @uid int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
insert into packagemst(packagetype,descriptions,price,startdate,enddate,isactive,imagepath) values(@packagetype,@descriptions,@price,@startdate,@enddate,@isactive,@imagepath)
set @uid=SCOPE_IDENTITY();
   print @uid
   
   insert into eventmast(packageid) values (@uid)
    
END
GO
/****** Object:  StoredProcedure [dbo].[login_select]    Script Date: 04/12/2015 09:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[login_select]
@username nvarchar(100),
@passwords nvarchar(50)
AS
BEGIN
declare @lid int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

select loginid  from loginmst where username=@username and passwords=@passwords and Isactive=1;
	set @lid=SCOPE_IDENTITY();
   print @lid
   insert into eventmast (loginid) values (@lid)
   
	
END
GO
/****** Object:  StoredProcedure [dbo].[eventbooking]    Script Date: 04/12/2015 09:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[eventbooking]
@eventname nvarchar(50),
@startdate datetime,
@enddate datetime,
@place nvarchar(50),
@city varchar(50),
@state1 varchar(50),
@country varchar(50),
@contactno nvarchar(50)



AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into eventmast (eventname,startdate,enddate,place,city,state1,country,contactno,isactive) values (@eventname,@startdate,@enddate,@place,@city,@state1,@country,@contactno,'true')
   
END
GO
/****** Object:  StoredProcedure [dbo].[enamesp]    Script Date: 04/12/2015 09:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[enamesp]



AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select  eventname from eventmast where eventname='social';
END
GO
/****** Object:  ForeignKey [FK_statesmast_countrymst]    Script Date: 04/12/2015 09:07:38 ******/
ALTER TABLE [dbo].[statesmast]  WITH CHECK ADD  CONSTRAINT [FK_statesmast_countrymst] FOREIGN KEY([contryId])
REFERENCES [dbo].[countrymst] ([contryId])
GO
ALTER TABLE [dbo].[statesmast] CHECK CONSTRAINT [FK_statesmast_countrymst]
GO
/****** Object:  ForeignKey [FK_loginmst_reg1mst]    Script Date: 04/12/2015 09:07:38 ******/
ALTER TABLE [dbo].[loginmst]  WITH CHECK ADD  CONSTRAINT [FK_loginmst_reg1mst] FOREIGN KEY([RegistrationId])
REFERENCES [dbo].[reg1mst] ([RegistrationId])
GO
ALTER TABLE [dbo].[loginmst] CHECK CONSTRAINT [FK_loginmst_reg1mst]
GO
/****** Object:  ForeignKey [FK_eventmast_loginmst]    Script Date: 04/12/2015 09:07:38 ******/
ALTER TABLE [dbo].[eventmast]  WITH CHECK ADD  CONSTRAINT [FK_eventmast_loginmst] FOREIGN KEY([loginid])
REFERENCES [dbo].[loginmst] ([loginid])
GO
ALTER TABLE [dbo].[eventmast] CHECK CONSTRAINT [FK_eventmast_loginmst]
GO
/****** Object:  ForeignKey [FK_eventmast_packagemst]    Script Date: 04/12/2015 09:07:38 ******/
ALTER TABLE [dbo].[eventmast]  WITH CHECK ADD  CONSTRAINT [FK_eventmast_packagemst] FOREIGN KEY([packageid])
REFERENCES [dbo].[packagemst] ([packageid])
GO
ALTER TABLE [dbo].[eventmast] CHECK CONSTRAINT [FK_eventmast_packagemst]
GO
/****** Object:  ForeignKey [FK_citymst_statesmast]    Script Date: 04/12/2015 09:07:38 ******/
ALTER TABLE [dbo].[citymst]  WITH CHECK ADD  CONSTRAINT [FK_citymst_statesmast] FOREIGN KEY([stateid])
REFERENCES [dbo].[statesmast] ([stateid])
GO
ALTER TABLE [dbo].[citymst] CHECK CONSTRAINT [FK_citymst_statesmast]
GO
