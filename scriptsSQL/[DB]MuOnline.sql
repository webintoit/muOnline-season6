/*
	Script created 23/08/2014
	Maintain by Kessiler R.
*/

USE [master]
GO

CREATE DATABASE [MuOnline] ON  PRIMARY 
( NAME = N'MuOnline', FILENAME = N'D:\Season6\muServer\Database\MuOnline.mdf' , SIZE = 3MB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MuOnline_log', FILENAME = N'D:\Season6\muServer\Database\MuOnline_Log.ldf' , SIZE = 1MB , MAXSIZE = 1024GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [MuOnline] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MuOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MuOnline] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MuOnline] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MuOnline] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MuOnline] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MuOnline] SET ARITHABORT OFF 
GO

ALTER DATABASE [MuOnline] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MuOnline] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [MuOnline] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MuOnline] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MuOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MuOnline] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MuOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MuOnline] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MuOnline] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MuOnline] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MuOnline] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MuOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MuOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MuOnline] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MuOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MuOnline] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MuOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MuOnline] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MuOnline] SET  READ_WRITE 
GO

ALTER DATABASE [MuOnline] SET RECOVERY FULL 
GO

ALTER DATABASE [MuOnline] SET  MULTI_USER 
GO

ALTER DATABASE [MuOnline] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MuOnline] SET DB_CHAINING OFF 
GO

USE [MuOnline]
GO
/****** Object:  Table [dbo].[ZenEvent]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZenEvent](
	[Guid] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[Zen] [int] NULL,
 CONSTRAINT [PK_ZenEvent] PRIMARY KEY CLUSTERED 
(
	[Guid] ASC,
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GensMember]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GensMember](
	[Name] [varchar](10) NOT NULL,
	[Influence] [int] NULL,
	[Contribute] [int] NULL,
	[Class] [int] NULL,
	[Rank] [int] NULL,
	[RewardDate] [smalldatetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[warehouse](
	[AccountID] [varchar](10) NOT NULL,
	[Items] [varbinary](3840) NULL,
	[Money] [int] NULL,
	[EndUseDate] [smalldatetime] NULL,
	[DbVersion] [tinyint] NULL,
	[pw] [smallint] NULL,
 CONSTRAINT [PK_warehouse] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_CreateCharacter_GetVersion]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CreateCharacter_GetVersion]
AS
BEGIN
	SELECT 1
END
GO
/****** Object:  Table [dbo].[Guild]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Guild](
	[G_Name] [varchar](8) NOT NULL,
	[G_Mark] [varbinary](32) NULL,
	[G_Score] [int] NULL,
	[G_Master] [varchar](10) NULL,
	[G_Count] [int] NULL,
	[G_Notice] [varchar](89) NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[G_Type] [int] NOT NULL,
	[G_Rival] [int] NOT NULL,
	[G_Union] [int] NOT NULL,
 CONSTRAINT [PK_Guild] PRIMARY KEY CLUSTERED 
(
	[G_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANG_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANG_INFO](
	[mang_guid] [int] IDENTITY(1,1) NOT NULL,
	[mang___id] [varchar](15) NOT NULL,
	[mang__pwd] [varchar](34) NOT NULL,
	[mang_name] [varchar](20) NOT NULL,
	[auth_code] [int] NOT NULL,
	[appl_day] [smalldatetime] NULL,
	[bloc_code] [int] NOT NULL,
	[perm] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loveheartall]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[loveheartall](
	[number] [char](10) NULL,
	[id] [char](10) NULL,
	[server] [char](10) NULL,
	[name] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loveheart]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[loveheart](
	[number] [char](10) NULL,
	[heart_count] [char](10) NULL,
	[id] [char](10) NULL,
	[server] [char](10) NULL,
	[name] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMB_STAT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMB_STAT](
	[memb___id] [varchar](10) NOT NULL,
	[ConnectStat] [tinyint] NULL,
	[ServerName] [varchar](20) NULL,
	[IP] [varchar](15) NULL,
	[ConnectTM] [smalldatetime] NULL,
	[DisConnectTM] [smalldatetime] NULL,
 CONSTRAINT [PK_MEMB_STAT] PRIMARY KEY CLUSTERED 
(
	[memb___id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMB_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMB_INFO](
	[memb_guid] [int] IDENTITY(1,1) NOT NULL,
	[memb___id] [varchar](10) NULL,
	[memb__pwd] [varchar](10) NOT NULL,
	[memb_name] [varchar](10) NOT NULL,
	[sno__numb] [char](18) NOT NULL,
	[post_code] [char](6) NULL,
	[addr_info] [varchar](50) NULL,
	[addr_deta] [varchar](50) NULL,
	[tel__numb] [varchar](20) NULL,
	[phon_numb] [varchar](15) NULL,
	[mail_addr] [varchar](50) NULL,
	[fpas_ques] [varchar](50) NULL,
	[fpas_answ] [varchar](50) NULL,
	[job__code] [char](2) NULL,
	[appl_days] [datetime] NULL,
	[modi_days] [datetime] NULL,
	[out__days] [datetime] NULL,
	[true_days] [datetime] NULL,
	[mail_chek] [char](1) NULL,
	[bloc_code] [char](1) NOT NULL,
	[ctl1_code] [char](1) NOT NULL,
	[cspoints] [int] NOT NULL,
 CONSTRAINT [PK_MEMB_INFO_1] PRIMARY KEY NONCLUSTERED 
(
	[memb_guid] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_POINT_ACCM_BC_4TH]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_POINT_ACCM_BC_4TH]

	@Server		smallint,
	@Bridge		tinyint,
	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int,
	@PCRoomGUID	int,
	@LeftTime		int
AS
BEGIN	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_POINT_ACCM_BC_3RD]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_POINT_ACCM_BC_3RD]

	@Server		smallint,
	@Bridge		tinyint,
	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int,
	@PCRoomGUID	int,
	@LeftTime		int
AS
BEGIN
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_POINT_ACCM_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_POINT_ACCM_BC]

	@Server		smallint,
	@Bridge		tinyint,
	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int,
	@PCRoomGUID	int
AS
BEGIN
	DECLARE	@TEMP	int
END
GO
/****** Object:  Table [dbo].[GameShopStorage]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameShopStorage](
	[Index] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [nchar](10) NOT NULL,
	[AuthIndex] [int] NOT NULL,
	[AuthID] [int] NOT NULL,
	[ItemID] [smallint] NOT NULL,
	[IBSID] [int] NOT NULL,
	[IBSCategory] [int] NOT NULL,
	[IBSIndex] [int] NOT NULL,
	[PackageID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameShopPoint]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameShopPoint](
	[AccountID] [nchar](10) NOT NULL,
	[WCoinC] [bigint] NOT NULL,
	[WCoinP] [bigint] NOT NULL,
	[GoblinPoint] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameServerInfo]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameServerInfo](
	[Number] [int] NOT NULL,
	[ItemCount] [int] NOT NULL,
	[ZenCount] [int] NULL,
	[GmItemCount] [int] NULL,
	[AceItemCount] [int] NULL,
 CONSTRAINT [PK_GameServerInfo] PRIMARY KEY NONCLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENT_INFO_BC_5TH]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_INFO_BC_5TH](
	[Server] [tinyint] NOT NULL,
	[Bridge] [tinyint] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CharacterName] [varchar](10) NOT NULL,
	[Class] [tinyint] NOT NULL,
	[Point] [int] NOT NULL,
	[PlayCount] [int] NOT NULL,
	[SumLeftTime] [int] NOT NULL,
	[MinLeftTime] [int] NOT NULL,
	[RegDate] [smalldatetime] NOT NULL,
	[AlivePartyCount] [int] NOT NULL,
	[MaxPointLeftTime] [int] NOT NULL,
 CONSTRAINT [PK_EVENT_INFO_BC_5TH] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Bridge] ASC,
	[AccountID] ASC,
	[CharacterName] ASC,
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENT_INFO_BC_4TH]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_INFO_BC_4TH](
	[Server] [tinyint] NOT NULL,
	[Bridge] [tinyint] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CharacterName] [varchar](10) NOT NULL,
	[Class] [tinyint] NOT NULL,
	[Point] [int] NOT NULL,
	[PlayCount] [int] NOT NULL,
	[SumLeftTime] [int] NOT NULL,
	[MinLeftTime] [int] NOT NULL,
 CONSTRAINT [PK_EVENT_INFO_BC_4TH] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Bridge] ASC,
	[AccountID] ASC,
	[CharacterName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENT_INFO_BC_3RD]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_INFO_BC_3RD](
	[Server] [tinyint] NOT NULL,
	[Bridge] [tinyint] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CharacterName] [varchar](10) NOT NULL,
	[Class] [tinyint] NOT NULL,
	[Point] [int] NOT NULL,
	[PlayCount] [int] NOT NULL,
	[SumLeftTime] [int] NOT NULL,
 CONSTRAINT [PK_EVENT_INFO_BC_3RD] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Bridge] ASC,
	[AccountID] ASC,
	[CharacterName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENT_INFO_BC]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_INFO_BC](
	[Server] [smallint] NOT NULL,
	[Bridge] [tinyint] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CharacterName] [varchar](10) NOT NULL,
	[Class] [tinyint] NOT NULL,
	[Point] [int] NOT NULL,
	[PlayCount] [int] NOT NULL,
 CONSTRAINT [PK_EVENT_INFO_BC] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Bridge] ASC,
	[AccountID] ASC,
	[CharacterName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENT_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT_INFO](
	[Server] [smallint] NOT NULL,
	[Square] [tinyint] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[CharacterName] [varchar](10) NOT NULL,
	[Class] [tinyint] NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_EVENT_INFO] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Square] ASC,
	[AccountID] ASC,
	[CharacterName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DefaultClassType]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefaultClassType](
	[Class] [tinyint] NOT NULL,
	[Strength] [smallint] NULL,
	[Dexterity] [smallint] NULL,
	[Vitality] [smallint] NULL,
	[Energy] [smallint] NULL,
	[Inventory] [varbinary](3776) NULL,
	[MagicList] [varbinary](450) NULL,
	[Life] [real] NULL,
	[MaxLife] [real] NULL,
	[Mana] [real] NULL,
	[MaxMana] [real] NULL,
	[MapNumber] [smallint] NULL,
	[MapPosX] [smallint] NULL,
	[MapPosY] [smallint] NULL,
	[Quest] [varbinary](50) NULL,
	[DbVersion] [tinyint] NULL,
	[Leadership] [smallint] NULL,
	[Level] [smallint] NULL,
	[LevelUpPoint] [smallint] NULL,
 CONSTRAINT [PK_DefaultClassType] PRIMARY KEY CLUSTERED 
(
	[Class] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CharPreview]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CharPreview](
	[Name] [varchar](10) NOT NULL,
	[cLevel] [int] NULL,
	[Class] [tinyint] NOT NULL,
	[Inventory] [varbinary](84) NULL,
 CONSTRAINT [PK_CharPreview] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Character]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Character](
	[AccountID] [varchar](10) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[cLevel] [int] NULL,
	[LevelUpPoint] [int] NULL,
	[Class] [tinyint] NULL,
	[Experience] [int] NULL,
	[Strength] [int] NULL,
	[Dexterity] [int] NULL,
	[Vitality] [int] NULL,
	[Energy] [int] NULL,
	[Inventory] [varbinary](3776) NULL,
	[MagicList] [varbinary](450) NULL,
	[Money] [int] NULL,
	[Life] [real] NULL,
	[MaxLife] [real] NULL,
	[Mana] [real] NULL,
	[MaxMana] [real] NULL,
	[MapNumber] [smallint] NULL,
	[MapPosX] [smallint] NULL,
	[MapPosY] [smallint] NULL,
	[MapDir] [tinyint] NULL,
	[PkCount] [int] NULL,
	[PkLevel] [int] NULL,
	[PkTime] [int] NULL,
	[MDate] [smalldatetime] NULL,
	[LDate] [smalldatetime] NULL,
	[CtlCode] [tinyint] NULL,
	[DbVersion] [tinyint] NULL,
	[Quest] [varbinary](50) NULL,
	[Leadership] [int] NULL,
	[ChatLimitTime] [smallint] NULL,
	[FruitPoint] [int] NULL,
	[JHDX] [varchar](10) NULL,
	[JHtype] [tinyint] NULL,
	[Resets] [int] NULL,
	[ExpandedInventory] [tinyint] NULL,
	[GrandResets] [int] NULL,
	[OffExp] [int] NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChangeCharacter]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChangeCharacter](
	[Col001] [int] NULL,
	[Col002] [varchar](10) NULL,
	[Col003] [varchar](10) NULL,
	[Col004] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountCharacter]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountCharacter](
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[GameID1] [varchar](10) NULL,
	[GameID2] [varchar](10) NULL,
	[GameID3] [varchar](10) NULL,
	[GameID4] [varchar](10) NULL,
	[GameID5] [varchar](10) NULL,
	[GameIDC] [varchar](10) NULL,
	[MoveCnt] [tinyint] NULL,
	[Summoner] [tinyint] NOT NULL,
	[RageFighter] [tinyint] NOT NULL,
	[ExpandedWarehouse] [tinyint] NOT NULL,
 CONSTRAINT [PK_AccountCharacter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PeriodItemEx]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeriodItemEx](
	[PeriodIndex] [int] IDENTITY(1,1) NOT NULL,
	[UserGuid] [int] NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[ItemType] [tinyint] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[EffectType1] [tinyint] NULL,
	[EffectType2] [tinyint] NULL,
	[OptionType] [tinyint] NULL,
	[SerialCode] [bigint] NULL,
	[Duration] [bigint] NOT NULL,
	[BuyDateConvert] [bigint] NOT NULL,
	[ExpireDateConvert] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OptionData]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OptionData](
	[Name] [varchar](10) NOT NULL,
	[GameOption] [tinyint] NULL,
	[Qkey] [int] NULL,
	[Wkey] [int] NULL,
	[Ekey] [int] NULL,
	[ChatWindow] [tinyint] NULL,
	[RKey] [int] NULL,
	[QWERLevel] [int] NULL,
	[SkillKey] [binary](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MuCrywolf_DATA]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuCrywolf_DATA](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[CRYWOLF_OCCUFY] [int] NOT NULL,
	[CRYWOLF_STATE] [int] NOT NULL,
	[CHAOSMIX_PLUS_RATE] [int] NOT NULL,
	[CHAOSMIX_MINUS_RATE] [int] NOT NULL,
 CONSTRAINT [PK_MuCrywolf_DATA] PRIMARY KEY CLUSTERED 
(
	[MAP_SVR_GROUP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuCastle_SIEGE_GUILDLIST]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MuCastle_SIEGE_GUILDLIST](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[GUILD_NAME] [varchar](10) NOT NULL,
	[GUILD_ID] [int] NOT NULL,
	[GUILD_INVOLVED] [bit] NOT NULL,
	[GUILD_SCORE] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MuCastle_REG_SIEGE]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MuCastle_REG_SIEGE](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[REG_SIEGE_GUILD] [varchar](8) NOT NULL,
	[REG_MARKS] [int] NOT NULL,
	[IS_GIVEUP] [tinyint] NOT NULL,
	[SEQ_NUM] [int] NOT NULL,
 CONSTRAINT [IX_ATTACK_GUILD_SUBKEY] UNIQUE NONCLUSTERED 
(
	[MAP_SVR_GROUP] ASC,
	[REG_SIEGE_GUILD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MuCastle_NPC]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuCastle_NPC](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[NPC_NUMBER] [int] NOT NULL,
	[NPC_INDEX] [int] NOT NULL,
	[NPC_DF_LEVEL] [int] NOT NULL,
	[NPC_RG_LEVEL] [int] NOT NULL,
	[NPC_MAXHP] [int] NOT NULL,
	[NPC_HP] [int] NOT NULL,
	[NPC_X] [tinyint] NOT NULL,
	[NPC_Y] [tinyint] NOT NULL,
	[NPC_DIR] [tinyint] NOT NULL,
	[NPC_CREATEDATE] [datetime] NOT NULL,
 CONSTRAINT [IX_NPC_SUBKEY] UNIQUE NONCLUSTERED 
(
	[MAP_SVR_GROUP] ASC,
	[NPC_NUMBER] ASC,
	[NPC_INDEX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuCastle_MONEY_STATISTICS]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuCastle_MONEY_STATISTICS](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[LOG_DATE] [datetime] NOT NULL,
	[MONEY_CHANGE] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuCastle_DATA]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MuCastle_DATA](
	[MAP_SVR_GROUP] [int] NOT NULL,
	[SIEGE_START_DATE] [datetime] NOT NULL,
	[SIEGE_END_DATE] [datetime] NOT NULL,
	[SIEGE_GUILDLIST_SETTED] [bit] NOT NULL,
	[SIEGE_ENDED] [bit] NOT NULL,
	[CASTLE_OCCUPY] [bit] NOT NULL,
	[OWNER_GUILD] [varchar](8) NOT NULL,
	[MONEY] [money] NOT NULL,
	[TAX_RATE_CHAOS] [int] NOT NULL,
	[TAX_RATE_STORE] [int] NOT NULL,
	[TAX_HUNT_ZONE] [int] NOT NULL,
 CONSTRAINT [PK_MuCastle_DATA] PRIMARY KEY CLUSTERED 
(
	[MAP_SVR_GROUP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mu_DBID]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mu_DBID](
	[DESC] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USE_TIME]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USE_TIME](
	[jongyang_guid] [int] NOT NULL,
	[use_minute] [int] NOT NULL,
	[use_month] [int] NOT NULL,
	[use_year] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_WaitFriend]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_WaitFriend](
	[GUID] [int] NOT NULL,
	[FriendGuid] [int] NOT NULL,
	[FriendName] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_User_CheckSum]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_User_CheckSum](
	[AccountID] [varchar](10) NOT NULL,
	[WHCheckSum] [int] NOT NULL,
 CONSTRAINT [PK_T_User_CheckSum] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SkillTree_Info]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SkillTree_Info](
	[CHAR_NAME] [varchar](10) NOT NULL,
	[MASTER_LEVEL] [smallint] NULL,
	[ML_EXP] [bigint] NULL,
	[ML_NEXTEXP] [bigint] NULL,
	[ML_POINT] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CHAR_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Serial_Bank]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Serial_Bank](
	[F_Serial_Guid] [int] IDENTITY(1,1) NOT NULL,
	[P_Serial_1] [char](4) NOT NULL,
	[P_Serial_2] [char](4) NOT NULL,
	[P_Serial_3] [char](4) NOT NULL,
	[F_Serial_Section] [smallint] NOT NULL,
	[F_Member_Guid] [int] NULL,
	[F_Member_Id] [char](10) NULL,
	[F_Register_Section] [smallint] NULL,
	[F_Register_Date] [smalldatetime] NULL,
	[F_Create_Date] [smalldatetime] NOT NULL,
	[F_RegisterCheck] [bit] NOT NULL,
 CONSTRAINT [PK_T_Serial_Bank] PRIMARY KEY NONCLUSTERED 
(
	[P_Serial_1] ASC,
	[P_Serial_2] ASC,
	[P_Serial_3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Register_Info]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Register_Info](
	[F_Register_Section] [smallint] NOT NULL,
	[F_Register_Name] [varchar](50) NOT NULL,
	[F_Register_TotalCount] [int] NOT NULL,
 CONSTRAINT [PK_T_Register_Info] PRIMARY KEY CLUSTERED 
(
	[F_Register_Section] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RegCount_Check]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RegCount_Check](
	[AccountID] [varchar](10) NOT NULL,
	[RegCount] [int] NOT NULL,
	[RegAlready] [bit] NOT NULL,
 CONSTRAINT [PK_T_RegCount_Check] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_QUEST_MONSTERKILL]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_QUEST_MONSTERKILL](
	[CHAR_NAME] [varchar](10) NOT NULL,
	[QUEST_INDEX] [smallint] NULL,
	[MON_INDEX_1] [smallint] NULL,
	[KILL_COUNT_1] [smallint] NULL,
	[MON_INDEX_2] [smallint] NULL,
	[KILL_COUNT_2] [smallint] NULL,
	[MON_INDEX_3] [smallint] NULL,
	[KILL_COUNT_3] [smallint] NULL,
	[MON_INDEX_4] [smallint] NULL,
	[KILL_COUNT_4] [smallint] NULL,
	[MON_INDEX_5] [smallint] NULL,
	[KILL_COUNT_5] [smallint] NULL,
 CONSTRAINT [PK__T_QUEST___4187F8A75BE2A6F2] PRIMARY KEY CLUSTERED 
(
	[CHAR_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_QUEST_EXP_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_QUEST_EXP_INFO](
	[nINDEX] [int] IDENTITY(1,1) NOT NULL,
	[CHAR_NAME] [varchar](10) NOT NULL,
	[EPISODE] [smallint] NOT NULL,
	[QUEST_SWITCH] [smallint] NOT NULL,
	[ASK_INDEX] [varbinary](5) NOT NULL,
	[ASK_VALUE] [varbinary](5) NOT NULL,
	[ASK_STATE] [varbinary](5) NOT NULL,
	[PROG_STATE] [smallint] NULL,
	[QUEST_START_DATE] [datetime] NULL,
	[QUEST_END_DATE] [datetime] NULL,
	[StartDateConvert] [bigint] NOT NULL,
	[EndDateConvert] [bigint] NOT NULL,
 CONSTRAINT [PK__T_QUEST___F1AD00EC59063A47] PRIMARY KEY CLUSTERED 
(
	[nINDEX] ASC,
	[CHAR_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_QuestExpUserInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[WZ_QuestExpUserInfo]
	@CharacterName	varchar(10),
	@QuestIndex	int,
	@AskIndex	varbinary(5),
	@AskValue	varbinary(5),
	@AskState	varbinary(5)
as 
BEGIN

	DECLARE @ErrorCode int
	DECLARE @QuestIndexID int

	SET @ErrorCode = 0

	SET XACT_ABORT ON
	Set		nocount on 		
	begin transaction


	SELECT  @QuestIndexID = QUEST_INDEX FROM T_QUEST_EXP WHERE QUEST_INDEX = @QuestIndex AND CHAR_NAME = @CharacterName

	IF ( @QuestIndexID != 0 )
	BEGIN
		UPDATE T_QUEST_EXP SET QUEST_INDEX = @QuestIndex WHERE QUEST_INDEX = @QuestIndex AND CHAR_NAME = @CharacterName
	END

	INSERT INTO T_QUEST_EXP (CHAR_NAME, QUEST_INDEX, ASK_INDEX, ASK_VALUE, ASK_STATE) VALUES
	( @CharacterName, @QuestIndex, @AskIndex, @AskValue, @AskState )

	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = 2
	END

	IF ( @ErrorCode  <> 0 )
		rollback transaction
	ELSE
		commit transaction

	SELECT @ErrorCode

	Set 	nocount off 
	SET XACT_ABORT OFF
END
GO
/****** Object:  Table [dbo].[T_PetItem_Info]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PetItem_Info](
	[ItemSerial] [int] NOT NULL,
	[Pet_Level] [smallint] NULL,
	[Pet_Exp] [int] NULL,
 CONSTRAINT [PK_T_Pet_Info] PRIMARY KEY CLUSTERED 
(
	[ItemSerial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PeriodItem_Info]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PeriodItem_Info](
	[PeriodIndex] [int] IDENTITY(1,1) NOT NULL,
	[UserGuid] [int] NOT NULL,
	[CharacterName] [char](10) NOT NULL,
	[ItemCode] [int] NOT NULL,
	[EffectType1] [tinyint] NOT NULL,
	[EffectType2] [tinyint] NULL,
	[UsedTime] [int] NOT NULL,
	[LeftTime] [int] NOT NULL,
	[BuyDate] [smalldatetime] NOT NULL,
	[ExpireDate] [smalldatetime] NOT NULL,
	[UsedInfo] [tinyint] NOT NULL,
	[OptionType] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PCBANG_POINT_RANKING_EVENT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PCBANG_POINT_RANKING_EVENT](
	[memb_name] [varchar](10) NOT NULL,
	[RankingPoint] [int] NOT NULL,
	[LastBuyDate] [datetime] NULL,
 CONSTRAINT [PK_T_PCBANG_POINT_RANKING_EVENT] PRIMARY KEY CLUSTERED 
(
	[memb_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PCBANG_POINT_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PCBANG_POINT_INFO](
	[memb___id] [varchar](10) NOT NULL,
	[PCBangPoint] [int] NOT NULL,
	[Hour] [smallint] NULL,
	[Year] [smallint] NULL,
	[Month] [smallint] NULL,
	[Day] [smallint] NULL,
 CONSTRAINT [PK_T_PCBANG_POINT_INFO] PRIMARY KEY CLUSTERED 
(
	[memb___id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Pcbang_FreeAccount]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Pcbang_FreeAccount](
	[Pcbang_Guid] [int] NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_T_Pcbang_FreeAccount] PRIMARY KEY CLUSTERED 
(
	[Pcbang_Guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PAYITEM_COUNT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PAYITEM_COUNT](
	[AccountID] [varchar](10) NOT NULL,
	[GetItemCount] [int] NULL,
 CONSTRAINT [PK_T_PAYITEM_COUNT] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MU2003_EVENT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MU2003_EVENT](
	[AccountID] [varchar](50) NOT NULL,
	[EventChips] [smallint] NOT NULL,
	[MuttoIndex] [int] NOT NULL,
	[MuttoNumber] [int] NOT NULL,
	[Check_Code] [char](1) NOT NULL,
 CONSTRAINT [PK_T_MU2003_EVENT_1] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MacroInfo]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MacroInfo](
	[AccountID] [varchar](10) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[MacroInfo] [varbinary](256) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_LUCKY_ITEM_INFO]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_LUCKY_ITEM_INFO](
	[nIndex] [int] IDENTITY(1,1) NOT NULL,
	[UserGuid] [int] NOT NULL,
	[CharName] [varchar](10) NOT NULL,
	[ItemCode] [int] NOT NULL,
	[ItemSerial] [bigint] NOT NULL,
	[DurabilitySmall] [smallint] NOT NULL,
 CONSTRAINT [PK_T_LUCKY_ITEM_INFO] PRIMARY KEY CLUSTERED 
(
	[CharName] ASC,
	[ItemCode] ASC,
	[ItemSerial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_KanturuTimeAttackEvent2006]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_KanturuTimeAttackEvent2006](
	[AccountID] [varchar](10) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[ServerCode] [smallint] NOT NULL,
	[BattleID] [varchar](13) NOT NULL,
	[StageNum] [tinyint] NOT NULL,
	[ClearTime] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Experience] [int] NOT NULL,
	[RegDate] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_REG_ILLUSION_TEMPLE_RANKPOINT]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REG_ILLUSION_TEMPLE_RANKPOINT]
   @AccountID      varchar(10),
   @Name         varchar(10),
   @Server_code      smallint,
   @IT_Number      tinyint,
   @Class         smallint,
   @Level         int,
   @Win         tinyint,
   @iPCRoom      int,
   @ExpGained      int
   
AS
BEGIN
   BEGIN TRANSACTION
   
   SET NOCOUNT ON   
   
   DECLARE @Wins INT
   DECLARE @Exp INT

   IF EXISTS (SELECT * FROM T_Illusion_Temple_Rank WHERE AccountID = @AccountID AND Name = @Name)
   BEGIN
      SELECT @Wins = Wins, @Exp = Exp FROM T_Illusion_Temple_Rank WHERE AccountID = @AccountID AND Name = @Name
      UPDATE T_Illusion_Temple_Rank SET Level = @Level, Class = @Class, IT_Number = @IT_Number, Wins = @Wins + @Win, Exp = @Exp + @ExpGained WHERE AccountID = @AccountID AND Name = @Name
   END
   ELSE
   BEGIN
      INSERT INTO T_Illusion_Temple_Rank VALUES (@AccountID, @Name, @Class, @Level, @IT_Number, @Wins, @Exp) 
   END

   IF(@@Error <> 0 )
      ROLLBACK TRANSACTION
   ELSE   
      COMMIT TRANSACTION
   
   SET NOCOUNT OFF   
END
GO
/****** Object:  Table [dbo].[T_GoldenArcher_EventChip]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GoldenArcher_EventChip](
	[AccountID] [varchar](10) NOT NULL,
	[RenaCount] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_FriendMain]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_FriendMain](
	[GUID] [int] NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[FriendCount] [tinyint] NULL,
	[MemoCount] [int] NULL,
	[MemoTotal] [int] NULL,
 CONSTRAINT [PK_T_FriendMain] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_FriendMail]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_FriendMail](
	[MemoIndex] [int] NOT NULL,
	[GUID] [int] NOT NULL,
	[FriendName] [varchar](10) NULL,
	[wDate] [smalldatetime] NOT NULL,
	[Subject] [varchar](50) NULL,
	[bRead] [bit] NOT NULL,
	[Memo] [varbinary](1000) NULL,
	[Photo] [binary](18) NULL,
	[Dir] [tinyint] NULL,
	[Act] [tinyint] NULL,
 CONSTRAINT [PK_T_FriendMemo] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC,
	[MemoIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_FriendList]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_FriendList](
	[GUID] [int] NOT NULL,
	[FriendGuid] [int] NULL,
	[FriendName] [varchar](10) NULL,
	[Del] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ENTER_CHECK_ILLUSION_TEMPLE]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ENTER_CHECK_ILLUSION_TEMPLE](
	[AccountID] [varchar](10) NOT NULL,
	[CharName] [varchar](10) NOT NULL,
	[ServerCode] [tinyint] NOT NULL,
	[TodayEnterCount] [tinyint] NOT NULL,
	[LastEnterDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_T_ENTER_CHECK_ILLUSION_TEMPLE] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[CharName] ASC,
	[ServerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ENTER_CHECK_BC]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ENTER_CHECK_BC](
	[AccountID] [varchar](10) NOT NULL,
	[CharName] [varchar](10) NOT NULL,
	[ServerCode] [smallint] NOT NULL,
	[ToDayEnterCount] [tinyint] NOT NULL,
	[LastEnterDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_T_ENTER_CHECK_DS] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[CharName] ASC,
	[ServerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CurCharName]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CurCharName](
	[Name] [char](10) NOT NULL,
	[cDate] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CGuid]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CGuid](
	[GUID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_T_CGuid] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CC_OFFLINE_GIFTNAME]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CC_OFFLINE_GIFTNAME](
	[GiftKind] [int] NOT NULL,
	[GiftName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_T_CC_OFFLINE_GIFTNAME] PRIMARY KEY CLUSTERED 
(
	[GiftKind] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CC_OFFLINE_GIFT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_CC_OFFLINE_GIFT](
	[Guid] [int] IDENTITY(1,1) NOT NULL,
	[Server] [int] NULL,
	[AccountID] [varchar](10) NULL,
	[CharName] [varchar](10) NULL,
	[GiftKind] [int] NOT NULL,
	[Date_Give] [smalldatetime] NOT NULL,
	[Date_Reg] [smalldatetime] NULL,
	[RegCheck] [tinyint] NOT NULL,
 CONSTRAINT [PK_T_CC_OFFLINE_GIFT] PRIMARY KEY NONCLUSTERED 
(
	[Guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Bill_Section]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[T_Bill_Section](
	[Bill_Start_Date] [char](10) NULL,
	[Bill_End_Date] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Bill_Current]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[T_Bill_Current](
	[Member_Guid] [int] NOT NULL,
	[Member_Time] [char](10) NULL,
	[Member_Date_A] [char](10) NULL,
	[Member_Date_B] [char](10) NULL,
	[Member_Date_C] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BC_PCROOM_PLAYCOUNT]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT](
	[PCROOM_GUID] [int] NOT NULL,
	[AccountID] [varchar](50) NOT NULL,
	[PlayCount] [int] NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_T_BC_PCROOM_PLAYCOUNT] PRIMARY KEY CLUSTERED 
(
	[PCROOM_GUID] ASC,
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_3rd_Quest_Info]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_3rd_Quest_Info](
	[CHAR_NAME] [varchar](10) NOT NULL,
	[QUEST_INDEX] [smallint] NULL,
	[MON_INDEX_1] [smallint] NULL,
	[KILL_COUNT_1] [smallint] NULL,
	[MON_INDEX_2] [smallint] NULL,
	[KILL_COUNT_2] [smallint] NULL,
	[MON_INDEX_3] [smallint] NULL,
	[KILL_COUNT_3] [smallint] NULL,
	[MON_INDEX_4] [smallint] NULL,
	[KILL_COUNT_4] [smallint] NULL,
	[MON_INDEX_5] [smallint] NULL,
	[KILL_COUNT_5] [smallint] NULL,
 CONSTRAINT [PK_T_3rd_Quest_Info1] PRIMARY KEY CLUSTERED 
(
	[CHAR_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_PCBANG_POINT_RANKING_EVENT]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATE_PCBANG_POINT_RANKING_EVENT]

   @Name   varchar(10),
   @Point   int
AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   BEGIN TRANSACTION
   SET NOCOUNT ON
   IF EXISTS ( SELECT * FROM T_PCBANG_POINT_RANKING_EVENT WHERE memb_name = @Name )
   BEGIN
      UPDATE T_PCBANG_POINT_RANKING_EVENT SET RankingPoint = RankingPoint+@Point, LastBuyDate = GETDATE() WHERE memb_name = @Name
      END
   ELSE
   BEGIN
      INSERT INTO T_PCBANG_POINT_RANKING_EVENT (memb_name, RankingPoint, LastBuyDate) VALUES (@Name, @Point, GETDATE())
      END
      
   IF(@@Error <> 0 )
      ROLLBACK TRANSACTION
   ELSE   
      COMMIT TRANSACTION

   SET NOCOUNT OFF   
   
      
   

    -- Insert statements for procedure here
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_PAYITEM]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SET_PAYITEM]
	@AccountID varchar(10),
	@Unknown int
AS
BEGIN
	SET NOCOUNT ON

    DECLARE @ItemGetCount INT
    IF EXISTS (SELECT *  FROM T_PAYITEM_COUNT WHERE AccountID = @AccountID)
    BEGIN
		SELECT @ItemGetCount = GetItemCount FROM T_PAYITEM_COUNT WHERE AccountID = @AccountID
		IF (@ItemGetCount >= 6)
		BEGIN
		SELECT 0 AS IsFirst, 3 AS ResultCode
		END
		ELSE
		BEGIN
		SELECT 0 AS IsFirst, 0 AS ResultCode
		UPDATE T_PAYITEM_COUNT SET GetItemCount=GetItemCount+@Unknown WHERE AccountID = @AccountID
		END
		END
	ELSE
	BEGIN
		SELECT 1 AS IsFirst, 0 AS ResultCode
		INSERT INTO T_PAYITEM_COUNT (AccountID, GetItemCount) VALUES (@AccountID, 1)
		END
	END
	SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_REQ_PCBANG_POINT_UPDATE2]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REQ_PCBANG_POINT_UPDATE2]
	@unk			int, /* I dont know what is it, it always 0... */
	@AccountID		varchar(10),
	@PCPoint		int,
	@ResetYear		datetime
As
Begin
	BEGIN TRANSACTION
	SET NOCOUNT ON
	
	UPDATE T_PCBANG_POINT_INFO SET PCBangPoint=@PCPoint WHERE memb___id = @AccountID
	SELECT 1 As Result
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
/****** Object:  StoredProcedure [dbo].[SP_REQ_PCBANG_POINT_INFO2]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REQ_PCBANG_POINT_INFO2]
	@unk			int,
	@AccountID		varchar(10)
As
Begin
	BEGIN TRANSACTION
	SET NOCOUNT ON
	
	DECLARE @PCBANGPOINT INT
	DECLARE @YEAR INT
	DECLARE @MONTH INT
	DECLARE @DAY INT
	DECLARE @HOUR INT
	

	IF EXISTS (SELECT * FROM T_PCBANG_POINT_INFO WHERE memb___id = @AccountID)
	BEGIN
		SELECT @PCBANGPOINT = PCBangPoint, @YEAR = Year, @MONTH = MONTH, @DAY = DAY, @HOUR = Hour FROM T_PCBANG_POINT_INFO WHERE
		memb___id = @AccountID
		SELECT @PCBANGPOINT As Result, @YEAR As ResetYear, @MONTH As ResetMonth, @DAY As ResetDay, @HOUR As ResetHour
		END
	ELSE
	BEGIN
		INSERT INTO T_PCBANG_POINT_INFO (memb___id, PCBangPoint, Year, Month, Day, Hour) VALUES (@AccountID, 0, 2011, 12, 31, 23)
		SELECT @PCBANGPOINT = PCBangPoint, @YEAR = YEAR, @MONTH = MONTH, @DAY = DAY, @HOUR = Hour FROM T_PCBANG_POINT_INFO WHERE
		memb___id = @AccountID
		SELECT @PCBANGPOINT As Result, @YEAR As ResetYear, @MONTH As ResetMonth, @DAY As ResetDay, @HOUR As ResetHour
		END
	
		

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
/****** Object:  StoredProcedure [dbo].[SP_REG_SERIAL]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_REG_SERIAL]
	@AccountID		varchar(10),	@MembGUID		int,	@SERIAL1		varchar(4),	@SERIAL2		varchar(4),	@SERIAL3		varchar(4)AS
BEGIN	BEGIN TRANSACTION
	SET NOCOUNT ON	
	DECLARE @MAX_REGCOUNT	INT	DECLARE @iREG_COUNT	INT	DECLARE @iREG_ALREADY	BIT
	SET @MAX_REGCOUNT 	= 10	SET @iREG_ALREADY	= 0
	IF EXISTS ( SELECT * FROM T_RegCount_Check  WITH (READUNCOMMITTED) 
				WHERE AccountID = @AccountID)	BEGIN	
		SELECT @iREG_ALREADY = RegAlready FROM T_RegCount_Check WHERE AccountID = @AccountID
		IF (@iREG_ALREADY = 1 )
		BEGIN			SELECT 5 As RegResult, 0 As F_Register_Section		END		ELSE		BEGIN			SELECT @iREG_COUNT = RegCount 
			FROM T_RegCount_Check
			WHERE AccountID = @AccountID
			IF (@iREG_COUNT >= @MAX_REGCOUNT)
			BEGIN				SET @iREG_ALREADY = 1
				SELECT 1 As RegResult, 0 As F_Register_Section
			END			ELSE			BEGIN				UPDATE T_RegCount_Check
				SET RegCount = RegCount + 1
				WHERE AccountID = @AccountID
			END		END
	END	ELSE	BEGIN		INSERT INTO T_RegCount_Check
		VALUES (@AccountID, default, default)
	END
	IF (@iREG_ALREADY =1)
	BEGIN
		IF(@@Error <> 0 )
			ROLLBACK TRANSACTION		ELSE				COMMIT TRANSACTION
		SET NOCOUNT OFF	
		RETURN	END
	DECLARE @REG_CHECK	BIT
	IF EXISTS ( SELECT F_RegisterCheck FROM T_Serial_Bank  WITH (READUNCOMMITTED) 
		WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3)
	BEGIN	
		SELECT @REG_CHECK = F_RegisterCheck FROM T_Serial_Bank  WITH (READUNCOMMITTED) 
		WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3
		IF (@REG_CHECK = 0)
		BEGIN
			UPDATE T_Serial_Bank
			SET F_Member_Guid = @MembGUID, F_Member_Id = @AccountID, F_RegisterCheck = 1, F_Register_Date = GetDate()
			WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3
			UPDATE T_RegCount_Check
			SET RegAlready = 1
			WHERE AccountID = @AccountID
			SELECT 0 As RegResult, F_Register_Section
			FROM T_Serial_Bank
			WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3
		END		ELSE		BEGIN
			SELECT 1 As RegResult, 0 As F_Register_Section
		END	END	ELSE	BEGIN		SELECT 3 As RegResult, 0  As F_Register_Section	END
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION	ELSE			COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REG_KANTURU_TIMEATTACK_EVENT]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REG_KANTURU_TIMEATTACK_EVENT]

	@AccountID	varchar(10),
	@Name		varchar(10),
	@ServerCode	smallint,
	@BattleID	varchar(13),
	@StageNum	tinyint,
	@ClearTime	smallint,
	@Level		int,
	@Experience	int
AS
BEGIN
	BEGIN TRANSACTION

	SET 		NOCOUNT ON
	SET		XACT_ABORT ON

	SET		 LOCK_TIMEOUT	1000

	BEGIN
	INSERT T_KanturuTimeAttackEvent2006 VALUES (@AccountID, @Name, @ServerCode, @BattleID, @StageNum, @ClearTime, @Level, @Experience, GetDate() )
	END

	IF( @@Error <>0 )
		ROLLBACK TRANSACTION		
	ELSE
		COMMIT TRANSACTION		

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[_SP_POINT_ACCM_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[_SP_POINT_ACCM_BC]

	@Server		smallint,
	@Bridge		tinyint,
	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int,
	@PCRoomGUID	int
AS
BEGIN	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT CharacterName FROM EVENT_INFO_BC  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName)
		BEGIN		
			DECLARE @iiiPoint	int
			SELECT @iiiPoint = Point FROM EVENT_INFO_BC
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			IF (@iiiPoint + @Point < 0)
			BEGIN
				UPDATE EVENT_INFO_BC
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1 										 										
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC
				SET Point = Point + @Point , Bridge = @Bridge, PlayCount = PlayCount+1 										
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		END
	ELSE
		BEGIN
			INSERT INTO EVENT_INFO_BC (Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount) VALUES (
				@Server,
				@Bridge,
				@AccountID,
				@CharacterName,
				@Class,
				@Point,
				default	
			)
		END

	IF (@PCRoomGUID <> 0)
	BEGIN
		IF EXISTS (SELECT AccountID FROM T_BC_PCROOM_PLAYCOUNT  WITH (READUNCOMMITTED) 
				WHERE  PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID)
		BEGIN
			UPDATE T_BC_PCROOM_PLAYCOUNT
			SET PlayCount = PlayCount + 1, Point = Point + @Point
			WHERE PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID		
		END
		ELSE
		BEGIN
			INSERT INTO T_BC_PCROOM_PLAYCOUNT
			VALUES (@PCRoomGUID, @AccountID, default, @Point)
		END
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[_SP_ENTER_CHECK_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[_SP_ENTER_CHECK_BC]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		SELECT @iNowEnterCheck = ToDayEnterCount 
		FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

		IF (@iNowEnterCheck >= @iMaxEnterCheck)
		BEGIN
			SELECT 0 AS EnterResult
		END
		ELSE
		BEGIN
			UPDATE T_ENTER_CHECK_BC 
			SET ToDayEnterCount = ToDayEnterCount + 1, LastEnterDate = GetDate()
			WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

			SELECT 1 AS EnterResult
		END
		
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC (AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			1,
			DEFAULT
		)
	
		SELECT 1 AS EnterResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MD5_ENCODE_VALUE]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MD5_ENCODE_VALUE] 

	@btInStr		varchar(10),
	@btInStrIndex	varchar(10)
AS  
BEGIN 
	DECLARE	@btOutVal	BINARY(16)

	EXEC master..XP_MD5_EncodeKeyVal @btInStr, @btInStrIndex, @btOutVal OUT
	UPDATE MEMB_INFO SET memb__pwd = @btOutVal WHERE memb___id = @btInStrIndex
	RETURN 	@btOutVal
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LEFT_ENTERCOUNT_ILLUSIONTEMPLE]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_LEFT_ENTERCOUNT_ILLUSIONTEMPLE]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_ILLUSION_TEMPLE  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		SELECT @iMaxEnterCheck - TodayEnterCount As LeftEnterCount FROM T_ENTER_CHECK_ILLUSION_TEMPLE  WITH (READUNCOMMITTED)
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_ILLUSION_TEMPLE (AccountID, CharName, ServerCode, TodayEnterCount, LastEnterDate) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			0,
			GetDate()
		)
	
		SELECT @iMaxEnterCheck As LeftEnterCount
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LEFT_ENTERCOUNT_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_LEFT_ENTERCOUNT_BC]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		SELECT @iMaxEnterCheck - ToDayEnterCount As LeftEnterCount FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED)
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC (AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			0,
			GetDate()
		)
	
		SELECT @iMaxEnterCheck As LeftEnterCount
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_PAYITEM]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery8.sql|7|0|C:\Users\root\AppData\Local\Temp\2\~vsD4FE.sql
CREATE PROCEDURE [dbo].[SP_GET_PAYITEM]
	@AccountID varchar(10),
	@Unknown int
AS
BEGIN
	SET NOCOUNT ON

    DECLARE @ItemGetCount INT
    IF EXISTS (SELECT *  FROM T_PAYITEM_COUNT WHERE AccountID = @AccountID)
    BEGIN
		SELECT @ItemGetCount = GetItemCount FROM T_PAYITEM_COUNT WHERE AccountID = @AccountID
		IF (@ItemGetCount >= 6) -- You can change it for your own needs
		BEGIN
		SELECT 0 AS IsFirst, 3 AS ResultCode
		END
		ELSE
		BEGIN
		SELECT 0 AS IsFirst, 0 AS ResultCode
		END
		END
	ELSE
	BEGIN
		SELECT 1 AS IsFirst, 0 AS ResultCode
		END
	END
	SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_ENTER_ILLUSION_TEMPLE]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_ENTER_ILLUSION_TEMPLE]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_ILLUSION_TEMPLE  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		UPDATE T_ENTER_CHECK_ILLUSION_TEMPLE 
		SET TodayEnterCount = TodayEnterCount + 1, LastEnterDate = GetDate()
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_ILLUSION_TEMPLE (AccountID, CharName, ServerCode, TodayEnterCount, LastEnterDate) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			1,
			DEFAULT
		)
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ENTER_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_ENTER_BC]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		UPDATE T_ENTER_CHECK_BC 
		SET ToDayEnterCount = ToDayEnterCount + 1, LastEnterDate = GetDate()
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC (AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			1,
			DEFAULT
		)
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CHECK_ILLUSION_TEMPLE]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE    [dbo].[SP_CHECK_ILLUSION_TEMPLE]
    @AccountID        varchar(10),    -- 拌沥疙
    @CharacterName    varchar(10),    -- 纳腐疙
    @Server        smallint        -- 辑滚
As
Begin
    DECLARE    @iMaxEnterCheck    INT
    DECLARE    @iNowEnterCheck    INT

    SET        @iMaxEnterCheck    = 6        -- 老老 弥措 涝厘啊瓷 冉荐
    
    BEGIN TRANSACTION
    
    SET NOCOUNT ON    

    IF EXISTS ( SELECT AccountID FROM T_ENTER_CHECK_ILLUSION_TEMPLE  WITH (READUNCOMMITTED)
                WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName )
    BEGIN
        SELECT @iNowEnterCheck = TodayEnterCount
        FROM T_ENTER_CHECK_ILLUSION_TEMPLE  WITH (READUNCOMMITTED)
        WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

        IF (@iNowEnterCheck >= @iMaxEnterCheck)
        BEGIN
            SELECT 0 As EnterResult    -- 荤盔 涝厘 阂啊瓷
        END
        ELSE
        BEGIN
            SELECT 1 As EnterResult    -- 荤盔 涝厘 啊瓷
        END
        
    END
    ELSE
    BEGIN
        SELECT 1 As EnterResult        -- 荤盔 涝厘 啊瓷
    END

    IF(@@Error <> 0 )
        ROLLBACK TRANSACTION
    ELSE    
        COMMIT TRANSACTION

    SET NOCOUNT OFF    
End
GO
/****** Object:  StoredProcedure [dbo].[SP_CHECK_BC]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_CHECK_BC]

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Server		smallint
AS
BEGIN
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName)
	BEGIN
		SELECT @iNowEnterCheck = ToDayEnterCount 
		FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

		IF (@iNowEnterCheck >= @iMaxEnterCheck)
		BEGIN
			SELECT 0 AS EnterResult
		END
		ELSE
		BEGIN
			SELECT 1 AS EnterResult
		END
		
	END
	ELSE
	BEGIN
		SELECT 1 AS EnterResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  Table [dbo].[MEMB_DETA]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMB_DETA](
	[memb_guid] [int] NOT NULL,
	[desc_text] [varchar](5000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GuildMember]    Script Date: 06/16/2014 13:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GuildMember](
	[Name] [varchar](10) NOT NULL,
	[G_Name] [varchar](8) NOT NULL,
	[G_Level] [tinyint] NULL,
	[G_Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_GuildMember] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GensRewardCheck]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[GensRewardCheck]
	@CharacterName	varchar(10)
AS
BEGIN
	DECLARE @Result int
	DECLARE @RewardDate smalldatetime
	
	SET @Result = 0
	
	SET NOCOUNT ON
	SELECT @RewardDate = RewardDate FROM GensMember WHERE Name = @CharacterName
	
	IF( DateAdd(dd, 1, @RewardDate) < GetDate() )
	BEGIN
		SET @Result = 1
	END
	
	SELECT @Result
	
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[GensRankingUpdate]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GensRankingUpdate] (@Influence int)
AS
SET NOCOUNT ON
	DECLARE _Cursor CURSOR FOR
	SELECT Name FROM GensMember WHERE Influence = @Influence AND Contribute >= 10000 order by Contribute desc
     
  	DECLARE @TempName  varchar(10), @TempRank int
   	SET @TempRank = 1
     
    	OPEN _Cursor;
    	FETCH NEXT FROM _Cursor INTO @TempName
    	WHILE @@FETCH_STATUS = 0
     
    		BEGIN
    			UPDATE GensMember SET Rank = @TempRank WHERE Name = @TempName AND Influence = @Influence;
    			SET @TempRank = @TempRank + 1;
    			FETCH NEXT FROM _Cursor INTO @TempName
    		END;

 	CLOSE _Cursor;
 	DEALLOCATE _Cursor;
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_CreateCharacter]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CreateCharacter] 

	@AccountID		varchar(10),
	@Name			varchar(10),
	@Class			tinyint
AS
BEGIN

	SET NOCOUNT ON
	SET	XACT_ABORT ON
	DECLARE		@Result		tinyint
	DECLARE @iGUID int
	SET @Result = 0x00	
	SELECT @iGUID = memb_guid FROM MEMB_INFO WHERE memb___id = @AccountID

	IF EXISTS ( SELECT Name FROM Character WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x01
		GOTO ProcEnd						
	END

	BEGIN TRAN

	IF NOT EXISTS ( SELECT Id FROM  AccountCharacter WHERE Id = @AccountID )
		BEGIN
			INSERT INTO dbo.AccountCharacter(Id, GameID1, GameID2, GameID3, GameID4, GameID5, GameIDC) 
			VALUES(@AccountID, @Name, NULL, NULL, NULL, NULL, NULL)

			SET @Result  = @@Error
		END
	ELSE
		BEGIN
			Declare @g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)						
			SELECT @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5 FROM dbo.AccountCharacter Where Id = @AccountID 			

			IF( ( @g1 Is NULL) OR (Len(@g1) = 0))
				BEGIN
					UPDATE AccountCharacter SET  GameID1 = @Name
					WHERE Id = @AccountID
										
					SET @Result  = @@Error
				END
			ELSE IF( @g2  Is NULL OR Len(@g2) = 0)
				BEGIN
					UPDATE AccountCharacter SET  GameID2 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g3  Is NULL OR Len(@g3) = 0)
				BEGIN	
					UPDATE AccountCharacter SET  GameID3 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g4 Is NULL OR Len(@g4) = 0)
				BEGIN
					UPDATE AccountCharacter SET  GameID4 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g5 Is NULL OR Len(@g5) = 0)
				BEGIN
					UPDATE AccountCharacter SET  GameID5 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END	
			ELSE
				BEGIN		
					SET @Result	= 0x03							
					GOTO TranProcEnd								
				END	 
		END

	IF( @Result <> 0 )
		BEGIN
			GOTO TranProcEnd		
		END
	ELSE
		BEGIN
			INSERT INTO dbo.Character(AccountID, Name, cLevel, LevelUpPoint, Class, Strength, Dexterity, Vitality, Energy, Inventory,MagicList, 
					Life, MaxLife, Mana, MaxMana, MapNumber, MapPosX, MapPosY,  MDate, LDate, Quest, DbVersion, Leadership, ExpandedInventory)
				
			SELECT @AccountID As AccountID, @Name As Name, Level, LevelUpPoint, @Class As Class, 
				Strength, Dexterity, Vitality, Energy, Inventory,MagicList,  Life, MaxLife, Mana, MaxMana, MapNumber, MapPosX, MapPosY,
				getdate() As MDate, getdate() As LDate, Quest, DbVersion, Leadership, 0
			FROM  DefaultClassType WHERE Class = @Class

			SET @Result  = @@Error
		END

TranProcEnd:
	IF ( @Result  <> 0 )
		ROLLBACK TRAN
	ELSE
		COMMIT TRAN

ProcEnd:
	SET NOCOUNT OFF
	SET XACT_ABORT OFF

	SELECT
	   CASE @Result
	      WHEN 0x00 THEN 0x01
	      WHEN 0x01 THEN 0x00
	      WHEN 0x03 THEN 0x03
	      ELSE 0x02
	   END AS Result 
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CONNECT_MEMB]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CONNECT_MEMB]

	@memb___id 	varchar(10),
	@ServerName  	varchar(20),
	@IP 		varchar(15)	
AS
BEGIN

SET NOCOUNT ON
	DECLARE @find_id 		varchar(10)	
	DECLARE @ConnectStat	 tinyint
	SET @find_id = 'NOT'
	SET @ConnectStat = 1

	SELECT @find_id = S.memb___id FROM MEMB_STAT S INNER JOIN MEMB_INFO I ON S.memb___id = I.memb___id 
	      WHERE I.memb___id = @memb___id

	IF( @find_id = 'NOT' )
	BEGIN
		INSERT INTO MEMB_STAT (memb___id,ConnectStat,ServerName,IP,ConnectTM)
		values(@memb___id,  @ConnectStat, @ServerName, @IP, getdate())
	END
	ELSE	
		UPDATE MEMB_STAT SET ConnectStat = @ConnectStat,
					 ServerName = @ServerName,IP = @IP,
					 ConnectTM = getdate()
       	WHERE memb___id = @memb___id
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CharMoveReset]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CharMoveReset] 

	@AccountID		varchar(10),
	@Name			varchar(10)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON	
	
	DECLARE	@Result			tinyint	
	DECLARE	@ResultLowCount		int
	DECLARE	@Class				tinyint
	DECLARE	@Ctl1_Code			tinyint
	DECLARE	@SQLEXEC			varchar(1000)
	DECLARE	@ErrorCheck			INT
	DECLARE 	@g1 				varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)
	DECLARE 	@MoveCnt			 tinyint		
	DECLARE 	@ChangeMoveCnt		tinyint		
	DECLARE	@SqlStmt			VARCHAR(700)		
	DECLARE	@SqlStmt2			VARCHAR(700)		

	SET LOCK_TIMEOUT	1000
	SET @Result = 0x00	
	SET @ErrorCheck = 0x00

	SELECT @Class = Class, @Ctl1_Code = CtlCode FROM Character WHERE Name = @Name
	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error
					
	IF @ResultLowCount = 0 
	BEGIN
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	END

	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	IF  ( (@Ctl1_Code & 127 ) > 0 )
	BEGIN
		SET @Result	= 0x03			
		GOTO ON_ERROR						
	END 

	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @MoveCnt = MoveCnt 
	FROM dbo.AccountCharacter WHERE Id = @AccountID 		
	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	IF @ResultLowCount = 0 
	BEGIN
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	END

	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	SET @MoveCnt =  0

	SET @SqlStmt = 'UPDATE AccountCharacter  '

	IF ( @g1 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g2 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g3 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g4 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g5 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE 				
		SET @Result	= 0x05

	IF ( @Result <> 0 )
		GOTO ON_ERROR

	SET @SqlStmt = @SqlStmt + ' MoveCnt =  ' + CONVERT(VARCHAR, @MoveCnt )					
	SET @SqlStmt = @SqlStmt + ' WHERE Id =  ''' + @AccountID	 + ''''				
	SET @SqlStmt2 = 'UPDATE Character '
	SET @SqlStmt2 = @SqlStmt2 + 'SET  '
	SET @SqlStmt2 = @SqlStmt2 + 'CtlCode = ' + CONVERT(VARCHAR, @Ctl1_Code & 127)
	SET @SqlStmt2 = @SqlStmt2 + ' WHERE Name = ''' +  @Name + ''''

	BEGIN TRANSACTION 

	EXEC(@SqlStmt)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	EXEC(@SqlStmt2)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR


ON_TRN_ERROR:
	IF ( @Result  <> 0 ) OR (@ErrorCheck <> 0)
	BEGIN
		IF @Result = 0 
			SET @Result = 0x09

		ROLLBACK TRAN
	END
	ELSE
		COMMIT TRAN

ON_ERROR:
	IF @ErrorCheck <> 0
	BEGIN
		SET @Result = 0x09
	END 

	SELECT @Result	

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  View [dbo].[vCharacterPreview]    Script Date: 06/16/2014 13:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCharacterPreview]

AS SELECT Name, cLevel, Class, Inventory, CtlCode, DbVersion FROM Character
GO
/****** Object:  StoredProcedure [dbo].[USP_BloodCastle5_Ranking]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_BloodCastle5_Ranking]

	@BridgeSearch	tinyint
AS

SET NOCOUNT ON

	SELECT TOP 50  T1.CharacterName, T1.Server, 0 AS Point, MAX(T1.MinLeftTime) as MinLeftTime, T1.Bridge, 

	(SELECT TOP 1 T2.AlivePartyCount FROM EVENT_INFO_BC_5TH T2 WHERE T1.CharacterName = T2.CharacterName AND T1.Server = T2.Server 
	 AND T1.Bridge = T2.Bridge AND T1.AccountID = T2.AccountID AND T2.AlivePartyCount >= 5 ORDER BY T2.MinLeftTime DESC) AS AlivePartyCount,

	(SELECT TOP 1 Convert(char(8),T3.RegDate,112) FROM EVENT_INFO_BC_5TH T3 WHERE T1.CharacterName = T3.CharacterName AND T1.Server = T3.Server 
	 AND T1.Bridge = T3.Bridge AND T1.AccountID = T3.AccountID AND T3.AlivePartyCount >= 5 ORDER BY T3.MinLeftTime DESC, T3.RegDate) AS RegDate
	FROM EVENT_INFO_BC_5TH  T1 WHERE AlivePartyCount > 4 AND T1.Server <> 13 

	GROUP BY T1.CharacterName,T1.Server, T1.Bridge,T1.AccountID
	Having  T1.Bridge = @BridgeSearch

	ORDER BY AlivePartyCount DESC, MinLeftTime DESC, RegDate, T1.Server
			
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_REG_CC_OFFLINE_GIFT]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_REG_CC_OFFLINE_GIFT]

	@AccountID		varchar(10),	
	@CharName		varchar(10),	
	@ServerCode		int
AS
BEGIN
	BEGIN TRANSACTION

	DECLARE @iGIFT_GUID	INT
	DECLARE @iGIFT_KIND	INT
	DECLARE @iGIFT_NAME	VARCHAR(50)
	
	SET NOCOUNT ON

		IF EXISTS (SELECT TOP 1 Guid FROM T_CC_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = 0 ORDER BY Guid ASC)
		BEGIN
			SELECT TOP 1 @iGIFT_GUID = Guid, @iGIFT_KIND = GiftKind  FROM T_CC_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = 0 ORDER BY Guid ASC
	
			UPDATE T_CC_OFFLINE_GIFT SET Server = @ServerCode, AccountID = @AccountID, CharName = @CharName, Date_Reg = GetDate(), RegCheck = 1 WHERE Guid = @iGIFT_GUID
	
			SELECT @iGIFT_NAME = GiftName FROM T_CC_OFFLINE_GIFTNAME WHERE GiftKind = @iGIFT_KIND
	
			SELECT 1 As ResultCode, @iGIFT_NAME As GiftName
		END
		ELSE
		BEGIN
			SELECT 0 As ResultCode, '' As GiftName
		END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_POINT_ACCUMULATION]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[SP_POINT_ACCUMULATION]

	@Server		smallint,
	@Square		tinyint,
	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int
AS
BEGIN	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS (SELECT CharacterName FROM EVENT_INFO  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName)
		BEGIN	
			UPDATE EVENT_INFO
			SET Point = Point + @Point , Square = @Square 										
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName		
		END
	ELSE
		BEGIN
			INSERT INTO EVENT_INFO (Server, Square, AccountID, CharacterName, Class, Point) VALUES (
				@Server,
				@Square,
				@AccountID,
				@CharacterName,
				@Class,
				@Point	
			)	
		END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_POINT_ACCM_BC_5TH]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE	[dbo].[SP_POINT_ACCM_BC_5TH]

	@Server		smallint,
	@Bridge		tinyint,
	@AccountID	 	varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint,
	@Point			int,
	@LeftTime		int,
	@AlivePartyCount	int
AS
BEGIN	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE @RegDate	SMALLDATETIME
	SET @RegDate = CAST(DATEPART(YY, GetDate()) AS VARCHAR(4)) + '-' + CAST(DATEPART(MM, GetDate()) AS VARCHAR(2)) + '-' + CAST(DATEPART(DD, GetDate()) AS VARCHAR(2)) + ' 00:00:00'

	IF EXISTS (SELECT CharacterName FROM EVENT_INFO_BC_5TH  WITH (READUNCOMMITTED) 
				WHERE RegDate = @RegDate AND Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName)
		BEGIN			
			DECLARE @iiiPoint		int
			DECLARE @iMinLeftTime		int
			DECLARE @iAlivePartyCount	int
			DECLARE @iMaxPointLeftTime	int

			SELECT @iiiPoint = Point, @iMinLeftTime = MinLeftTime, @iAlivePartyCount = AlivePartyCount, @iMaxPointLeftTime = MaxPointLeftTime
			FROM EVENT_INFO_BC_5TH
			WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			IF (@iiiPoint < @Point)
			BEGIN
				IF (@Point > 0)
				BEGIN
					SET @iiiPoint = @Point
					SET @iMaxPointLeftTime = @LeftTime
				END
			END

			IF (@iiiPoint = @Point)
			BEGIN
				IF (@Point > 0)
				BEGIN
					IF (@iMaxPointLeftTime < @LeftTime)
					BEGIN
						SET @iMaxPointLeftTime = @LeftTime
					END
				END
			END

			IF (@iAlivePartyCount <= @AlivePartyCount)
			BEGIN
				IF (@iMinLeftTime < @LeftTime)
				BEGIN
					IF (@Point > 0)
					BEGIN
						SET @iMinLeftTime = @LeftTime
					END
				END
				SET @iAlivePartyCount = @AlivePartyCount
			END

			IF (@iiiPoint < 0)
			BEGIN
				UPDATE EVENT_INFO_BC_5TH
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime, AlivePartyCount = @iAlivePartyCount, MaxPointLeftTime = @iMaxPointLeftTime
				WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC_5TH
				SET Point = @iiiPoint, Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime, AlivePartyCount = @iAlivePartyCount, MaxPointLeftTime = @iMaxPointLeftTime
				WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		END
	ELSE
		BEGIN
			IF (@Point < 0)
			BEGIN
				INSERT INTO EVENT_INFO_BC_5TH (Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime, MinLeftTime, RegDate, AlivePartyCount, MaxPointLeftTime) VALUES (
					@Server,
					@Bridge,
					@AccountID,
					@CharacterName,
					@Class,
					0,
					1,
					0,
					0,
					@RegDate,
					0,
					0
				)
			END
			ELSE
			BEGIN
				INSERT INTO EVENT_INFO_BC_5TH (Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime, MinLeftTime, RegDate, AlivePartyCount, MaxPointLeftTime) VALUES (
					@Server,
					@Bridge,
					@AccountID,
					@CharacterName,
					@Class,
					@Point,
					1,
					@LeftTime,
					@LeftTime,
					@RegDate,
					@AlivePartyCount,
					@LeftTime
				)
			END

		END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[GameShopStorageSelect]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GameShopStorageSelect]
	@AccountID	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @Index int

	SET @Index = 0
	SET @ErrorCode = 0

	SET NOCOUNT ON
	DECLARE CUR CURSOR FOR SELECT [Index] FROM GameShopStorage WHERE AccountID = @AccountID FOR UPDATE

	OPEN CUR

	FETCH NEXT FROM CUR INTO @Index
	WHILE( @@fetch_status <> -1 )
	BEGIN
		FETCH NEXT FROM CUR INTO @Index
	END

	SELECT * FROM GameShopStorage where AccountID = @AccountID
	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = -1
	END

	CLOSE CUR
	DEALLOCATE CUR

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqNpcUpgrade]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_ReqNpcUpgrade]

	@iMapSvrGroup		SMALLINT,
	@iNpcNumber		INT,
	@iNpcIndex		INT,
	@iNpcUpType		INT,
	@iNpcUpValue		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		IF (@iNpcUpType = 1)
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_DF_LEVEL = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult
		END
		ELSE IF (@iNpcUpType = 2)
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_RG_LEVEL = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult
		END
		ELSE IF (@iNpcUpType = 3)
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_MAXHP = @iNpcUpValue, NPC_HP = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult
		END
		ELSE
		BEGIN
			SELECT 2 As QueryResult
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqNpcUpdate]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ReqNpcUpdate]

	@iMapSvrGroup		SMALLINT,
	@iNpcNumber		INT,
	@iNpcIndex		INT,
	@iNpcDfLevel		INT,
	@iNpcRgLevel		INT,
	@iNpcMaxHp		INT,
	@iNpcHp		INT,
	@btNpcX		TINYINT,
	@btNpcY		TINYINT,
	@btNpcDIR		TINYINT
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		
		UPDATE MuCastle_NPC
		SET	NPC_NUMBER		= @iNpcNumber, 
			NPC_INDEX		= @iNpcIndex, 
			NPC_DF_LEVEL	= @iNpcDfLevel, 
			NPC_RG_LEVEL	= @iNpcRgLevel, 
			NPC_MAXHP		= @iNpcMaxHp, 
			NPC_HP		= @iNpcHp,
			NPC_X			= @btNpcX,
			NPC_Y			= @btNpcY, 
			NPC_DIR		= @btNpcDIR
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	END
	ELSE
	BEGIN

		INSERT INTO MuCastle_NPC VALUES (
			@iMapSvrGroup	,
			@iNpcNumber,
			@iNpcIndex,
			@iNpcDfLevel,
			@iNpcRgLevel,
			@iNpcMaxHp,
			@iNpcHp,
			@btNpcX,
			@btNpcY,
			@btNpcDIR,
			GetDate()
		)
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqNpcRepair]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ReqNpcRepair]

	@iMapSvrGroup		SMALLINT,
	@iNpcNumber		INT,
	@iNpcIndex		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		UPDATE MuCastle_NPC 
		SET  NPC_HP = NPC_MAXHP
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex

		SELECT 1 As QueryResult, NPC_HP, NPC_MAXHP
		FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult, 0 As NPC_HP, 0 As NPC_MAXHP
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqNpcRemove]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ReqNpcRemove]

	@iMapSvrGroup		SMALLINT,
	@iNpcNumber		INT,
	@iNpcIndex		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		DELETE MuCastle_NPC
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqNpcBuy]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ReqNpcBuy]

	@iMapSvrGroup		SMALLINT,
	@iNpcNumber		INT,
	@iNpcIndex		INT,
	@iNpcDfLevel		INT,
	@iNpcRgLevel		INT,
	@iNpcMaxHp		INT,
	@iNpcHp		INT,
	@btNpcX		TINYINT,
	@btNpcY		TINYINT,
	@btNpcDIR		TINYINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		SELECT 4 As QueryResult
	END
	ELSE
	BEGIN
		INSERT INTO MuCastle_NPC VALUES (
			@iMapSvrGroup	,
			@iNpcNumber,
			@iNpcIndex,
			@iNpcDfLevel,
			@iNpcRgLevel,
			@iNpcMaxHp,
			@iNpcHp,
			@btNpcX,
			@btNpcY,
			@btNpcDIR,
			GetDate()
		)
		
		SELECT 1 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyTaxRate]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyTaxRate]

	@iMapSvrGroup		SMALLINT,
	@iTaxKind		INT,
	@iTaxRate		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF (@iTaxKind = 1)
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_RATE_CHAOS = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_RATE_CHAOS As TaxRate
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate
		END
	END
	ELSE IF (@iTaxKind = 2)
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_RATE_STORE = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_RATE_STORE As TaxRate
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate
		END
	END
	ELSE IF (@iTaxKind = 3)	
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_HUNT_ZONE = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_HUNT_ZONE As TaxRate
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate
		END
	END
	ELSE
	BEGIN
		SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifySiegeEnd]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifySiegeEnd]

	@iMapSvrGroup		SMALLINT,
	@iSiegeEnded		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET SIEGE_ENDED = @iSiegeEnded
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyMoney]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_ModifyMoney]

	@iMapSvrGroup		SMALLINT,
	@iMoneyChange	MONEY	
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DECLARE	@iTotMoney	MONEY
		SELECT @iTotMoney = MONEY FROM MuCastle_DATA
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		IF (@iTotMoney + @iMoneyChange < 0)
		BEGIN
			SELECT 2 As QueryResult, MONEY
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup		
		END
		ELSE
		BEGIN
			UPDATE MuCastle_DATA 
			SET MONEY = @iTotMoney + @iMoneyChange
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT 1 As QueryResult, MONEY
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup		
		END

		INSERT MuCastle_MONEY_STATISTICS VALUES (@iMapSvrGroup, GetDate(), @iMoneyChange)
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As MONEY
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyGuildMarkReset]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyGuildMarkReset]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION

	DECLARE		@iMarkCount	INT
	DECLARE		@bIsGiveUp	INT

	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		SELECT @iMarkCount = REG_MARKS, @bIsGiveUp = IS_GIVEUP
		FROM MuCastle_REG_SIEGE
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		IF (@iMarkCount > 0)
		BEGIN
			IF (@bIsGiveUp = 0)
			BEGIN
				UPDATE MuCastle_REG_SIEGE 
				SET REG_MARKS = 0
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
		
				SELECT 1 As QueryResult, @iMarkCount As DEL_MARKS
			END
			ELSE
			BEGIN
				SELECT 2 As QueryResult, 0 As DEL_MARKS
			END
		END
		ELSE
		BEGIN
			SELECT 1 As QueryResult, 0 As DEL_MARKS
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As DEL_MARKS
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyGuildMarkRegCount]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyGuildMarkRegCount]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8),
	@iMarkCount		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		UPDATE MuCastle_REG_SIEGE 
		SET REG_MARKS = @iMarkCount
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyGuildGiveUp]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyGuildGiveUp]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8),
	@iIsGiveUp		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		DECLARE	@iMarkCount	INT
		SELECT @iMarkCount = REG_MARKS FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		UPDATE MuCastle_REG_SIEGE 
		SET IS_GIVEUP = @iIsGiveUp, REG_MARKS = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		SELECT 1 As QueryResult, @iMarkCount As DEL_MARKS
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult, 0 As DEL_MARKS
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyCastleSchedule]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyCastleSchedule]

	@iMapSvrGroup		SMALLINT,
	@dtStartDate		DATETIME,
	@dtEndDate		DATETIME
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET SIEGE_START_DATE = @dtStartDate, SIEGE_END_DATE = @dtEndDate
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ModifyCastleOwnerInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ModifyCastleOwnerInfo]

	@iMapSvrGroup		SMALLINT,
	@iCastleOccupied	INT,
	@szOwnGuildName	VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET CASTLE_OCCUPY = @iCastleOccupied, OWNER_GUILD = @szOwnGuildName
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetSiegeGuildInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_GetSiegeGuildInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	SELECT * 
	FROM MuCastle_SIEGE_GUILDLIST  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetOwnerGuildMaster]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetOwnerGuildMaster]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DECLARE	@iIsCastleOccupied	TINYINT
		DECLARE	@szGuildName		VARCHAR(8)

		SELECT @iIsCastleOccupied = CASTLE_OCCUPY, @szGuildName = OWNER_GUILD FROM MuCastle_DATA WHERE MAP_SVR_GROUP = @iMapSvrGroup

		IF (@iIsCastleOccupied = 1)
		BEGIN
			IF (@szGuildName <> '')			
			BEGIN
				IF EXISTS ( SELECT G_Master FROM Guild  WITH (READUNCOMMITTED)
							WHERE G_Name = @szGuildName)
				BEGIN
					SELECT 1 As QueryResult, @szGuildName As OwnerGuild, G_Master As OwnerGuildMaster FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szGuildName
				END
				ELSE
				BEGIN
					SELECT 4 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
				END
			END
			ELSE
			BEGIN
				SELECT 3 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
			END
		END
		ELSE
		BEGIN
			SELECT 2 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
	END


	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetGuildMarkRegInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_GetGuildMarkRegInfo]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT * FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
	ORDER BY SEQ_NUM ASC

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCsGuildUnionInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_GetCsGuildUnionInfo]

	@szGuildName		VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE	@iG_Union	INT
	SET		@iG_Union	= -1
	
	IF EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) 
				WHERE G_Name = @szGuildName)
	BEGIN
		SELECT @iG_Union = G_Union
		FROM Guild WITH (READUNCOMMITTED) 
		WHERE G_Name = @szGuildName
	END

	IF (@iG_Union = 0)
	BEGIN
		SELECT @szGuildName As GUILD_NAME
	END
	ELSE
	BEGIN
		SELECT G_Name As GUILD_NAME
		FROM Guild WITH (READUNCOMMITTED) 
		WHERE G_Union = @iG_Union
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCastleTotalInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_GetCastleTotalInfo]

	@iMapSvrGroup		SMALLINT,
	@iCastleEventCycle	INT
AS
BEGIN
	DECLARE	@iCastleSiegeTerm			INT
	SET		@iCastleSiegeTerm			= @iCastleEventCycle
	DECLARE	@iFirstCreate				INT
	SET		@iFirstCreate				= 0
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF NOT EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DECLARE	@dtStartDate			datetime
		DECLARE	@dtEndDate			datetime
		DECLARE	@dtStartDateString		varchar(32)
		DECLARE	@dtEndDateString		varchar(32)

		SET		@dtStartDate			= GetDate()
		SET		@dtEndDate			= DATEADD(dd, @iCastleSiegeTerm, GetDate())
		SET		@dtStartDateString		= CAST(DATEPART(YY, @dtStartDate) AS char(4)) + '-' + CAST(DATEPART(MM, @dtStartDate) AS char(2)) + '-' + CAST(DATEPART(DD, @dtStartDate) AS char(2)) + ' 00:00:00'
		SET		@dtEndDateString		= CAST(DATEPART(YY, @dtEndDate) AS char(4)) + '-' + CAST(DATEPART(MM, @dtEndDate) AS char(2)) + '-' + CAST(DATEPART(DD, @dtEndDate) AS char(2)) + ' 00:00:00'


		INSERT INTO MuCastle_DATA  VALUES (
			@iMapSvrGroup,
			@dtStartDateString,
			@dtEndDateString,
			0,
			0,
			0,
			'',
			0,
			0,
			0,
			0
		)

		SET @iFirstCreate				= 1
	END

	SELECT	 MAP_SVR_GROUP, 
			DATEPART(YY,SIEGE_START_DATE)	As SYEAR, 
			DATEPART(MM,SIEGE_START_DATE)	As SMONTH, 
			DATEPART(DD,SIEGE_START_DATE)	As SDAY, 
			DATEPART(YY,SIEGE_END_DATE)	As EYEAR, 
			DATEPART(MM,SIEGE_END_DATE)	As EMONTH, 
			DATEPART(DD,SIEGE_END_DATE)	As EDAY, 
			SIEGE_GUILDLIST_SETTED, 
			SIEGE_ENDED, 
			CASTLE_OCCUPY, 
			OWNER_GUILD, 
			MONEY, 
			TAX_RATE_CHAOS,
			TAX_RATE_STORE,
			TAX_HUNT_ZONE,
			@iFirstCreate As FIRST_CREATE
	FROM MuCastle_DATA  WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCastleTaxInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetCastleTaxInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT MONEY, TAX_RATE_CHAOS, TAX_RATE_STORE, TAX_HUNT_ZONE FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCastleNpcInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetCastleNpcInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT * FROM MuCastle_NPC WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCastleMoneyStsRange]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetCastleMoneyStsRange]

	@iMapSvrGroup		SMALLINT,
	@iTaxDateStart		DATETIME,
	@iTaxDateEnd		DATETIME
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	CREATE TABLE #T_REG_TAXSTT  (
		[TaxDate] [datetime] NOT NULL ,
		[TaxInc] [money] NOT NULL ,
		[TaxDec] [money] NOT NULL 
	) ON [PRIMARY]
	
	IF (@iTaxDateStart <= @iTaxDateEnd)
	BEGIN
		DECLARE	@iTaxDate		DATETIME
		SET		@iTaxDate		= @iTaxDateStart

		WHILE(@iTaxDate <= @iTaxDateEnd)
		BEGIN
			DECLARE	@dtLogDateStart	DATETIME
			DECLARE	@dtLogDateEnd	DATETIME
			DECLARE	@iTaxInc		MONEY
			DECLARE	@iTaxDec		MONEY
			DECLARE	@iYEAR		INT
			DECLARE	@iMONTH		INT
			DECLARE	@iDAY			INT
			SELECT	@iYEAR		= DATEPART(YY, @iTaxDate)
			SELECT	@iMONTH		= DATEPART(MM, @iTaxDate)
			SELECT	@iDAY			= DATEPART(DD, @iTaxDate)
			SET		@dtLogDateStart	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 00:00:00'
			SET		@dtLogDateEnd	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 23:59:59'
					
			SELECT @iTaxInc = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
			WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE >= 0
			
			SELECT @iTaxDec = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
			WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE < 0

			IF @iTaxInc IS NULL
				SET @iTaxInc = 0
			IF @iTaxDec IS NULL
				SET @iTaxDec = 0
						
			INSERT INTO #T_REG_TAXSTT VALUES (@dtLogDateStart, @iTaxInc, @iTaxDec)

			SET @iTaxDate				= DATEADD(DD, 1, @iTaxDate)
		END
	END
	
	SELECT * FROM #T_REG_TAXSTT

	DROP TABLE #T_REG_TAXSTT

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCastleMoneySts]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetCastleMoneySts]

	@iMapSvrGroup		SMALLINT,
	@iTaxDate		DATETIME
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	
	DECLARE	@iTaxInc		MONEY
	DECLARE	@iTaxDec		MONEY
	DECLARE	@iYEAR		INT
	DECLARE	@iMONTH		INT
	DECLARE	@iDAY			INT
	DECLARE	@dtLogDateStart	DATETIME
	DECLARE	@dtLogDateEnd	DATETIME
	SELECT	@iYEAR		= DATEPART(YY, @iTaxDate)
	SELECT	@iMONTH		= DATEPART(MM, @iTaxDate)
	SELECT	@iDAY			= DATEPART(DD, @iTaxDate)
	SET		@dtLogDateStart	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 00:00:00'
	SET		@dtLogDateEnd	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 23:59:59'
	
	SELECT @iTaxInc = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE >= 0
	
	SELECT @iTaxDec = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE < 0
	
	IF @iTaxInc IS NULL
		SET @iTaxInc = 0
	IF @iTaxDec IS NULL
		SET @iTaxDec = 0

	SELECT @dtLogDateStart As TaxDate, @iTaxInc As TaxInc, @iTaxDec As TaxDec

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_GetItemSerial2]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_GetItemSerial2]

	@iAddSerialCount	int
AS
BEGIN	
	DECLARE @ItemSerial	int

	SET NOCOUNT ON
	BEGIN TRANSACTION

	UPDATE GameServerInfo 
	SET @ItemSerial = ItemCount = ItemCount+@iAddSerialCount
		
	IF ( @@error  <> 0 )
	BEGIN
		ROLLBACK TRANSACTION
		SELECT -1
	END
	ELSE
	BEGIN
		COMMIT TRANSACTION	
		SELECT @ItemSerial-@iAddSerialCount+1
	END

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_GetItemSerial]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_GetItemSerial]

AS
BEGIN	
	DECLARE @ItemSerial	int
	SET NOCOUNT ON
	BEGIN TRANSACTION

		UPDATE GameServerInfo SET @ItemSerial = ItemCount = ItemCount+1
			
		IF ( @@error  <> 0 )
		BEGIN
			ROLLBACK TRANSACTION
			SELECT -1
		END
		ELSE
		BEGIN
			COMMIT TRANSACTION			
			SELECT @ItemSerial
		END
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_GetCharacterInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_GetCharacterInfo]

	@AccountID 	varchar(10),
	@Name 	as varchar(10)
AS
SET NOCOUNT ON

Declare @Result int
Set @Result = 0x01

SELECT Top 1 cLevel, Class, LevelUpPoint
    , Experience, Strength, Dexterity, Vitality, Energy, Money, Life
    , MaxLife, Mana, MaxMana
    , MapNumber, MapPosX, MapPosY, MapDir
    , PkCount, PkLevel, PkTime, CtlCode, DbVersion
    , Leadership, ChatLimitTime
    , FruitPoint 
    , Inventory
    , MagicList
    , Quest
FROM Character 
WHERE Name=@Name AND AccountID = @AccountID

IF (@@Rowcount = 0)
    BEGIN
        Set @Result = 0x02
        GOTO Lable_Error
    END

UPDATE AccountCharacter SET GameIDC=@Name WHERE Id=@AccountID
IF @@Error <> 0
    Set @Result = 0x03

Lable_Error:
SET NOCOUNT OFF
Return @Result
GO
/****** Object:  StoredProcedure [dbo].[WZ_GetAccountInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_GetAccountInfo]

	@AccountID	 varchar(10),
	@Summoner	 tinyint output
AS
SET NOCOUNT ON

Declare @Result tinyint

SET @Result = 0x01
SELECT TOP 1 @Summoner = Summoner FROM AccountCharacter  WHERE Id = @AccountID
IF @@Rowcount < 1
BEGIN
    SET @Result = 0x00
END

If (@Summoner is null OR @Summoner <> 1)
BEGIN
    SET @Summoner = 0
END

Label_End:
SET NOCOUNT OFF
Return @Result
GO
/****** Object:  StoredProcedure [dbo].[WZ_Get_DBID]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_Get_DBID]

AS
BEGIN	
	SET NOCOUNT ON

	SELECT [DESC] FROM Mu_DBID

	SET NOCOUNT OFF

END
GO
/****** Object:  StoredProcedure [dbo].[WZ_FriendDel]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_FriendDel]

	@Name		varchar(10),
	@FriendName 	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	SET NOCOUNT ON

	SET @ErrorCode = 0

	IF NOT EXISTS ( SELECT GUID FROM T_FriendMain WHERE Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	ELSE
	  BEGIN
		SELECT @UserGuid = GUID FROM T_FriendMain WHERE Name=@Name
	
		IF ( @@Error  <> 0   )
		BEGIN
			SET @ErrorCode = 4
		END

	  END

	IF NOT EXISTS ( SELECT GUID FROM T_FriendMain WHERE Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		SELECT @FriendGuid = GUID FROM T_FriendMain WHERE Name=@FriendName

		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 6
		END
	END

	IF NOT EXISTS (SELECT GUID FROM T_FriendList WHERE GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	BEGIN
		SET @ErrorCode = 2
		GOTO EndProc
	END
	
	DELETE FROM T_FriendList where GUID = @UserGuid AND FriendGuid = @FriendGuid  
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error
	ELSE SET @ErrorCode	= 1

	IF( @ErrorCode = 1 )
	BEGIN
		UPDATE T_FriendList SET Del=1 WHERE GUID=@FriendGuid AND FriendGuid=@UserGuid
	END

EndProc:

	SET NOCOUNT OFF
	SELECT @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_FriendAdd]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_FriendAdd]

	@Name		varchar(10),
	@FriendName 	varchar(10)

AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	SET NOCOUNT ON
	SET XACT_ABORT ON


	SET @ErrorCode = 0

	IF NOT EXISTS ( SELECT GUID FROM T_FriendMain WHERE Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		SELECT @FriendGuid = GUID FROM T_FriendMain WHERE Name=@FriendName

		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 6
			GOTO EndProc
		END

	END

	IF NOT EXISTS ( SELECT GUID FROM T_FriendMain WHERE Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	ELSE
	  BEGIN
		SELECT @UserGuid = GUID FROM T_FriendMain WHERE Name=@Name
	
		IF ( @@Error  <> 0   )
		BEGIN
			SET @ErrorCode = 4
			GOTO EndProc
		END
	
	  END

	IF EXISTS (SELECT GUID FROM T_FriendList WHERE GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	BEGIN
		SET @ErrorCode = 2
		GOTO EndProc
	END

	BEGIN TRAN

	INSERT INTO T_FriendList (GUID, FriendGuid, FriendName ) 
		VALUES ( @UserGuid, @FriendGuid, @FriendName)
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode = @@Error
	ELSE
	  BEGIN
		DELETE FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = @@Error
		END
	  END

	IF ( @ErrorCode  <> 0 )
	  BEGIN
		ROLLBACK TRAN
	  END
	ELSE
	  BEGIN
		COMMIT TRAN
		SET @ErrorCode = 1
	  END
	
EndProc:

	SET XACT_ABORT OFF
	SET NOCOUNT OFF
	SELECT @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_DISCONNECT_MEMB]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_DISCONNECT_MEMB]

	@memb___id 	varchar(10)
AS
BEGIN

SET NOCOUNT ON
	DECLARE @find_id		 varchar(10)	
	DECLARE @ConnectStat	 tinyint
	SET @ConnectStat = 0
	SET @find_id = 'NOT'
	SELECT @find_id = S.memb___id FROM MEMB_STAT S INNER JOIN MEMB_INFO I ON S.memb___id = I.memb___id 
	     WHERE I.memb___id = @memb___id

	IF( @find_id <> 'NOT' )
	BEGIN
		UPDATE MEMB_STAT set ConnectStat = @ConnectStat, DisConnectTM = getdate()
		 WHERE memb___id = @memb___id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_DelMail]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_DelMail]

	@Name 	varchar(10),
	@MemoIndex 	int
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int

	SET XACT_ABORT ON
	SET NOCOUNT ON

	SET @ErrorCode = 0

	IF NOT EXISTS ( SELECT GUID FROM T_FriendMain WHERE Name=@Name)
	  BEGIN
		SET @ErrorCode = 2
		GOTO EndProc

	  END
	ELSE
	  BEGIN
		SELECT @UserGuid = GUID FROM T_FriendMain WHERE Name=@Name
	
		IF ( @@Error  <> 0   )
		BEGIN
			SET @ErrorCode = 3
			GOTO EndProc
		END
	
	  END

	IF NOT EXISTS ( select MemoIndex FROM T_FriendMail  WHERE  MemoIndex=@MemoIndex AND GUID=@UserGuid)
	  BEGIN
		SET @ErrorCode = 4
		GOTO EndProc
	  END

	BEGIN TRAN

	DELETE FROM T_FriendMail WHERE MemoIndex=@MemoIndex AND GUID=@UserGuid
	IF ( @@Error  <> 0 )
		SET @ErrorCode = 5
	ELSE
	  BEGIN
		UPDATE T_FriendMain SET MemoTotal=MemoTotal-1 WHERE GUID = @UserGuid
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 6
		END
	  END

	IF ( @ErrorCode  <> 0 )
	  BEGIN
		ROLLBACK TRAN
	  END
	ELSE
	  BEGIN
		COMMIT TRAN
		SET @ErrorCode = 1
	  END
	
EndProc:

	SET XACT_ABORT OFF
	SET NOCOUNT OFF
	SELECT @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_Delete_C_DregInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_Delete_C_DregInfo]

	@szCharName	varchar(10)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT Name FROM OptionData WHERE Name = @szCharName )
	BEGIN
		DELETE FROM OptionData WHERE Name = @szCharName
	END
	
	IF EXISTS ( SELECT  CHAR_NAME FROM T_3rd_Quest_Info WHERE CHAR_NAME = @szCharName )
	BEGIN
		DELETE FROM T_3rd_Quest_Info WHERE CHAR_NAME = @szCharName
	END	

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CW_InfoSave]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CW_InfoSave]

	@iMapSvrGroup		SMALLINT,
	@iCrywolfState		INT,
	@iOccupationState	INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCrywolf_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCrywolf_DATA
		SET CRYWOLF_OCCUFY = @iOccupationState, CRYWOLF_STATE = @iCrywolfState
		WHERE MAP_SVR_GROUP = @iMapSvrGroup
	END
	ELSE
	BEGIN
		INSERT MuCrywolf_DATA VALUES ( @iMapSvrGroup, DEFAULT, DEFAULT, DEFAULT, DEFAULT )

		UPDATE MuCrywolf_DATA
		SET CRYWOLF_OCCUFY = @iOccupationState, CRYWOLF_STATE = @iCrywolfState
		WHERE MAP_SVR_GROUP = @iMapSvrGroup
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CW_InfoLoad]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CW_InfoLoad]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCrywolf_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		SELECT CRYWOLF_OCCUFY, CRYWOLF_STATE  FROM MuCrywolf_DATA  WHERE MAP_SVR_GROUP = @iMapSvrGroup
	END
	ELSE
	BEGIN
		INSERT MuCrywolf_DATA VALUES ( @iMapSvrGroup, DEFAULT, DEFAULT, DEFAULT, DEFAULT )
		SELECT CRYWOLF_OCCUFY, CRYWOLF_STATE  FROM MuCrywolf_DATA WHERE  MAP_SVR_GROUP = @iMapSvrGroup
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_SetSiegeGuildOK]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_SetSiegeGuildOK]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA
		SET SIEGE_GUILDLIST_SETTED = 1
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_SetSiegeGuildInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_SetSiegeGuildInfo]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8),
	@iGuildID		INT,
	@iGuildInvolved		INT,
	@iCsGuildScore	INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	INSERT INTO MuCastle_SIEGE_GUILDLIST
	VALUES (@iMapSvrGroup, @szGuildName, @iGuildID, @iGuildInvolved, @iCsGuildScore)
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ResetSiegeGuildInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ResetSiegeGuildInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DELETE MuCastle_SIEGE_GUILDLIST
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ResetRegSiegeInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ResetRegSiegeInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DELETE MuCastle_REG_SIEGE
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ResetCastleTaxInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ResetCastleTaxInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET MONEY = 0, TAX_RATE_CHAOS = 0, TAX_RATE_STORE = 0, TAX_HUNT_ZONE = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ResetCastleSiege]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ResetCastleSiege]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET 	SIEGE_GUILDLIST_SETTED = 0,
			SIEGE_ENDED = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		DELETE MuCastle_SIEGE_GUILDLIST
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqRegGuildMark]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_ReqRegGuildMark]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		DECLARE	@bIS_GIVEUP	INT
		SELECT @bIS_GIVEUP = IS_GIVEUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		IF (@bIS_GIVEUP = 0)
		BEGIN
			UPDATE MuCastle_REG_SIEGE 
			SET REG_MARKS = REG_MARKS + 1
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
	
			SELECT 1 As QueryResult, REG_MARKS
			FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
		END
		ELSE
		BEGIN
			SELECT 0 As QueryResult, 0 As REG_MARKS
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As REG_MARKS
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_MLS_InfoSave]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_MLS_InfoSave]

	@szCharName		varchar(10),
	@nMasterLevel		smallint,
	@i64MLExp		bigint,
	@i64MLNextExp	bigint,
	@nMLPoint		smallint
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT CHAR_NAME FROM T_SkillTree_Info  WITH (READUNCOMMITTED) 
				WHERE CHAR_NAME = @szCharName )
	BEGIN
		UPDATE T_SkillTree_Info
		SET	MASTER_LEVEL	= @nMasterLevel			
			,ML_EXP		= @i64MLExp
			,ML_NEXTEXP	= @i64MLNextExp
			,ML_POINT	= @nMLPoint

		WHERE CHAR_NAME = @szCharName
	END
	ELSE
	BEGIN
		INSERT INTO T_SkillTree_Info ( CHAR_NAME ) VALUES ( @szCharName )

		UPDATE T_SkillTree_Info
		SET	MASTER_LEVEL	= @nMasterLevel			
			,ML_EXP		= @i64MLExp
			,ML_NEXTEXP	= @i64MLNextExp
			,ML_POINT	= @nMLPoint
		WHERE CHAR_NAME = @szCharName
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_MLS_InfoLoad]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_MLS_InfoLoad]

	@szCharName	varchar(10)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT CHAR_NAME FROM T_SkillTree_Info  WITH ( READUNCOMMITTED ) 
				WHERE CHAR_NAME = @szCharName )
	BEGIN
		SELECT MASTER_LEVEL, ML_EXP, ML_NEXTEXP, ML_POINT
		FROM T_SkillTree_Info WHERE CHAR_NAME = @szCharName
	END
	ELSE
	BEGIN
		INSERT INTO T_SkillTree_Info ( CHAR_NAME ) VALUES ( @szCharName )

		SELECT MASTER_LEVEL, ML_EXP, ML_NEXTEXP, ML_POINT
			FROM T_SkillTree_Info WHERE CHAR_NAME = @szCharName
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_MACROINFO_SAVE]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE   PROCEDURE [dbo].[WZ_MACROINFO_SAVE] 
	@AccountID 	 VARCHAR(10),
	@Name	  	 VARCHAR(10),
              @MacroInfo	 VARBINARY(256)
AS
	SET NOCOUNT ON

	IF EXISTS (SELECT TOP 1 * FROM T_MacroInfo  WITH (READUNCOMMITTED)
	WHERE AccountID = @AccountID and Name = @Name)
              BEGIN
                    	UPDATE T_MacroInfo SET MacroInfo = @MacroInfo WHERE AccountID = @AccountID and Name = @Name
              END
              ELSE
              BEGIN
	INSERT INTO T_MacroInfo(AccountID, Name, MacroInfo) VALUES(@AccountID, @Name, @MacroInfo)
              END
       

	
	SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_MACROINFO_LOAD]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE    PROCEDURE [dbo].[WZ_MACROINFO_LOAD] 
	@AccountID 	 VARCHAR(10),
	@Name	  	 VARCHAR(10)
AS
	SET NOCOUNT ON

	SELECT TOP 1 MacroInfo FROM T_MacroInfo where AccountID = @AccountID and Name = @Name
	
	SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_LuckyItemSelect]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************
TITLE    :	钒虐酒捞袍 炼雀

EX       :	WZ_LuckyItemSelect

PROJECT  :	Season 6

CALL     : 

INPUT    :  @CharacterName

OUTPUT   :	

REVERSION:
-------------------------------------------------------------------
DATE		Author				Description		
-------------------------------------------------------------------
2010-09-16	傍饶琶[MU_STUDIO]	弥檬 累己
-------------------------------------------------------------------	
*****************************************************************/
CREATE  PROC [dbo].[WZ_LuckyItemSelect]
@CharacterName varchar(10)  
AS  
SELECT	ItemCode, ItemSerial, DurabilitySmall 
FROM	T_LUCKY_ITEM_INFO 
WHERE	CharName = @CharacterName
GO
/****** Object:  StoredProcedure [dbo].[WZ_LuckyItemInsert]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************
TITLE    :	钒虐酒捞袍 积己

EX       :	WZ_LuckyItemInsert

PROJECT  :	Season 6

CALL     : 

INPUT    : 

OUTPUT   :	@ErrorCode 
			0 : 己傍
			2 : 角菩

REVERSION:
-------------------------------------------------------------------
DATE		Author				Description		
-------------------------------------------------------------------
2010-09-16	傍饶琶[MU_STUDIO]	弥檬 累己
2011-04-14	C.H.O				@DurabilitySmall tinyint -> smallint
-------------------------------------------------------------------	
*****************************************************************/
CREATE  PROC  [dbo].[WZ_LuckyItemInsert]  
@UserGuid 			int
,@CharName			varchar(10)
,@ItemCode			int
,@ItemSerial		bigint
,@DurabilitySmall	smallint
AS         
DECLARE @ErrorCode int        
SET	@ErrorCode = 0        

SET NOCOUNT ON    
SET	XACT_ABORT ON
        
BEGIN TRAN

-- -----------------------------------------------------------------
-- 沥焊啊 绝促搁....        
-- -----------------------------------------------------------------
IF NOT EXISTS (SELECT ItemCode FROM T_LUCKY_ITEM_INFO  WITH ( READUNCOMMITTED )         
WHERE CharName = @CharName AND ItemCode = @ItemCode AND ItemSerial  = @ItemSerial
and	UserGuid = @UserGuid)
BEGIN            
	INSERT INTO T_LUCKY_ITEM_INFO (UserGuid, CharName, ItemCode, ItemSerial, DurabilitySmall) 
	VALUES  (@UserGuid, @CharName, @ItemCode, @ItemSerial, @DurabilitySmall)    
END       

-- ----------------------------------------------------------------- 
--沥焊啊 乐促搁 盎脚
-- -----------------------------------------------------------------
ELSE        
BEGIN    
	UPDATE T_LUCKY_ITEM_INFO 
	SET	DurabilitySmall = @DurabilitySmall
	WHERE CharName = @CharName AND ItemCode = @ItemCode AND ItemSerial  = @ItemSerial 
	and	UserGuid = @UserGuid
END        

IF( @@Error <> 0 )        
BEGIN        
SET @ErrorCode = 2        
END        

IF ( @ErrorCode  <> 0 ) 
ROLLBACK TRAN       
ELSE        
COMMIT TRAN

SELECT @ErrorCode        

SET	XACT_ABORT OFF        
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_LuckyItemDelete]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************
-- 2.CREATE PROC
*****************************************************************/

/****************************************************************
TITLE    :	钒虐酒捞袍 昏力

EX       :	WZ_LuckyItemDelete

PROJECT  :	Season 6

CALL     : 

INPUT    : 

OUTPUT   :	@ErrorCode 
			0 : 己傍
			2 : 角菩

REVERSION:
-------------------------------------------------------------------
DATE		Author				Description		
-------------------------------------------------------------------
2010-09-16	傍饶琶[MU_STUDIO]	弥檬 累己
-------------------------------------------------------------------	
*****************************************************************/
CREATE  PROC  [dbo].[WZ_LuckyItemDelete]
@CharacterName varchar(10)
,@ItemCode	int
,@ItemSerial	bigint
AS  
DELETE	T_LUCKY_ITEM_INFO 
WHERE	CharName = @CharacterName AND ItemCode = @ItemCode AND ItemSerial = @ItemSerial
GO
/****** Object:  StoredProcedure [dbo].[WZ_QMK_InfoSave]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_QMK_InfoSave]

	@szCharName		varchar(10),
	@iQuestIndex		INT,
	@iMonsterIndex1	INT,
	@iKillCount1		INT,
	@iMonsterIndex2	INT,
	@iKillCount2		INT,
	@iMonsterIndex3	INT,
	@iKillCount3		INT,
	@iMonsterIndex4	INT,
	@iKillCount4		INT,
	@iMonsterIndex5	INT,
	@iKillCount5		INT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT CHAR_NAME FROM T_3rd_Quest_Info  WITH (READUNCOMMITTED) 
				WHERE CHAR_NAME = @szCharName )
	BEGIN
		UPDATE T_3rd_Quest_Info
		SET	QUEST_INDEX	= @iQuestIndex
			, MON_INDEX_1	= @iMonsterIndex1
			, KILL_COUNT_1	= @iKillCount1
			, MON_INDEX_2	= @iMonsterIndex2
			, KILL_COUNT_2	= @iKillCount2
			, MON_INDEX_3	= @iMonsterIndex3
			, KILL_COUNT_3	= @iKillCount3
			, MON_INDEX_4	= @iMonsterIndex4
			, KILL_COUNT_4	= @iKillCount4
			, MON_INDEX_5	= @iMonsterIndex5
			, KILL_COUNT_5	= @iKillCount5
		WHERE CHAR_NAME = @szCharName
	END
	ELSE
	BEGIN
		INSERT T_3rd_Quest_Info VALUES ( @szCharName, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 )

		UPDATE T_3rd_Quest_Info
		SET	QUEST_INDEX	= @iQuestIndex
			, MON_INDEX_1	= @iMonsterIndex1
			, KILL_COUNT_1	= @iKillCount1
			, MON_INDEX_2	= @iMonsterIndex2
			, KILL_COUNT_2	= @iKillCount2
			, MON_INDEX_3	= @iMonsterIndex3
			, KILL_COUNT_3	= @iKillCount3
			, MON_INDEX_4	= @iMonsterIndex4
			, KILL_COUNT_4	= @iKillCount4
			, MON_INDEX_5	= @iMonsterIndex5
			, KILL_COUNT_5	= @iKillCount5
		WHERE CHAR_NAME = @szCharName
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_QMK_InfoLoad]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_QMK_InfoLoad]

	@szCharName	varchar(10)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	IF EXISTS ( SELECT CHAR_NAME FROM T_3rd_Quest_Info  WITH ( READUNCOMMITTED ) 
				WHERE CHAR_NAME = @szCharName )
	BEGIN
		SELECT QUEST_INDEX, MON_INDEX_1, KILL_COUNT_1, MON_INDEX_2, KILL_COUNT_2, MON_INDEX_3, KILL_COUNT_3, MON_INDEX_4, KILL_COUNT_4, MON_INDEX_5, KILL_COUNT_5
			FROM T_3rd_Quest_Info  WHERE CHAR_NAME = @szCharName
	END
	ELSE
	BEGIN
		INSERT T_3rd_Quest_Info VALUES ( @szCharName, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 )
		SELECT QUEST_INDEX, MON_INDEX_1, KILL_COUNT_1, MON_INDEX_2, KILL_COUNT_2, MON_INDEX_3, KILL_COUNT_3, MON_INDEX_4, KILL_COUNT_4, MON_INDEX_5, KILL_COUNT_5
			FROM T_3rd_Quest_Info  WHERE CHAR_NAME = @szCharName
	END
	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION
	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemUpdate]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemUpdate]

	@UserGuid		int,
	@CharacterName 	varchar(10),
	@ItemCode		int,
	@UsedTime		int,
	@LeftTime		int
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @ItemInfoCount int
	DECLARE @RetLeftTime int

	SET @ErrorCode = 0
	SET @ItemInfoCount = 0
	SET @RetLeftTime = 0

	SET XACT_ABORT ON
	SET NOCOUNT ON

	BEGIN TRANSACTION

	SELECT @ItemInfoCount = COUNT(*) FROM T_PeriodItem_Info where UserGuid = @UserGuid AND CharacterName = @CharacterName AND UsedInfo = 1

	IF( @ItemInfoCount <> 1 )
	BEGIN
		SET @ErrorCode = 1
	END
	ELSE
	BEGIN
		UPDATE T_PeriodItem_Info SET UsedTime = UsedTime + @UsedTime, LeftTime = @LeftTime WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName AND ItemCode = @ItemCode AND UsedInfo = 1
		IF( @@Error <> 0 )
		BEGIN
			SET @ErrorCode = 2
		END
	END

	SELECT @RetLeftTime = LeftTime FROM T_PeriodItem_Info where UserGuid = @UserGuid AND CharacterName = @CharacterName AND ItemCode = @ItemCode AND UsedInfo = 1
	IF ( @RetLeftTime <= 0 )
	BEGIN
		UPDATE T_PeriodItem_Info SET UsedInfo = 0, LeftTime = 0 WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName AND ItemCode = @ItemCode AND UsedInfo = 1
		SET @ErrorCode = 3
	END

	IF ( @ErrorCode  <> 0  AND @ErrorCode <> 3 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION

	SELECT @ErrorCode

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemSelectEx]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemSelectEx]

	@UserGuid		int,
	@CharacterName	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @ItemInfoCount int
	DECLARE @PeriodIndex int
	DECLARE @ExpireDate smalldatetime
	DECLARE @UsedInfo tinyint

	SET @PeriodIndex = 0
	SET @ErrorCode = 0
	SET @ItemInfoCount = 0
	SET @UsedInfo = 0

	SET NOCOUNT ON
	DECLARE CUR CURSOR FOR SELECT [PeriodIndex] FROM PeriodItemEx WHERE UserGuid = @UserGuid AND Name = @CharacterName FOR UPDATE

	OPEN CUR

	FETCH NEXT FROM CUR INTO @PeriodIndex
	WHILE( @@fetch_status <> -1 )
	BEGIN
		/*IF( @@fetch_status <> -2 )
		BEGIN
			IF( @ExpireDate < GetDate() )
			BEGIN
				UPDATE T_PeriodItem_Info SET UsedInfo = 0 WHERE PeriodIndex = @PeriodIndex
			END
		END*/
		FETCH NEXT FROM CUR INTO @PeriodIndex/*, @ExpireDate, @UsedInfo*/
	END

	SELECT * FROM PeriodItemEx where UserGuid = @UserGuid AND Name = @CharacterName
	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = -1
	END

	CLOSE CUR
	DEALLOCATE CUR

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemSelect]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemSelect]

	@UserGuid		int,
	@CharacterName	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @ItemInfoCount int
	DECLARE @PeriodIndex int
	DECLARE @ExpireDate smalldatetime
	DECLARE @UsedInfo tinyint

	SET @PeriodIndex = 0
	SET @ErrorCode = 0
	SET @ItemInfoCount = 0
	SET @UsedInfo = 0

	SET NOCOUNT ON
	DECLARE CUR CURSOR FOR SELECT [PeriodIndex], [ExpireDate], [UsedInfo]  FROM T_PeriodItem_Info WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName AND UsedInfo = 1 FOR UPDATE
	OPEN CUR
	FETCH NEXT FROM CUR INTO @PeriodIndex, @ExpireDate, @UsedInfo
	WHILE( @@fetch_status <> -1 )
	BEGIN
		IF( @@fetch_status <> -2 )
		BEGIN
			IF( @ExpireDate < GetDate() )
			BEGIN
				UPDATE T_PeriodItem_Info SET UsedInfo = 0 WHERE PeriodIndex = @PeriodIndex
			END
		END
		FETCH NEXT FROM CUR INTO @PeriodIndex, @ExpireDate, @UsedInfo
	END

	SELECT *, DATEDIFF( minute, BuyDate, GETDATE() ) AS UsedMinutes, DATEDIFF( minute, GETDATE(), ExpireDate ) AS LeftMinutes FROM T_PeriodItem_Info where UserGuid = @UserGuid AND CharacterName = @CharacterName AND UsedInfo = 1
	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = -1
	END

	CLOSE CUR
	DEALLOCATE CUR

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemInsertEx]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WZ_PeriodItemInsertEx]
	@UserGuid			int,
	@CharacterName		varchar(10),
	@ItemType			tinyint,
	@ItemCode			int,
	@EffectCategory		tinyint,
	@EffectType1		tinyint,
	@EffectType2		tinyint,
	@Serial				bigint,
	@Duration			int,
	@BuyDate			bigint,
	@ExpireDate			bigint
	AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @PeriodItemIndex int

	SET @ErrorCode = 0
	SET @PeriodItemIndex = 0

	SET XACT_ABORT ON
	SET NOCOUNT ON

	BEGIN TRANSACTION

	SELECT  @PeriodItemIndex = PeriodIndex FROM PeriodItemEx WHERE UserGuid = @UserGuid AND Name = @CharacterName AND ItemCode = @ItemCode AND ItemType = @ItemType AND OptionType = @EffectCategory AND ItemType != 2

	IF ( @PeriodItemIndex != 0 )
	BEGIN
		DELETE FROM PeriodItemEx WHERE UserGuid = @UserGuid AND Name = @CharacterName AND ItemCode = @ItemCode AND ItemType = @ItemType AND OptionType = @EffectCategory
	END

	INSERT INTO PeriodItemEx (UserGuid, Name, ItemType, ItemCode, EffectType1, EffectType2, OptionType, SerialCode, Duration, BuyDateConvert, ExpireDateConvert) VALUES
	( @UserGuid, @CharacterName, @ItemType, @ItemCode, @EffectType1, @EffectType2, @EffectCategory, @Serial, @Duration, @BuyDate, @ExpireDate)
	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = 2
	END

	IF ( @ErrorCode  <> 0 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION

	SELECT @ErrorCode

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemInsert]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemInsert]

	@UserGuid		int,
	@CharacterName	varchar(10),
	@ItemCode		int,
	@OptionType		tinyint,
	@EffectType1		tinyint,
	@EffectType2		tinyint,
	@TotalUsePeriod	int,
	@ExpireDate		varchar(20)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @PeriodItemIndex int

	SET @ErrorCode = 0
	SET @PeriodItemIndex = 0

	SET XACT_ABORT ON
	SET NOCOUNT ON

	BEGIN TRANSACTION

	SELECT  @PeriodItemIndex = PeriodIndex FROM T_PeriodItem_Info WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName AND OptionType = @OptionType AND UsedInfo = 1

	IF ( @PeriodItemIndex != 0 )
	BEGIN
		UPDATE T_PeriodItem_Info SET UsedInfo = 0 WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName AND OptionType = @OptionType AND UsedInfo = 1
	END

	INSERT INTO T_PeriodItem_Info (UserGuid, CharacterName, ItemCode, OptionType, EffectType1, EffectType2, LeftTime, BuyDate, ExpireDate, UsedInfo) VALUES
	( @UserGuid, @CharacterName, @ItemCode, @OptionType, @EffectType1, @EffectType2, @TotalUsePeriod, GETDATE(), @ExpireDate, 1 )
	IF( @@Error <> 0 )
	BEGIN
		SET @ErrorCode = 2
	END

	IF ( @ErrorCode  <> 0 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION

	SELECT @ErrorCode

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemDeleteEx]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemDeleteEx]

	@UserGuid		int,
	@CharacterName	varchar(10),
	@ItemCode		int,
	@ItemType		tinyint,
	@Serial			bigint
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @ItemInfoCount int

	SET @ErrorCode = 0
	SET @ItemInfoCount = 0

	SET NOCOUNT ON

	SELECT @ItemInfoCount = COUNT(*) FROM PeriodItemEx where UserGuid = @UserGuid AND Name = @CharacterName AND ItemCode = @ItemCode AND ItemType = @ItemType AND SerialCode = @Serial

	IF( @ItemInfoCount < 1 )
	BEGIN
		SET @ErrorCode = 1
	END

	IF( @ErrorCode <> 1 )
	BEGIN
		DELETE FROM PeriodItemEx WHERE UserGuid = @UserGuid AND Name = @CharacterName AND ItemCode = @ItemCode AND ItemType = @ItemType AND SerialCode = @Serial
	END

	SELECT @ErrorCode

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_PeriodItemDelete]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_PeriodItemDelete]

	@UserGuid		int,
	@CharacterName	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @ItemInfoCount int

	SET @ErrorCode = 0
	SET @ItemInfoCount = 0

	SET NOCOUNT ON

	SELECT @ItemInfoCount = COUNT(*) FROM T_PeriodItem_Info where UserGuid = @UserGuid AND CharacterName = @CharacterName

	IF( @ItemInfoCount < 1 )
	BEGIN
		SET @ErrorCode = 1
	END

	IF( @ErrorCode <> 1 )
	BEGIN
		UPDATE T_PeriodItem_Info SET UsedInfo = 0 WHERE UserGuid = @UserGuid AND CharacterName = @CharacterName
	END

	SELECT @ErrorCode

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_QuestExpUserInfoSave]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************
TITLE    :	脚痹涅胶飘沥焊 历厘

EX       :	WZ_QuestExpUserInfoSave

PROJECT  :	Season 5.3

CALL     : 

INPUT    : 

OUTPUT   :	@ErrorCode 
			0 : 己傍
			2 : 角菩

REVERSION:
-------------------------------------------------------------------
DATE		Author				Description		
-------------------------------------------------------------------
2009-08-27	傍饶琶[MU_STUDIO]	弥檬 累己
2010-09-14						Season6. 涅胶飘抛捞喉 备炼 函版 馆康						
-------------------------------------------------------------------	
*****************************************************************/
CREATE  PROC [dbo].[WZ_QuestExpUserInfoSave]
@CharacterName	varchar(10)
,@Episode		smallint      
,@Quest_Switch	smallint     
,@ProgState		smallint
,@StartDate		bigint	--StartDateConvert
,@EndDate 		bigint	--EndDateConvert  
,@AskIndex		varbinary(5)  
,@AskValue		varbinary(5)  
,@AskState		varbinary(5)  
AS       
SET NOCOUNT ON

DECLARE	@ErrorCode	int      
SET	@ErrorCode = 0      
      
BEGIN TRANSACTION

-- -----------------------------------------------------------------	
-- 涅胶飘 沥焊啊 绝促搁.
-- -----------------------------------------------------------------	
IF NOT EXISTS ( SELECT EPISODE FROM T_QUEST_EXP_INFO  WITH ( READUNCOMMITTED )       
WHERE EPISODE = @Episode AND CHAR_NAME = @CharacterName )  
BEGIN        
INSERT T_QUEST_EXP_INFO 
(CHAR_NAME,EPISODE,QUEST_SWITCH,PROG_STATE
,StartDateConvert,EndDateConvert 
,ASK_INDEX,ASK_VALUE,ASK_STATE) 
SELECT	
@CharacterName,@Episode,@Quest_Switch,@ProgState
,@StartDate,@EndDate
,@AskIndex,@AskValue,@AskState  
END      
-- -----------------------------------------------------------------	
-- 涅胶飘 沥焊啊 乐促搁 涅胶飘 胶困摹 盎脚.
-- -----------------------------------------------------------------	
ELSE      
BEGIN 
UPDATE	T_QUEST_EXP_INFO 
SET	QUEST_SWITCH = @Quest_Switch,PROG_STATE = @ProgState
,StartDateConvert = @StartDate
,EndDateConvert = @EndDate
,ASK_INDEX = @AskIndex,ASK_VALUE = @AskValue,ASK_STATE = @AskState
WHERE	EPISODE = @Episode AND CHAR_NAME = @CharacterName  
END      

IF(@@Error <> 0)      
BEGIN      
SET @ErrorCode = 2      
END      

IF(@@Error <> 0)
ROLLBACK TRANSACTION
ELSE
COMMIT TRANSACTION
   
SELECT @ErrorCode      

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[WZ_QuestExpUserInfoLoad_Sec]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WZ_QuestExpUserInfoLoad_Sec]
 @CharacterName varchar(10),
 @Episode	int,
 @Ask_Index	varbinary(5)		OUTPUT,
 @Ask_Value	varbinary(5)		OUTPUT,
 @Ask_State	varbinary(5)		OUTPUT
AS

SELECT @Ask_Index = ASK_INDEX, @Ask_Value = ASK_VALUE, @Ask_State = ASK_STATE  FROM T_QUEST_EXP_INFO  WHERE CHAR_NAME =  @CharacterName AND EPISODE = @Episode
GO
/****** Object:  StoredProcedure [dbo].[WZ_QuestExpUserInfoLoad_Fir]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************
TITLE    :	脚痹涅胶飘沥焊 炼雀

EX       :	WZ_QuestExpUserInfoLoad_Fir

PROJECT  :	Season 5.3

CALL     : 

INPUT    : 

OUTPUT   :	@ErrorCode 
			0 : 己傍
			2 : 角菩

REVERSION:
-------------------------------------------------------------------
DATE		Author				Description		
-------------------------------------------------------------------
2009-08-27	傍饶琶[MU_STUDIO]	弥檬 累己
2010-09-14						Season6. 涅胶飘抛捞喉 备炼 函版 馆康						
-------------------------------------------------------------------	
*****************************************************************/
CREATE  PROC [dbo].[WZ_QuestExpUserInfoLoad_Fir]
@CharacterName VARCHAR(10)  
AS  
SELECT  CHAR_NAME, EPISODE, QUEST_SWITCH, PROG_STATE
,StartDateConvert,EndDateConvert  
FROM T_QUEST_EXP_INFO --(index = PK_T_QUEST_EXP_INFO_INDEX_CHAR_NAME)
WHERE CHAR_NAME = @CharacterName
GO
/****** Object:  StoredProcedure [dbo].[WZ_QuestExpUserInfoLoad]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
--//************************************************************************
--// << 孤 脚痹 涅胶飘 矫胶袍  - 历厘 橇肺矫历 >> 1-2
--// 
--// 郴侩	: 脚痹 涅胶飘 沥焊 肺靛
--// 何辑	: 孤胶譬叼坷
--// 父电朝	: 2010.01.07
--// 
--//************************************************************************
CREATE  proc [dbo].[WZ_QuestExpUserInfoLoad]
 @CharacterName varchar(10)
AS
SELECT EPISODE, QUEST_SWITCH, PROG_STATE, ASK_INDEX, ASK_VALUE, ASK_STATE 
FROM T_QUEST_EXP_INFO WHERE CHAR_NAME = @CharacterName
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetAllGuildMarkRegInfo]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_GetAllGuildMarkRegInfo]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT TOP 100 * FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup
	ORDER BY SEQ_NUM DESC

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_CheckSiegeGuildList]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_CheckSiegeGuildList]

	@szGuildName		varchar(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE @iEnd INT

	SELECT @iEnd = SIEGE_ENDED FROM MuCastle_DATA

	IF @iEnd = 1
	BEGIN
		SELECT 0 As QueryResult
	END
	ELSE IF EXISTS ( SELECT GUILD_NAME FROM MuCastle_SIEGE_GUILDLIST  WITH (READUNCOMMITTED) 
				WHERE GUILD_NAME = @szGuildName)
	BEGIN
		SELECT 1 As QueryResult	
	END
	ELSE
	BEGIN
		IF EXISTS ( SELECT REG_SIEGE_GUILD FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED) 
				WHERE REG_SIEGE_GUILD = @szGuildName AND IS_GIVEUP = 0)
		BEGIN
			SELECT 1 As QueryResult
		END
		ELSE
		BEGIN
			SELECT 0 As QueryResult	
		END
	END


	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_SetAccountInfo]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_SetAccountInfo]

	@AccountID	 varchar(10)
AS
SET NOCOUNT ON

DECLARE @Result TINYINT

SET @Result = 0x01
    UPDATE AccountCharacter SET Summoner = 1

    WHERE Id = @AccountID

IF @@ERROR <> 0
BEGIN
    SET @Result = 0x00
END

Label_End:
SET NOCOUNT OFF
Return @Result
GO
/****** Object:  StoredProcedure [dbo].[WZ_WriteMail]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_WriteMail]

	@SendName 	varchar(10), 
	@RecvName 	varchar(10),
	@Subject	varchar(32),
	@Dir		tinyint,
	@Act		tinyint
AS
BEGIN
	SET NOCOUNT ON

	DECLARE 	@userguid	int
	DECLARE 	@memocount	int
	DECLARE	@return		int
	DECLARE	@MemoTotal	int
	DECLARE 	@FriendLevel  	int

	SET	XACT_ABORT ON

	SET @return	= 0

	SELECT @userguid=GUID, @MemoTotal=MemoTotal FROM T_FriendMain where Name= @RecvName
	IF( @@ROWCOUNT < 1 )
	BEGIN
		SET @return = 2
		GOTO EndProc
	END

	IF( @MemoTotal > 49 )
	BEGIN
		SET @return = 5
		GOTO EndProc
	END

	SELECT @FriendLevel=cLevel FROM Character WHERE Name=@RecvName
	IF( @@Error <> 0 )
	 BEGIN
		SET @return = 2		
		GOTO EndProc
	 END
	ELSE 
	  BEGIN
		IF( @FriendLevel < 6 )
		 BEGIN
			SET @return = 6
			GOTO EndProc
		END
	  END

	BEGIN TRANSACTION

	UPDATE T_FriendMain set @memocount = MemoCount = MemoCount+1, MemoTotal=MemoTotal+1 WHERE Name = @RecvName
	IF( @@error <> 0 )
	BEGIN
		SET @return = 3
		GOTO EndProcTran
	END	

	INSERT INTO T_FriendMail (MemoIndex, GUID, FriendName, wDate, Subject,bRead,  Dir,  Act) VALUES(@memocount,@userguid, @SendName, getdate(), @Subject, 0,  @Dir, @Act)
	IF( @@error <> 0 )
	BEGIN
		SET @return = 4
		GOTO EndProcTran
	END

EndProcTran:
	IF ( @return  <> 0 )
	BEGIN
		ROLLBACK TRANSACTION
	END
	ELSE
	BEGIN
		COMMIT TRANSACTION
		SET @return = @memocount
	END
	
EndProc:
	SET XACT_ABORT OFF
	SET NOCOUNT OFF
	
	SELECT @return, @userguid
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_WaitFriendDel]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_WaitFriendDel]

	@Name		 varchar(10), 
	@FriendName 	 varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	SET NOCOUNT ON

	SET @ErrorCode = 0

	IF NOT EXISTS ( select GUID FROM T_FriendMain where Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	ELSE
	  BEGIN
		SELECT @UserGuid = GUID FROM T_FriendMain where Name=@Name
	
		IF ( @@Error  <> 0   )
		BEGIN
			SET @ErrorCode = 4
		END
	  END

	IF NOT EXISTS ( select GUID FROM T_FriendMain where Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		SELECT @FriendGuid = GUID FROM T_FriendMain where Name=@FriendName

		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 6
		END

	END

	IF NOT EXISTS (SELECT GUID FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	BEGIN
		SET @ErrorCode = 2
		GOTO EndProc
	END
	
	DELETE FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid  
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error

	IF( @ErrorCode = 0 )
	BEGIN
		UPDATE T_FriendList SET Del=1 where GUID=@FriendGuid AND FriendGuid=@UserGuid
	END

EndProc:

	SET NOCOUNT OFF
	SELECT @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_WaitFriendAdd]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_WaitFriendAdd]

	@Name 	varchar(10),
	@FriendName 	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int
	DECLARE @FriendLevel  int

	SET NOCOUNT ON
	SET XACT_ABORT ON
	

	SET @ErrorCode = 0

	IF EXISTS (SELECT GUID FROM T_FriendMain WHERE Name=@Name)
  	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain WHERE Name=@Name
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 2
			GOTO EndProc
		END
	  END
	ELSE
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc
	  END

	IF EXISTS (SELECT GUID FROM T_FriendMain WHERE Name=@FriendName)
	  BEGIN
		SELECT @FriendGuid = GUID FROM T_FriendMain WHERE Name=@FriendName
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode	= 4
			GOTO EndProc
		END
  	  END
	ELSE
	  BEGIN
		SET @ErrorCode	= 5
		GOTO EndProc
  	  END

	SELECT @FriendLevel=cLevel FROM Character WHERE Name=@FriendName
	IF( @@Error <> 0 )
	  BEGIN
		SET @ErrorCode = 5		
		GOTO EndProc
	  END
	ELSE 
	  BEGIN
		IF( @FriendLevel < 6 )
		  BEGIN
			SET @ErrorCode = 6
			GOTO EndProc
		 END
	  END

	BEGIN TRAN

	INSERT INTO T_FriendList (GUID, FriendGuid, FriendName ) 
		VALUES ( @UserGuid, @FriendGuid, @FriendName)
	
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode = 7
		GOTO EndTranProc
	END

	IF EXISTS (SELECT GUID FROM T_FriendList WHERE GUID = @FriendGuid AND FriendGuid =  @UserGuid )
	 BEGIN
		UPDATE T_FriendList SET Del=0 WHERE GUID=@FriendGuid AND FriendGuid=@UserGuid
		SET @ErrorCode = 8
		GOTO EndTranProc
	END

	INSERT INTO T_WaitFriend (GUID, FriendName, FriendGuid ) 
				VALUES ( @FriendGuid, @Name, @UserGuid)
	
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode = 6
		GOTO EndTranProc
	END

EndTranProc:
	IF ( (@ErrorCode  = 0) OR (@ErrorCode  = 8) )
	  BEGIN
		COMMIT TRAN
	  END
	ELSE
	  BEGIN
		ROLLBACK TRAN
	  END
	
EndProc:

	SET	XACT_ABORT OFF

	SET NOCOUNT OFF

	SELECT @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_UserGuidCreate]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_UserGuidCreate]

	@Name 	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int

	SET @ErrorCode = 1
	SET @UserGuid = -1

	SET XACT_ABORT ON
	SET NOCOUNT ON

	IF EXISTS ( SELECT GUID FROM T_CGuid WHERE Name=@Name ) 
	  BEGIN
		SET @ErrorCode = 0
		GOTO EndProc
	  END

	BEGIN TRAN

	INSERT INTO T_CGuid (Name) VALUES(@Name)

	IF ( @@Error  <> 0 )
	  BEGIN
		SET @ErrorCode = 2
	  END
	ELSE 
	  BEGIN
		select @UserGuid = GUID FROM T_CGuid where Name=@Name
		IF ( @@Error  <> 0 )
		  BEGIN
			SET @ErrorCode = 3
		  END
		ELSE 
		  BEGIN
			INSERT INTO T_FriendMain ( GUID, Name, FriendCount, MemoCount) VALUES(@UserGuid, @Name,1,10)
			IF ( @@Error  <> 0 )
				SET @ErrorCode = 4
		  END
	  END

EndTranProc:
	IF ( @@Error  <> 0 )
		ROLLBACK TRAN
	ELSE COMMIT TRAN

EndProc:
	SELECT @ErrorCode
	SET XACT_ABORT OFF
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_SetGuildDelete]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_SetGuildDelete]

	@GuildName	varchar(10)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Result	int
	SET @Result = 1 

	BEGIN TRANSACTION
		DELETE GuildMember WHERE G_Name = @GuildName		
		IF @@Error <> 0 
		BEGIN	
			SET @Result = 0
			GOTO PROBLEM	
		END

		DELETE Guild WHERE G_Name = @GuildName		
		IF @@Error <> 0 
			BEGIN
				SET @Result = 0
				GOTO PROBLEM	
			END
		ELSE GOTO SUCESS

	PROBLEM:
		ROLLBACK TRANSACTION
 
	SUCESS:
   		COMMIT TRANSACTION
				
	SELECT @Result AS Result
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_RenameCharacter]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_RenameCharacter] 

	@ServerCode		smallint,
	@AccountID		varchar(10),
	@Name			varchar(10),
	@ChangeName		varchar(10)
AS
BEGIN

	SET NOCOUNT ON
	SET XACT_ABORT ON
	DECLARE @Result	tinyint, 	@GUID int,	@CGUID	int

	SET LOCK_TIMEOUT	5000
	SET @Result = 0x00	

	IF NOT EXISTS ( SELECT Name FROM Character (READUNCOMMITTED) WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x01		
		GOTO ProcEnd						
	END

	IF NOT EXISTS ( SELECT Name FROM Character (READUNCOMMITTED) WHERE Name = @ChangeName )
	BEGIN
		SET @Result	= 0x02					
		GOTO ProcEnd						
	END

	IF EXISTS( SELECT Name FROM GuildMember (READUNCOMMITTED)  WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x03
		GOTO ProcEnd
	END	
	
	SELECT @GUID=GUID FROM T_CGuid WHERE Name=@Name

	DECLARE @cLevel int,@LevelUpPoint int,@Class tinyint  ,@Experience int ,@Strength smallint  ,@Dexterity smallint  ,@Vitality smallint  ,@Energy smallint  ,@Inventory varbinary (1080)  ,@MagicList varbinary (60)  ,@Money int  ,@Life real  ,@MaxLife real  ,@Mana real  ,@MaxMana real  ,@MapNumber smallint  ,@MapPosX smallint  ,@MapPosY smallint  ,@MapDir tinyint,@PkCount int ,@PkLevel int ,@PkTime int ,@MDate smalldatetime  ,@LDate smalldatetime  ,@CtlCode tinyint ,@DbVersion tinyint,@Quest varbinary (50)  ,@Leadership smallint,@ChatLimitTime smallint
	DECLARE @O_Name varchar(10),@O_SkillKey binary(10),@O_GameOption tinyint,@O_Qkey tinyint,@O_Wkey tinyint,@O_Ekey tinyint,@O_ChatWindow tinyint
	DECLARE @F_Name varchar(10),@F_FriendCount tinyint,@F_MemoCount int,@F_MemoTotal int

	SELECT @cLevel=cLevel ,@LevelUpPoint=LevelUpPoint ,@Class=Class,@Experience=Experience  ,@Strength=Strength,@Dexterity=Dexterity,@Vitality=Vitality,@Energy=Energy,
		 @Inventory=Inventory  ,@MagicList=MagicList  ,@Money=Money   ,@Life=Life   ,
		 @MaxLife=MaxLife   ,@Mana=Mana   ,@MaxMana=MaxMana   ,@MapNumber=MapNumber,
		 @MapPosX=MapPosX   ,@MapPosY=MapPosY   ,@MapDir=MapDir ,@PkCount=PkCount  ,
		 @PkLevel=PkLevel  ,@PkTime=PkTime  ,@MDate=MDate   ,@LDate=LDate   ,@CtlCode=CtlCode,
		 @DbVersion=DbVersion ,@Quest=Quest  ,@Leadership=Leadership ,@ChatLimitTime=ChatLimitTime 
		 FROM Character WHERE Name=@Name

	SELECT @O_Name=Name, @O_SkillKey=SkillKey, @O_GameOption=GameOption,  @O_Qkey=Qkey, @O_Wkey=Wkey, @O_Ekey=Ekey ,@O_ChatWindow=ChatWindow 
		 FROM OptionData WHERE Name=@Name

	BEGIN DISTRIBUTED TRAN

	IF NOT EXISTS ( SELECT  Id  FROM  AccountCharacter  WHERE Id = @AccountID )
		BEGIN					
			SET @Result  = 0x04
			GOTO ProcTrnEnd
		END
	ELSE
		BEGIN
			DECLARE @g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)						
			SELECT @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5 FROM dbo.AccountCharacter Where Id = @AccountID 			

			IF( @g1 = @Name )
				BEGIN
					UPDATE AccountCharacter SET  GameID1 = @ChangeName
					WHERE Id = @AccountID
		
					SET @Result  = @@Error
				END
			ELSE IF( @g2 = @Name )
				BEGIN
					UPDATE AccountCharacter SET  GameID2 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g3 = @Name )
				BEGIN		
					UPDATE AccountCharacter SET  GameID3 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g4 = @Name )
				BEGIN
					UPDATE AccountCharacter SET  GameID4 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g5 = @Name )
				BEGIN
					UPDATE AccountCharacter SET  GameID5 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE	
				BEGIN			
					SET @Result	= 0x05				
					GOTO ProcTrnEnd								
				END

			IF( @g1 = @ChangeName )
				BEGIN
					UPDATE AccountCharacter SET  GameID1 = ''
					WHERE Id = @AccountID
		
					SET @Result  = @@Error
				END
			ELSE IF( @g2 = @ChangeName )
				BEGIN
					UPDATE AccountCharacter SET  GameID2 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g3 = @ChangeName )
				BEGIN	
					UPDATE AccountCharacter SET  GameID3 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g4 = @ChangeName )
				BEGIN
					UPDATE AccountCharacter SET  GameID4 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END
			ELSE IF( @g5 = @ChangeName )
				BEGIN
					UPDATE AccountCharacter SET  GameID5 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				END	
			ELSE	
				BEGIN		
					SET @Result	= 0x05			
					GOTO ProcTrnEnd								
				END	
	 		END

	IF ( @Result <> 0 )
	BEGIN
		GOTO ProcTrnEnd	
	END

	IF ( @Result = 0 )
	BEGIN
		
		UPDATE Character	
		SET
		cLevel=@cLevel ,LevelUpPoint=@LevelUpPoint ,Class=@Class,Experience=@Experience  ,
		Strength=@Strength,Dexterity=@Dexterity,Vitality=@Vitality,Energy=@Energy,
		Inventory=@Inventory  ,MagicList=@MagicList  ,Money=@Money   ,Life=@Life   ,
		MaxLife=@MaxLife   ,Mana=@Mana   ,MaxMana=@MaxMana   ,MapNumber=@MapNumber,
		MapPosX=@MapPosX   ,MapPosY=@MapPosY   ,MapDir=@MapDir ,PkCount=@PkCount  ,
		PkLevel=@PkLevel  ,PkTime=@PkTime  ,MDate=@MDate   ,LDate=@LDate   ,CtlCode=@CtlCode,
		DbVersion=@DbVersion ,Quest=@Quest  ,Leadership=@Leadership ,ChatLimitTime=@ChatLimitTime 
		FROM Character WHERE Name=@ChangeName


		UPDATE OptionData SET SkillKey=@O_SkillKey,GameOption= @O_GameOption, Qkey= @O_Qkey, Wkey=@O_Wkey, Ekey=@O_Ekey ,ChatWindow=@O_ChatWindow 
		WHERE Name=@ChangeName
		
		SET @Result =  @@Error
		IF @Result <> 0 
			GOTO ProcTrnEnd	
	END 

ProcTrnEnd:
	IF ( @Result  <> 0 )
		ROLLBACK TRAN
	ELSE
		COMMIT TRAN


ProcEnd:
	SELECT @Result	

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_MoveCharacter]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_MoveCharacter] 

	@AccountID			varchar(10),
	@Name				varchar(10),
	@ChangeAccountID		varchar(10),
	@IsOriginalAccountID 		bit
AS
BEGIN

	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	DECLARE	@Result			tinyint	
	DECLARE	@ResultLowCount		int
	DECLARE	@Class				tinyint
	DECLARE	@Ctl1_Code			tinyint
	DECLARE	@SQLEXEC			varchar(1000)
	DECLARE	@ErrorCheck			INT
	DECLARE 	@g1 				varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)
	DECLARE 	@MoveCnt			 tinyint		
	DECLARE 	@ChangeMoveCnt		tinyint		
	DECLARE	@SqlStmt			VARCHAR(700)		
	DECLARE	@SqlStmt2			VARCHAR(700)		
	DECLARE	@SqlStmt3			VARCHAR(700)		

	SET LOCK_TIMEOUT	1000
	SET @Result = 0x00	
	SET @ErrorCheck = 0x00

	IF EXISTS( SELECT Name FROM GuildMember   WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x10
		GOTO ON_ERROR
	END

	SELECT @Class = Class, @Ctl1_Code = CtlCode FROM Character WHERE Name = @Name
	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error
  						
	IF @ResultLowCount = 0 
	BEGIN
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	END

	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	IF ( (@Ctl1_Code & 127 ) > 0 )
	BEGIN
		SET @Result	= 0x03			
		GOTO ON_ERROR						
	END 

	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @MoveCnt = MoveCnt 
	FROM dbo.AccountCharacter WHERE Id = @AccountID 		
	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	IF @ResultLowCount = 0 
	BEGIN
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	END

	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	IF @MoveCnt IS NULL 
	BEGIN
		SET @MoveCnt  =0 
	END

	IF  @Class = 48 
		BEGIN
			IF ((@MoveCnt&240) > 0) 
				BEGIN	
					SET @Result	= 0x04
					GOTO ON_ERROR				
				END 
			ELSE
				BEGIN
					SET @MoveCnt =  @MoveCnt | 16	
				END 
		END
	ELSE
		BEGIN
			IF @Class = 64
				BEGIN
					IF ((@MoveCnt&240) > 0) 
						BEGIN	
							SET @Result	= 0x04
						GOTO ON_ERROR				
						END 
					ELSE
						BEGIN
							SET @MoveCnt =  @MoveCnt | 16	
						END 
				END
			ELSE
				BEGIN
					IF  ((@MoveCnt&15) > 0)
						BEGIN	
							SET @Result	= 0x04
							GOTO ON_ERROR				
						END 
					ELSE
						BEGIN
							SET @MoveCnt =  @MoveCnt | 1	
						END 
				END 
		END

	SET @SqlStmt = 'UPDATE AccountCharacter  '

	IF ( @g1 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID1 = NULL,'
	ELSE IF ( @g2 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID2 = NULL,'
	ELSE IF ( @g3 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID3 = NULL,'
	ELSE IF ( @g4 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID4 = NULL,'
	ELSE IF ( @g5 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID5 = NULL,'
	ELSE 				
		SET @Result	= 0x05

	IF ( @Result <> 0 )
		GOTO ON_ERROR

	SET @SqlStmt = @SqlStmt + ' MoveCnt =  ' + CONVERT(VARCHAR, @MoveCnt )					
	SET @SqlStmt = @SqlStmt + ' WHERE Id =  ''' + @AccountID	 + ''''				

	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @ChangeMoveCnt = MoveCnt  
	FROM dbo.AccountCharacter  Where Id = @ChangeAccountID 			

	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	IF @ResultLowCount = 0 
	BEGIN
		SET @SqlStmt2 ='INSERT INTO dbo.AccountCharacter(Id, GameID1, GameID2, GameID3, GameID4, GameID5, GameIDC) '
		SET @SqlStmt2 = @SqlStmt2 + ' VALUES( ''' +  @ChangeAccountID + ''', '
		SET @SqlStmt2 = @SqlStmt2 + '''' + @Name + ''', '
		SET @SqlStmt2 = @SqlStmt2 +  ' NULL, NULL, NULL, NULL, NULL) '

		PRINT @SqlStmt2
	END
	ELSE
	BEGIN
		SET @SqlStmt2 = 'UPDATE AccountCharacter SET '
	
		IF( ( @g1 Is NULL) OR (Len(@g1) = 0))
			SET @SqlStmt2 = @SqlStmt2 + '  GameID1 = '
		ELSE IF ( @g2  Is NULL OR Len(@g2) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID2 = '
		ELSE IF ( @g3 Is NULL OR Len(@g3) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID3 = ' 
		ELSE IF ( @g4 Is NULL OR Len(@g4) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID4 = '
		ELSE IF ( @g5 Is NULL OR Len(@g5) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID5 = '
		ELSE 		
			SET @Result	= 0x06			
	
		if( @Result <> 0 )
			GOTO ON_ERROR
		
		SET @SqlStmt2 = @SqlStmt2 +  '''' + @Name + ''''
		SET @SqlStmt2 = @SqlStmt2 + ' WHERE Id =  ''' + @ChangeAccountID + ''''
	END

	SET @SqlStmt3 = 'UPDATE Character '
	SET @SqlStmt3 = @SqlStmt3 + 'SET  AccountID = ''' + @ChangeAccountID + ''''
	
	IF @IsOriginalAccountID = 1
		SET @SqlStmt3 = @SqlStmt3 + ', CtlCode = ' + CONVERT(VARCHAR, @Ctl1_Code & 127	)
	ELSE
		SET @SqlStmt3 = @SqlStmt3 + ', CtlCode = ' + CONVERT(VARCHAR,  @Ctl1_Code | 128	)
	
	SET @SqlStmt3 = @SqlStmt3 + ' WHERE Name = ''' +  @Name + ''''


	BEGIN TRANSACTION 

	EXEC(@SqlStmt)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	EXEC(@SqlStmt2)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR
	
	EXEC(@SqlStmt3)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

ON_TRN_ERROR:
	IF ( @Result  <> 0 ) OR (@ErrorCheck <> 0)
	BEGIN
		IF @Result = 0 
			SET @Result = 0x09

		ROLLBACK TRAN
	END
	ELSE
		COMMIT	TRAN

ON_ERROR:
	IF @ErrorCheck <> 0
	BEGIN
		SET @Result = 0x09
	END 

	SELECT @Result	

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_GuildCreate]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_GuildCreate]

	@GuildName	varchar(8),
	@MasterName 	varchar(10)
AS
BEGIN
	DECLARE @ErrorCode int

	SET @ErrorCode = 0
	SET XACT_ABORT ON

	SET NOCOUNT ON
	BEGIN TRANSACTION

	INSERT INTO Guild (G_Name, G_Master, G_Score) VALUES (@GuildName, @MasterName, 0)
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode = 1
	END

	IF ( @ErrorCode  =  0 )
	BEGIN
		INSERT GuildMember (Name, G_Name, G_Level) VALUES (@MasterName, @GuildName, 1)
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode = 2
		END
	END

	IF ( @ErrorCode  <> 0 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION

	SELECT @ErrorCode

	SET NOCOUNT OFF
	SET XACT_ABORT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_ReqRegAttackGuild]    Script Date: 06/16/2014 13:28:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[WZ_CS_ReqRegAttackGuild]

	@iMapSvrGroup		SMALLINT,
	@szGuildName		VARCHAR(8)
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE	@iMaxRegGuildCount	INT
	DECLARE	@iCurRegGuildCount	INT
	SET 		@iMaxRegGuildCount	= 100

	SELECT @iCurRegGuildCount = COUNT(*) FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)  WHERE MAP_SVR_GROUP = @iMapSvrGroup
	IF (@iCurRegGuildCount >= @iMaxRegGuildCount)
	BEGIN
			SELECT 6 As QueryResult
	END
	ELSE
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
		BEGIN
			SELECT 2 As QueryResult
		END
		ELSE
		BEGIN
			DECLARE @szOwnGuildName		VARCHAR(8)
			SELECT @szOwnGuildName = OWNER_GUILD FROM MuCastle_DATA WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			IF (@szOwnGuildName = @szGuildName)
			BEGIN
				SELECT 3 As QueryResult
			END
			ELSE
			BEGIN
				IF NOT EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szGuildName)
				BEGIN
					SELECT 4 As QueryResult
				END
				ELSE
				BEGIN
					DECLARE @szGuildMaster			VARCHAR(10)
					DECLARE @iGuildMasterLevel			INT
					DECLARE @iGuildMemberCount			INT
					
					SELECT @szGuildMaster = G_Master FROM Guild WHERE G_Name = @szGuildName
					SELECT @iGuildMasterLevel = cLevel FROM Character WHERE Name = @szGuildMaster
					SELECT @iGuildMemberCount = COUNT(*) FROM GuildMember WHERE G_Name = @szGuildName
					
					IF (@iGuildMasterLevel < 200)
					BEGIN
						SELECT 5 As QueryResult
					END
					ELSE
					BEGIN
						IF (@iGuildMemberCount < 1)
						BEGIN
							SELECT 8 As QueryResult
						END
						ELSE
						BEGIN
							DECLARE @iMAX_SEQNUM	INT
							DECLARE @iNXT_SEQNUM	INT
							SELECT @iMAX_SEQNUM = MAX(SEQ_NUM) FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)  WHERE MAP_SVR_GROUP = @iMapSvrGroup
							
							IF (@iMAX_SEQNUM IS NULL)
								SET @iNXT_SEQNUM	= 1
							ELSE
								SET @iNXT_SEQNUM	= @iMAX_SEQNUM + 1

							INSERT INTO MuCastle_REG_SIEGE 
							VALUES (@iMapSvrGroup, @szGuildName, 0, 0, @iNXT_SEQNUM)
					
							SELECT 1 As QueryResult
						END
					END
				END
			END
		END
	END

	
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  StoredProcedure [dbo].[WZ_CS_GetCalcRegGuildList]    Script Date: 06/16/2014 13:28:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[WZ_CS_GetCalcRegGuildList]

	@iMapSvrGroup		SMALLINT
AS
BEGIN
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	DECLARE T_CURSOR CURSOR FAST_FORWARD
	FOR SELECT TOP 100 * FROM MuCastle_REG_SIEGE	WHERE MAP_SVR_GROUP = @iMapSvrGroup AND IS_GIVEUP = 0 ORDER BY SEQ_NUM DESC
	
	OPEN T_CURSOR
	
	DECLARE	@iMapSvrNum			INT
	DECLARE	@szRegGuild			VARCHAR(8)
	DECLARE	@iRegMarks			INT
	DECLARE	@iIsGiveUp			INT
	DECLARE	@iSeqNum			INT
	DECLARE	@iGuildMemberCount		INT
	DECLARE	@iGuildMasterLevel		INT

	CREATE TABLE #T_REG_GUILDLIST  (
		[REG_SIEGE_GUILD] [varchar] (8) NOT NULL ,
		[REG_MARKS] [int] NOT NULL ,
		[GUILD_MEMBER] [int] NOT NULL ,
		[GM_LEVEL] [int] NOT NULL ,
		[SEQ_NUM] [int] NOT NULL 
	) ON [PRIMARY]
	
	FETCH FROM T_CURSOR INTO @iMapSvrNum, @szRegGuild, @iRegMarks, @iIsGiveUp, @iSeqNum
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		IF EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szRegGuild)
		BEGIN
			DECLARE @szGuildMaster	VARCHAR(10)
			SELECT @szGuildMaster = G_Master FROM Guild  WHERE G_Name = @szRegGuild

			IF EXISTS ( SELECT Name FROM Character WITH (READUNCOMMITTED) WHERE Name = @szGuildMaster)
			BEGIN
				SELECT @iGuildMemberCount = COUNT(*) FROM GuildMember WHERE G_Name = @szRegGuild
				SELECT @iGuildMasterLevel = cLevel FROM Character WHERE Name = @szGuildMaster

				INSERT INTO #T_REG_GUILDLIST VALUES (@szRegGuild, @iRegMarks, @iGuildMemberCount, @iGuildMasterLevel, @iSeqNum)
			END
		END
		
		FETCH FROM T_CURSOR INTO @iMapSvrGroup, @szRegGuild, @iRegMarks, @iIsGiveUp, @iSeqNum
	END
	
	CLOSE T_CURSOR
	
	DEALLOCATE T_CURSOR

	SELECT * FROM #T_REG_GUILDLIST

	DROP TABLE #T_REG_GUILDLIST

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END
GO
/****** Object:  Default [DF_AccountCharacter_Summoner]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[AccountCharacter] ADD  CONSTRAINT [DF_AccountCharacter_Summoner]  DEFAULT ((0)) FOR [Summoner]
GO
/****** Object:  Default [DF_AccountCharacter_RageFighter] ******/
ALTER TABLE [dbo].[AccountCharacter] ADD  CONSTRAINT [DF_AccountCharacter_RageFighter]  DEFAULT ((0)) FOR [RageFighter]
GO
/****** Object:  Default [DF_Ware]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[AccountCharacter] ADD  CONSTRAINT [DF_Ware]  DEFAULT ((0)) FOR [ExpandedWarehouse]
GO
/****** Object:  Default [DF_Character_cLevel]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_cLevel]  DEFAULT ((1)) FOR [cLevel]
GO
/****** Object:  Default [DF_Character_LevelUpPoint]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_LevelUpPoint]  DEFAULT ((0)) FOR [LevelUpPoint]
GO
/****** Object:  Default [DF_Character_Experience]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_Experience]  DEFAULT ((0)) FOR [Experience]
GO
/****** Object:  Default [DF_Character_Money]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_Money]  DEFAULT ((0)) FOR [Money]
GO
/****** Object:  Default [DF_Character_MapDir]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_MapDir]  DEFAULT ((0)) FOR [MapDir]
GO
/****** Object:  Default [DF_Character_PkCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_PkCount]  DEFAULT ((0)) FOR [PkCount]
GO
/****** Object:  Default [DF_Character_PkLevel]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_PkLevel]  DEFAULT ((3)) FOR [PkLevel]
GO
/****** Object:  Default [DF_Character_PkTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_PkTime]  DEFAULT ((0)) FOR [PkTime]
GO
/****** Object:  Default [DF_Character_CtlCode]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_CtlCode]  DEFAULT ((0)) FOR [CtlCode]
GO
/****** Object:  Default [DF__Character__DbVer__3A4CA8FD]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__DbVer__3A4CA8FD]  DEFAULT ((0)) FOR [DbVersion]
GO
/****** Object:  Default [DF__Character__Quest__40F9A68C]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__Quest__40F9A68C]  DEFAULT ((0)) FOR [Quest]
GO
/****** Object:  Default [DF__Character__Leade__6FB49575]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__Leade__6FB49575]  DEFAULT ((0)) FOR [Leadership]
GO
/****** Object:  Default [DF__Character__ChatL__70A8B9AE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__ChatL__70A8B9AE]  DEFAULT ((0)) FOR [ChatLimitTime]
GO
/****** Object:  Default [DF__Character__Fruit__44CA3770]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__Fruit__44CA3770]  DEFAULT ((0)) FOR [FruitPoint]
GO
/****** Object:  Default [DF_Character_Resets]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_Resets]  DEFAULT ((0)) FOR [Resets]
GO
/****** Object:  Default [DF_Character_ExpandedInventory]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_ExpandedInventory]  DEFAULT ((0)) FOR [ExpandedInventory]
GO
/****** Object:  Default [DF_Character_GrandResets]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_GrandResets]  DEFAULT ((0)) FOR [GrandResets]
GO
/****** Object:  Default [DF__DefaultCl__Leade__719CDDE7]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[DefaultClassType] ADD  CONSTRAINT [DF__DefaultCl__Leade__719CDDE7]  DEFAULT ((0)) FOR [Leadership]
GO
/****** Object:  Default [DF__DefaultCl__Level__72910220]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[DefaultClassType] ADD  CONSTRAINT [DF__DefaultCl__Level__72910220]  DEFAULT ((0)) FOR [Level]
GO
/****** Object:  Default [DF__DefaultCl__Level__73852659]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[DefaultClassType] ADD  CONSTRAINT [DF__DefaultCl__Level__73852659]  DEFAULT ((0)) FOR [LevelUpPoint]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_PlayCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC] ADD  CONSTRAINT [DF_EVENT_INFO_BC_PlayCount]  DEFAULT ((1)) FOR [PlayCount]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_3RD_SumLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_3RD] ADD  CONSTRAINT [DF_EVENT_INFO_BC_3RD_SumLeftTime]  DEFAULT ((0)) FOR [SumLeftTime]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_4TH_SumLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_4TH] ADD  CONSTRAINT [DF_EVENT_INFO_BC_4TH_SumLeftTime]  DEFAULT ((0)) FOR [SumLeftTime]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_4TH_MinLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_4TH] ADD  CONSTRAINT [DF_EVENT_INFO_BC_4TH_MinLeftTime]  DEFAULT ((0)) FOR [MinLeftTime]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_5TH_SumLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_5TH] ADD  CONSTRAINT [DF_EVENT_INFO_BC_5TH_SumLeftTime]  DEFAULT ((0)) FOR [SumLeftTime]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_5TH_MinLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_5TH] ADD  CONSTRAINT [DF_EVENT_INFO_BC_5TH_MinLeftTime]  DEFAULT ((0)) FOR [MinLeftTime]
GO
/****** Object:  Default [DF_EVENT_INFO_BC_5TH_MaxPointLeftTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[EVENT_INFO_BC_5TH] ADD  CONSTRAINT [DF_EVENT_INFO_BC_5TH_MaxPointLeftTime]  DEFAULT ((0)) FOR [MaxPointLeftTime]
GO
/****** Object:  Default [DF_GameServerInfo_Number]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[GameServerInfo] ADD  CONSTRAINT [DF_GameServerInfo_Number]  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF_GameServerInfo_ZenCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[GameServerInfo] ADD  CONSTRAINT [DF_GameServerInfo_ZenCount]  DEFAULT ((0)) FOR [ZenCount]
GO
/****** Object:  Default [DF_Guild_G_Score]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Guild] ADD  CONSTRAINT [DF_Guild_G_Score]  DEFAULT ((0)) FOR [G_Score]
GO
/****** Object:  Default [DF_Guild_G_Count]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Guild] ADD  CONSTRAINT [DF_Guild_G_Count]  DEFAULT ((0)) FOR [G_Count]
GO
/****** Object:  Default [DF__Guild__G_Type__7EF6D905]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Guild] ADD  CONSTRAINT [DF__Guild__G_Type__7EF6D905]  DEFAULT ((0)) FOR [G_Type]
GO
/****** Object:  Default [DF__Guild__G_Rival__7FEAFD3E]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Guild] ADD  CONSTRAINT [DF__Guild__G_Rival__7FEAFD3E]  DEFAULT ((0)) FOR [G_Rival]
GO
/****** Object:  Default [DF__Guild__G_Union__00DF2177]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[Guild] ADD  CONSTRAINT [DF__Guild__G_Union__00DF2177]  DEFAULT ((0)) FOR [G_Union]
GO
/****** Object:  Default [DF__GuildMemb__G_Sta__01D345B0]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[GuildMember] ADD  CONSTRAINT [DF__GuildMemb__G_Sta__01D345B0]  DEFAULT ((0)) FOR [G_Status]
GO
/****** Object:  Default [DF_MEMB_INFO_mail_chek]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MEMB_INFO] ADD  CONSTRAINT [DF_MEMB_INFO_mail_chek]  DEFAULT ((0)) FOR [mail_chek]
GO
/****** Object:  Default [DF_MuCastle_Data_SEIGE_ENDED]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_Data_SEIGE_ENDED]  DEFAULT ((0)) FOR [SIEGE_ENDED]
GO
/****** Object:  Default [DF_MuCastle_Data_CASTLE_OCCUPY]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_Data_CASTLE_OCCUPY]  DEFAULT ((0)) FOR [CASTLE_OCCUPY]
GO
/****** Object:  Default [DF_MuCastle_Data_MONEY]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_Data_MONEY]  DEFAULT ((0)) FOR [MONEY]
GO
/****** Object:  Default [DF_MuCastle_Data_TAX_RATE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_Data_TAX_RATE]  DEFAULT ((0)) FOR [TAX_RATE_CHAOS]
GO
/****** Object:  Default [DF_MuCastle_DATA_TAX_RATE_STORE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_DATA_TAX_RATE_STORE]  DEFAULT ((0)) FOR [TAX_RATE_STORE]
GO
/****** Object:  Default [DF_MuCastle_DATA_TAX_HUNT_ZONE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCastle_DATA] ADD  CONSTRAINT [DF_MuCastle_DATA_TAX_HUNT_ZONE]  DEFAULT ((0)) FOR [TAX_HUNT_ZONE]
GO
/****** Object:  Default [DF_MuCrywolf_DATA_CRYWOLF_OCCUFY]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCrywolf_DATA] ADD  CONSTRAINT [DF_MuCrywolf_DATA_CRYWOLF_OCCUFY]  DEFAULT ((0)) FOR [CRYWOLF_OCCUFY]
GO
/****** Object:  Default [DF_MuCrywolf_DATA_CRYWOLF_STATE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCrywolf_DATA] ADD  CONSTRAINT [DF_MuCrywolf_DATA_CRYWOLF_STATE]  DEFAULT ((0)) FOR [CRYWOLF_STATE]
GO
/****** Object:  Default [DF_MuCrywolf_DATA_CHAOSMIX_PLUS_RATE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCrywolf_DATA] ADD  CONSTRAINT [DF_MuCrywolf_DATA_CHAOSMIX_PLUS_RATE]  DEFAULT ((0)) FOR [CHAOSMIX_PLUS_RATE]
GO
/****** Object:  Default [DF_MuCrywolf_DATA_CHAOSMIX_MINUS_RATE]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MuCrywolf_DATA] ADD  CONSTRAINT [DF_MuCrywolf_DATA_CHAOSMIX_MINUS_RATE]  DEFAULT ((0)) FOR [CHAOSMIX_MINUS_RATE]
GO
/****** Object:  Default [DF_T_3rd_Quest_Info1_QuestIndex]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_3rd_Quest_Info] ADD  CONSTRAINT [DF_T_3rd_Quest_Info1_QuestIndex]  DEFAULT ((-1)) FOR [QUEST_INDEX]
GO
/****** Object:  Default [DF_T_3rd_Quest_Info_MON_INDEX_1]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_3rd_Quest_Info] ADD  CONSTRAINT [DF_T_3rd_Quest_Info_MON_INDEX_1]  DEFAULT ((-1)) FOR [MON_INDEX_1]
GO
/****** Object:  Default [DF_T_BC_PCROOM_PLAYCOUNT_PlayCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT] ADD  CONSTRAINT [DF_T_BC_PCROOM_PLAYCOUNT_PlayCount]  DEFAULT ((1)) FOR [PlayCount]
GO
/****** Object:  Default [DF_T_BC_PCROOM_PLAYCOUNT_Point]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT] ADD  CONSTRAINT [DF_T_BC_PCROOM_PLAYCOUNT_Point]  DEFAULT ((0)) FOR [Point]
GO
/****** Object:  Default [DF_T_CC_OFFLINE_GIFT_Date_Reg]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_CC_OFFLINE_GIFT] ADD  CONSTRAINT [DF_T_CC_OFFLINE_GIFT_Date_Reg]  DEFAULT (getdate()) FOR [Date_Reg]
GO
/****** Object:  Default [DF_T_CC_OFFLINE_GIFT_RegCheck]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_CC_OFFLINE_GIFT] ADD  CONSTRAINT [DF_T_CC_OFFLINE_GIFT_RegCheck]  DEFAULT ((0)) FOR [RegCheck]
GO
/****** Object:  Default [DF__T_CurChar__cDate__6BE40491]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_CurCharName] ADD  CONSTRAINT [DF__T_CurChar__cDate__6BE40491]  DEFAULT (getdate()) FOR [cDate]
GO
/****** Object:  Default [DF_T_ENTER_CHECK_DS_ToDayEnterCheck]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_ENTER_CHECK_BC] ADD  CONSTRAINT [DF_T_ENTER_CHECK_DS_ToDayEnterCheck]  DEFAULT ((0)) FOR [ToDayEnterCount]
GO
/****** Object:  Default [DF_T_ENTER_CHECK_BC_LastEnterDate]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_ENTER_CHECK_BC] ADD  CONSTRAINT [DF_T_ENTER_CHECK_BC_LastEnterDate]  DEFAULT (getdate()) FOR [LastEnterDate]
GO
/****** Object:  Default [DF_T_ENTER_CHECK_ILLUSION_TEMPLE_LastEnterDate]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_ENTER_CHECK_ILLUSION_TEMPLE] ADD  CONSTRAINT [DF_T_ENTER_CHECK_ILLUSION_TEMPLE_LastEnterDate]  DEFAULT (getdate()) FOR [LastEnterDate]
GO
/****** Object:  Default [DF_T_FriendList_Del]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendList] ADD  CONSTRAINT [DF_T_FriendList_Del]  DEFAULT ((0)) FOR [Del]
GO
/****** Object:  Default [DF_T_FriendMemo_MemoIndex]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMail] ADD  CONSTRAINT [DF_T_FriendMemo_MemoIndex]  DEFAULT ((10)) FOR [MemoIndex]
GO
/****** Object:  Default [DF_T_FriendMemo_wDate]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMail] ADD  CONSTRAINT [DF_T_FriendMemo_wDate]  DEFAULT (getdate()) FOR [wDate]
GO
/****** Object:  Default [DF_T_FriendMemo_MemoRead]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMail] ADD  CONSTRAINT [DF_T_FriendMemo_MemoRead]  DEFAULT ((0)) FOR [bRead]
GO
/****** Object:  Default [DF_T_FriendMemo_Dir]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMail] ADD  CONSTRAINT [DF_T_FriendMemo_Dir]  DEFAULT ((0)) FOR [Dir]
GO
/****** Object:  Default [DF_T_FriendMemo_Action]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMail] ADD  CONSTRAINT [DF_T_FriendMemo_Action]  DEFAULT ((0)) FOR [Act]
GO
/****** Object:  Default [DF_T_FriendMain_MemoCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMain] ADD  CONSTRAINT [DF_T_FriendMain_MemoCount]  DEFAULT ((10)) FOR [MemoCount]
GO
/****** Object:  Default [DF_T_FriendMain_MemoTotal]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_FriendMain] ADD  CONSTRAINT [DF_T_FriendMain_MemoTotal]  DEFAULT ((0)) FOR [MemoTotal]
GO
/****** Object:  Default [DF__T_Kanturu__RegDa__6B24EA82]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_KanturuTimeAttackEvent2006] ADD  CONSTRAINT [DF__T_Kanturu__RegDa__6B24EA82]  DEFAULT (getdate()) FOR [RegDate]
GO
/****** Object:  Default [DF_T_MU2003_EVENT_EventChips_1]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_MU2003_EVENT] ADD  CONSTRAINT [DF_T_MU2003_EVENT_EventChips_1]  DEFAULT ((0)) FOR [EventChips]
GO
/****** Object:  Default [DF_T_MU2003_EVENT_MuttoIndex_1]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_MU2003_EVENT] ADD  CONSTRAINT [DF_T_MU2003_EVENT_MuttoIndex_1]  DEFAULT ((-1)) FOR [MuttoIndex]
GO
/****** Object:  Default [DF_T_MU2003_EVENT_MuttoNumber_1]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_MU2003_EVENT] ADD  CONSTRAINT [DF_T_MU2003_EVENT_MuttoNumber_1]  DEFAULT ((0)) FOR [MuttoNumber]
GO
/****** Object:  Default [DF_T_MU2003_EVENT_Check_Code]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_MU2003_EVENT] ADD  CONSTRAINT [DF_T_MU2003_EVENT_Check_Code]  DEFAULT ((0)) FOR [Check_Code]
GO
/****** Object:  Default [DF_T_PCBANG_POINT_INFO_PCBangPoint]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PCBANG_POINT_INFO] ADD  CONSTRAINT [DF_T_PCBANG_POINT_INFO_PCBangPoint]  DEFAULT ((0)) FOR [PCBangPoint]
GO
/****** Object:  Default [DF_T_PCBANG_POINT_RANKING_EVENT_RankingPoint]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PCBANG_POINT_RANKING_EVENT] ADD  CONSTRAINT [DF_T_PCBANG_POINT_RANKING_EVENT_RankingPoint]  DEFAULT ((0)) FOR [RankingPoint]
GO
/****** Object:  Default [DF_T_PeriodItem_Info_UsedTime]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PeriodItem_Info] ADD  CONSTRAINT [DF_T_PeriodItem_Info_UsedTime]  DEFAULT ((0)) FOR [UsedTime]
GO
/****** Object:  Default [DF_T_PeriodItem_Info_UsedInfo]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PeriodItem_Info] ADD  CONSTRAINT [DF_T_PeriodItem_Info_UsedInfo]  DEFAULT ((0)) FOR [UsedInfo]
GO
/****** Object:  Default [DF_T_PeriodItem_Info_OptionType]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PeriodItem_Info] ADD  CONSTRAINT [DF_T_PeriodItem_Info_OptionType]  DEFAULT ((2)) FOR [OptionType]
GO
/****** Object:  Default [DF_T_Pet_Info_Pet_Level]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PetItem_Info] ADD  CONSTRAINT [DF_T_Pet_Info_Pet_Level]  DEFAULT ((0)) FOR [Pet_Level]
GO
/****** Object:  Default [DF_T_Pet_Info_Pet_Exp]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_PetItem_Info] ADD  CONSTRAINT [DF_T_Pet_Info_Pet_Exp]  DEFAULT ((0)) FOR [Pet_Exp]
GO
/****** Object:  Default [DF__T_QUEST_E__ASK_I__3C89F72A]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF__T_QUEST_E__ASK_I__3C89F72A]  DEFAULT ((0)) FOR [ASK_INDEX]
GO
/****** Object:  Default [DF__T_QUEST_E__ASK_V__3D7E1B63]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF__T_QUEST_E__ASK_V__3D7E1B63]  DEFAULT ((0)) FOR [ASK_VALUE]
GO
/****** Object:  Default [DF__T_QUEST_E__ASK_S__3E723F9C]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF__T_QUEST_E__ASK_S__3E723F9C]  DEFAULT ((0)) FOR [ASK_STATE]
GO
/****** Object:  Default [DF__T_QUEST_E__QUEST__3F6663D5]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF__T_QUEST_E__QUEST__3F6663D5]  DEFAULT ((0)) FOR [QUEST_START_DATE]
GO
/****** Object:  Default [DF__T_QUEST_E__QUEST__405A880E]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF__T_QUEST_E__QUEST__405A880E]  DEFAULT ((0)) FOR [QUEST_END_DATE]
GO
/****** Object:  Default [DF_T_QUEST_EXP_INFO_StartDateConvert]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF_T_QUEST_EXP_INFO_StartDateConvert]  DEFAULT ((0)) FOR [StartDateConvert]
GO
/****** Object:  Default [DF_T_QUEST_EXP_INFO_EndDateConvert]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_EXP_INFO] ADD  CONSTRAINT [DF_T_QUEST_EXP_INFO_EndDateConvert]  DEFAULT ((0)) FOR [EndDateConvert]
GO
/****** Object:  Default [DF__T_QUEST_M__QUEST__40C49C62]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_MONSTERKILL] ADD  CONSTRAINT [DF__T_QUEST_M__QUEST__40C49C62]  DEFAULT ((-1)) FOR [QUEST_INDEX]
GO
/****** Object:  Default [DF__T_QUEST_M__MON_I__41B8C09B]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_QUEST_MONSTERKILL] ADD  CONSTRAINT [DF__T_QUEST_M__MON_I__41B8C09B]  DEFAULT ((-1)) FOR [MON_INDEX_1]
GO
/****** Object:  Default [DF_T_RegCount_Check_RegCount]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_RegCount_Check] ADD  CONSTRAINT [DF_T_RegCount_Check_RegCount]  DEFAULT ((1)) FOR [RegCount]
GO
/****** Object:  Default [DF_T_RegCount_Check_RegAlready]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_RegCount_Check] ADD  CONSTRAINT [DF_T_RegCount_Check_RegAlready]  DEFAULT ((0)) FOR [RegAlready]
GO
/****** Object:  Default [DF_T_Serial_Bank_F_RegisterCheck]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_Serial_Bank] ADD  CONSTRAINT [DF_T_Serial_Bank_F_RegisterCheck]  DEFAULT ((0)) FOR [F_RegisterCheck]
GO
/****** Object:  Default [DF__T_MasterL__MASTE__658C0CBD]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_SkillTree_Info] ADD  CONSTRAINT [DF__T_MasterL__MASTE__658C0CBD]  DEFAULT ((0)) FOR [MASTER_LEVEL]
GO
/****** Object:  Default [DF__T_MasterL__ML_EX__668030F6]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_SkillTree_Info] ADD  CONSTRAINT [DF__T_MasterL__ML_EX__668030F6]  DEFAULT ((0)) FOR [ML_EXP]
GO
/****** Object:  Default [DF__T_MasterL__ML_NE__6774552F]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_SkillTree_Info] ADD  CONSTRAINT [DF__T_MasterL__ML_NE__6774552F]  DEFAULT ((0)) FOR [ML_NEXTEXP]
GO
/****** Object:  Default [DF__T_MasterL__ML_PO__68687968]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_SkillTree_Info] ADD  CONSTRAINT [DF__T_MasterL__ML_PO__68687968]  DEFAULT ((0)) FOR [ML_POINT]
GO
/****** Object:  Default [DF_T_User_CheckSum_WHCheckSum]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[T_User_CheckSum] ADD  CONSTRAINT [DF_T_User_CheckSum_WHCheckSum]  DEFAULT ((-1)) FOR [WHCheckSum]
GO
/****** Object:  Default [DF_warehouse_Money]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[warehouse] ADD  CONSTRAINT [DF_warehouse_Money]  DEFAULT ((0)) FOR [Money]
GO
/****** Object:  Default [DF__warehouse__DbVer__3B40CD36]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[warehouse] ADD  CONSTRAINT [DF__warehouse__DbVer__3B40CD36]  DEFAULT ((0)) FOR [DbVersion]
GO
/****** Object:  Default [DF__warehouse__pw__40058253]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[warehouse] ADD  CONSTRAINT [DF__warehouse__pw__40058253]  DEFAULT ((0)) FOR [pw]
GO
/****** Object:  Default [DF_ZenEvent_Zen]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[ZenEvent] ADD  CONSTRAINT [DF_ZenEvent_Zen]  DEFAULT ((0)) FOR [Zen]
GO
/****** Object:  ForeignKey [FK_GuildMember_Guild]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[GuildMember]  WITH CHECK ADD  CONSTRAINT [FK_GuildMember_Guild] FOREIGN KEY([G_Name])
REFERENCES [dbo].[Guild] ([G_Name])
GO
ALTER TABLE [dbo].[GuildMember] CHECK CONSTRAINT [FK_GuildMember_Guild]
GO
/****** Object:  ForeignKey [FK_MEMB_DETA_MEMB_INFO]    Script Date: 06/16/2014 13:28:38 ******/
ALTER TABLE [dbo].[MEMB_DETA]  WITH NOCHECK ADD  CONSTRAINT [FK_MEMB_DETA_MEMB_INFO] FOREIGN KEY([memb_guid])
REFERENCES [dbo].[MEMB_INFO] ([memb_guid])
GO
ALTER TABLE [dbo].[MEMB_DETA] CHECK CONSTRAINT [FK_MEMB_DETA_MEMB_INFO]
GO
ALTER TABLE [dbo].[MEMB_INFO] ADD  CONSTRAINT [DF_MEMB_INFO_cspoints]  DEFAULT ((0)) FOR [cspoints]
GO

/* Inserts */
INSERT INTO [dbo].[Mu_DBID] VALUES(1)
GO

INSERT INTO [dbo].[GameServerInfo] VALUES(0, 0, 0, 0, 0)
GO