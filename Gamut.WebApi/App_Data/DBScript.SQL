USE [gamutdatabase]
GO
/****** Object:  Table [dbo].[AccountDetails]    Script Date: 01-07-2018 02:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[accountNumber] [varchar](50) NULL,
	[nature] [varchar](50) NULL,
	[smaRiskType] [varchar](50) NULL,
	[smaRiskLevel] [int] NULL,
	[limit] [float] NULL,
	[balance] [float] NULL,
	[exposure] [float] NULL,
	[undisbursed] [float] NULL,
	[arrears] [float] NULL,
	[bankingArr] [varchar](50) NULL,
	[leadBank] [varchar](250) NULL,
	[dcco] [datetime] NULL,
	[roi] [float] NULL,
	[period] [varchar](50) NULL,
	[security] [varchar](250) NULL,
	[cashMargin] [float] NULL,
	[lastRenewalDate] [datetime] NULL,
	[lastReviewDate] [datetime] NULL,
	[lastReviewDate1or2] [varchar](50) NULL,
	[lastUpdateOn] [datetime] NULL,
	[lastUpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_AccountDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 01-07-2018 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[activityType] [varchar](100) NULL,
	[logType] [varchar](50) NULL,
	[informationDate] [datetime] NULL,
	[stepsTaken] [varchar](500) NULL,
	[attachment] [varchar](200) NULL,
	[nextFollowupDate] [datetime] NULL,
	[ractificationDate] [datetime] NULL,
	[compiledDate] [datetime] NULL,
	[lastUpdatedBy] [varchar](50) NULL,
	[lastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustDocument]    Script Date: 01-07-2018 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustDocument](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_id] [varchar](50) NULL,
	[Periodicity] [varchar](50) NULL,
	[DocumentType] [varchar](50) NULL,
	[Submitted] [varchar](50) NULL,
	[SubmittedDate] [datetime] NULL,
	[DeviationNoted] [varchar](250) NULL,
	[CompiledDate] [datetime] NULL,
	[IsChecked] [int] NULL,
	[MonitorId] [varchar](100) NULL,
	[LastUpdatedBy] [varchar](50) NULL,
	[LastUpdatedOn] [varchar](50) NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 01-07-2018 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Cust_id] [varchar](50) NOT NULL,
	[Cust_Name] [varchar](250) NULL,
	[Pan_No] [varchar](50) NULL,
	[Exposure] [float] NULL,
	[Exposure_AsOn] [date] NULL,
	[Constitution] [varchar](250) NULL,
	[Industry] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Activity] [varchar](100) NULL,
	[Branch] [varchar](100) NULL,
	[FinDataMappingId] [varchar](1000) NULL,
	[NewsDataMappingId] [varchar](1000) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDataMapping]    Script Date: 01-07-2018 02:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDataMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustID] [varchar](50) NULL,
	[MAppingURl] [varchar](500) NULL,
	[TypeId] [int] NULL,
 CONSTRAINT [PK_CustomerDataMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialResultDetails]    Script Date: 01-07-2018 02:57:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialResultDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HeaderID] [int] NULL,
	[Amount] [decimal](19, 4) NULL,
	[ResQuarter] [varchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Cust_id] [varchar](50) NULL,
	[Trends] [varchar](50) NULL,
 CONSTRAINT [PK_FinancialResultDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialResultHeader]    Script Date: 01-07-2018 02:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialResultHeader](
	[HeaderID] [int] IDENTITY(1,1) NOT NULL,
	[HeaderName] [varchar](500) NULL,
	[TypeId] [int] NULL,
	[IsActive] [bit] NULL,
	[parentID] [int] NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_FinancialResultHeader] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialResultType]    Script Date: 01-07-2018 02:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialResultType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsFinancialData] [bit] NULL,
 CONSTRAINT [PK_FinancialResultType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[General]    Script Date: 01-07-2018 02:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[General](
	[Cust_id] [varchar](50) NOT NULL,
	[Activity] [varchar](250) NULL,
	[Sector_SubSector] [varchar](250) NULL,
	[Priority_Non_Priority] [varchar](250) NULL,
	[Govt_sponsored] [varchar](250) NULL,
	[Industry] [varchar](250) NULL,
	[Incorporation] [varchar](250) NULL,
	[Connection_Since] [varchar](250) NULL,
	[Internal_Rating] [varchar](250) NULL,
	[Internal_Rating_AsOn] [date] NULL,
	[External_Rating] [varchar](250) NULL,
	[External_Rating_AsOn] [date] NULL,
	[Inspection_Comments] [varchar](250) NULL,
	[Banking_Argmt] [varchar](250) NULL,
	[If_Consortium] [varchar](250) NULL,
	[Lead_Bank] [varchar](250) NULL,
	[SMA] [varchar](250) NULL,
	[DCCO] [varchar](250) NULL,
	[DCCO_AsOn] [date] NULL,
	[Takeover] [varchar](250) NULL,
	[Takeover_AsOn] [date] NULL,
	[Takeover_From] [varchar](250) NULL,
	[Reason_for_Takeover] [varchar](250) NULL,
	[Working_capital_L] [float] NULL,
	[Term_Load_L] [float] NULL,
	[Bank_Gurantee_L] [float] NULL,
	[Letter_of_credit_L] [float] NULL,
	[PCL_L] [float] NULL,
	[Bill_Purchase_L] [float] NULL,
	[Working_capital_B] [float] NULL,
	[Term_Load_B] [float] NULL,
	[Bank_Gurantee_B] [float] NULL,
	[Letter_of_credit_B] [float] NULL,
	[PCL_B] [float] NULL,
	[Bill_Purchase_B] [float] NULL,
	[Working_capital_E] [float] NULL,
	[Term_Load_E] [float] NULL,
	[Bank_Gurantee_E] [float] NULL,
	[Letter_of_credit_E] [float] NULL,
	[PCL_E] [float] NULL,
	[Bill_Purchase_E] [float] NULL,
	[Defaults] [varchar](250) NULL,
	[Defaults_As_On] [date] NULL,
	[Gurantor_1] [varchar](250) NULL,
	[Gurantor_2] [varchar](250) NULL,
	[Promoter_1] [varchar](250) NULL,
	[Promoter_2] [varchar](250) NULL,
	[Promoter_3] [varchar](250) NULL,
 CONSTRAINT [PK_General] PRIMARY KEY CLUSTERED 
(
	[Cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralExposure]    Script Date: 01-07-2018 02:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralExposure](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[Nature] [varchar](50) NULL,
	[Limit] [float] NULL,
	[Balance] [float] NULL,
	[Exposure] [float] NULL,
 CONSTRAINT [PK_GeneralExposure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralGurantor]    Script Date: 01-07-2018 02:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralGurantor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[accountNo] [varchar](50) NULL,
	[gurCust_Id] [varchar](50) NULL,
	[gurType] [varchar](50) NULL,
	[netWorth] [float] NULL,
 CONSTRAINT [PK_GeneralGurantor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inspection]    Script Date: 01-07-2018 02:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inspection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[AuditType] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Comments] [varchar](500) NULL,
	[InspectionStatus] [varchar](50) NULL,
	[FollowUpDate] [datetime] NULL,
	[CompiledDate] [datetime] NULL,
	[LastUpdatedBy] [varchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Inspection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 01-07-2018 02:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[accountNo] [varchar](50) NULL,
	[accountType] [varchar](50) NULL,
	[roi] [varchar](100) NULL,
	[asperID] [float] NULL,
	[dated] [datetime] NULL,
	[schemeType] [varchar](50) NULL,
	[followUpDate] [datetime] NULL,
	[compiledDate] [datetime] NULL,
	[source] [varchar](50) NULL,
 CONSTRAINT [PK_Interest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookUp]    Script Date: 01-07-2018 02:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LookUp_Table] [varchar](150) NULL,
	[LookUp_Name] [varchar](150) NULL,
	[LookUp_Value] [varchar](250) NULL,
 CONSTRAINT [PK_LookUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 01-07-2018 02:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [bigint] IDENTITY(1,1) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[Source] [varchar](100) NULL,
	[Heading] [varchar](500) NULL,
	[Url] [varchar](500) NULL,
	[Cust_id] [varchar](50) NULL,
	[Comments] [varchar](5000) NULL,
	[InformedTo] [varchar](500) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 01-07-2018 02:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[particular] [varchar](150) NULL,
	[dateFrom] [datetime] NULL,
	[dateTo] [datetime] NULL,
	[ratingType] [varchar](50) NULL,
	[ratingYear] [int] NULL,
	[ratingValue] [varchar](50) NULL,
	[byId] [varchar](50) NULL,
	[source] [varchar](50) NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestucturingDetail]    Script Date: 01-07-2018 02:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestucturingDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_id] [varchar](50) NULL,
	[accountNo] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[accountDate] [datetime] NULL,
	[cutofDate] [datetime] NULL,
	[sacrifice] [float] NULL,
	[repaymentStartDate] [datetime] NULL,
	[frequency] [varchar](50) NULL,
 CONSTRAINT [PK_RestucturingDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestucturingHeader]    Script Date: 01-07-2018 02:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestucturingHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[accountRestructured] [varchar](50) NULL,
	[accountRescheduled] [varchar](50) NULL,
	[idNo] [varchar](50) NULL,
	[soApplicationDate] [datetime] NULL,
	[checkedByCRMD] [varchar](50) NULL,
	[pfNo] [varchar](50) NULL,
	[followupDate] [datetime] NULL,
	[accountRegularisedDate] [datetime] NULL,
	[projectType] [varchar](50) NULL,
	[dccoDate] [datetime] NULL,
	[ExtendedDate] [datetime] NULL,
	[actualDate] [datetime] NULL,
 CONSTRAINT [PK_RestucturingHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security]    Script Date: 01-07-2018 02:57:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[accountNo] [varchar](50) NULL,
	[securityType] [varchar](50) NULL,
	[balanceAsOn] [float] NULL,
	[securityDetails] [varchar](250) NULL,
	[apportionValue] [float] NULL,
	[correctFlag] [varchar](50) NULL,
	[followUpDate] [datetime] NULL,
	[coverage] [varchar](50) NULL,
	[guarantorId] [varchar](50) NULL,
	[guarantorNetWorth] [float] NULL,
 CONSTRAINT [PK_SecurityDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMABucket]    Script Date: 01-07-2018 02:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMABucket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[bucket] [varchar](50) NULL,
	[banksFICounts] [varchar](50) NULL,
	[numberFIBanks] [varchar](50) NULL,
	[unregularisedDays] [varchar](50) NULL,
	[noOfFI] [varchar](50) NULL,
	[regularised] [varchar](250) NULL,
	[reportDate] [datetime] NULL,
	[lastupdatedOn] [datetime] NULL,
	[lastupdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_SMABucket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMACompilation]    Script Date: 01-07-2018 02:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMACompilation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_id] [varchar](50) NULL,
	[JLF] [varchar](50) NULL,
	[smaDate] [datetime] NULL,
	[calledBy] [nchar](10) NULL,
	[meeetingSummary] [varchar](500) NULL,
	[branchReply] [varchar](500) NULL,
	[nextFollowupDate] [datetime] NULL,
	[LastUpdateBy] [varchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_SMACompilation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMAHistory]    Script Date: 01-07-2018 02:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMAHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[smaClass] [varchar](50) NULL,
	[accountNumber] [varchar](50) NULL,
	[reason] [varchar](250) NULL,
	[noOfDays] [int] NULL,
	[nextStatus] [varchar](50) NULL,
	[smaDate] [datetime] NULL,
	[CompiledDate] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_SMAHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Snapshot]    Script Date: 01-07-2018 02:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snapshot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[snapshotType] [varchar](50) NULL,
	[snapshotDescription] [varchar](100) NULL,
	[data1Description] [varchar](50) NULL,
	[data1Value] [varchar](50) NULL,
	[data2Description] [varchar](50) NULL,
	[data2Value] [varchar](50) NULL,
	[data3Description] [varchar](50) NULL,
	[data3Value] [varchar](50) NULL,
	[data4Description] [varchar](50) NULL,
	[data4Value] [varchar](50) NULL,
	[data5Description] [varchar](50) NULL,
	[data5Value] [varchar](50) NULL,
	[compiledDate] [datetime] NULL,
	[SortOrder] [int] NULL,
	[lastUpdatedOn] [datetime] NULL,
	[lastUpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Snapshot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOC124]    Script Date: 01-07-2018 02:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOC124](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_id] [varchar](50) NULL,
	[sourceSystemId] [varchar](50) NULL,
	[approvalDate] [datetime] NULL,
	[via] [varchar](50) NULL,
	[approvalFor] [varchar](250) NULL,
	[isCompiled] [varchar](50) NULL,
	[followUpDate] [datetime] NULL,
	[compiledDate] [datetime] NULL,
 CONSTRAINT [PK_SOC124] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 01-07-2018 02:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Class] [varchar](100) NULL,
	[EnrollYear] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarningIndicator]    Script Date: 01-07-2018 02:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarningIndicator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
	[fromDate] [datetime] NULL,
	[toDate] [datetime] NULL,
	[asOnDate] [datetime] NULL,
	[WarningSignal] [varchar](250) NULL,
	[irregularities] [varchar](50) NULL,
	[observedOn] [datetime] NULL,
	[observationRemarks] [varchar](250) NULL,
	[actionFor] [varchar](250) NULL,
	[lastUpdatedOn] [datetime] NULL,
	[lastUpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_WarningIndicator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountDetails] ON 
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (1, N'TATAPOWER', N'123456780', N'CC', N'SMA0', 1, 1000, 750, 1000, 750, NULL, N'Consortium', N'SBI', NULL, 8.75, N'', N'', NULL, CAST(N'2018-03-18T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (2, N'TATAPOWER', N'123456781', N'Term Loan', N'SMA1', 2, 5000, 4850, 4900, 4850, NULL, N'Multiple', N'NA', CAST(N'2012-04-05T00:00:00.000' AS DateTime), 8.2, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (3, N'TATAPOWER', N'123456782', N'BG/LC', N'NA', 0, 500, 400, 500, 400, NULL, N'Consortium', N'SBI', NULL, 0.25, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (4, N'RIL', N'123456783', N'WCDL', N'NA', 0, 10000, 10010, 10010, 10010, NULL, N'Multiple', N'NA', NULL, 8.75, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (5, N'RIL', N'123456784', N'WCDL', N'NA', 0, 7500, 2500, 7500, 2500, NULL, N'Multiple', N'NA', NULL, 8.2, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (6, N'RIL', N'123456785', N'WCDL', N'NA', 0, 3000, 3003, 3003, 3003, NULL, N'Multiple', N'NA', NULL, 8.2, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (7, N'RIL', N'123456786', N'WCDL', N'NA', 0, 2500, 2000, 2000, 2000, NULL, N'Multiple', N'NA', NULL, 8.2, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (8, N'ICICIHF', N'123456787', N'Term Loan', N'NA', 0, 10000, 2250, 2250, 2250, NULL, N'Consortium', N'ICICI Bank', NULL, 9.03, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (9, N'ICICIHF', N'123456788', N'Term Loan', N'NA', 0, 2000, 1000, 1000, 1000, NULL, N'Consortium', N'ICICI Bank', NULL, 9.03, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (10, N'ICICIHF', N'123456789', N'Term Loan', N'NA', 0, 6000, 4500, 4500, 4500, NULL, N'Consortium', N'ICICI Bank', NULL, 9.03, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (11, N'ICICIHF', N'123456701', N'Term Loan', N'NA', 0, 2200, 1400, 1400, 1400, NULL, N'Consortium', N'ICICI Bank', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (12, N'LICHF', N'123456702', N'Term Loan', N'NA', 0, 4000, 3000, 3000, 3000, NULL, N'Multiple', N'NA', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (13, N'LICHF', N'123456703', N'Term Loan', N'NA', 0, 6000, 5000, 5000, 5000, NULL, N'Multiple', N'NA', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (14, N'LICHF', N'123456704', N'Term Loan', N'NA', 0, 9000, 7500, 7500, 7500, NULL, N'Multiple', N'NA', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (15, N'LICHF', N'123456705', N'Term Loan', N'NA', 0, 6600, 2000, 2000, 2000, NULL, N'Multiple', N'NA', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (16, N'LICHF', N'123456706', N'Term Loan', N'NA', 0, 2400, 600, 600, 600, NULL, N'Multiple', N'NA', NULL, 9.1, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (17, N'ATULAUTO', N'123456707', N'Term Loan', N'NA', 0, 1000, 500, 500, 500, NULL, N'Sole', N'NA', NULL, 9.76, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (18, N'ATULAUTO', N'123456708', N'CC', N'NA', 0, 4400, 4395, 4395, 4395, NULL, N'Sole', N'NA', NULL, 9.76, N'', N'', NULL, CAST(N'2016-03-15T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'2', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (19, N'ATULAUTO', N'123456709', N'PCA', N'SMA0', 1, 2500, 2500, 2500, 2500, NULL, N'Sole', N'NA', NULL, 9.76, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (20, N'ATULAUTO', N'123456710', N'PSL', N'NA', 0, 2500, 100, 2500, 100, NULL, N'Sole', N'NA', NULL, NULL, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (21, N'MARUTI', N'123456711', N'Term Loan', N'NA', 0, 90000, 86000, 90000, 86000, NULL, N'Consortium', N'HDFC Bank', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 7.95, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (22, N'PATANJALI', N'123456712', N'Term Loan', N'NA', 0, 75000, 75000, 75000, 75000, NULL, N'Sole', N'NA', NULL, 8.25, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (23, N'HUL', N'123456713', N'PCA', N'NA', 0, 30000, 200, 30000, 200, NULL, N'Consortium', N'ICICI Bank', NULL, NULL, N'', N'', NULL, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (24, N'HUL', N'123456714', N'PSL', N'NA', 0, 90000, 80000, 90000, 80000, NULL, N'Consortium', N'ICICI Bank', NULL, NULL, N'', N'', NULL, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (25, N'JAYPEE', N'123456715', N'Term Loan', N'SMA2', 2, 10000, 9700, 9700, 9700, NULL, N'Multiple', N'NA', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 8.99, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (26, N'JAYPEE', N'123456716', N'FITL', N'SMA1', 1, 1875, 1776, 1776, 1776, NULL, N'Multiple', N'NA', NULL, 8.99, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (27, N'HCC', N'123456717', N'Term Loan', N'SMA2', 2, 4500, 4099, 4099, 4099, NULL, N'Multiple', N'NA', CAST(N'2003-04-06T00:00:00.000' AS DateTime), 8.79, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (28, N'HCC', N'123456718', N'Term Loan', N'SMA2', 2, 5500, 5598, 5598, 5598, NULL, N'Consortium', N'SBI', CAST(N'2005-12-12T00:00:00.000' AS DateTime), 8.79, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (29, N'HCC', N'123456719', N'CC', N'SMA2', 2, 2000, 2007, 2007, 2007, NULL, N'Consortium', N'SBI', CAST(N'2005-12-12T00:00:00.000' AS DateTime), 8.79, N'', N'', NULL, CAST(N'2014-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [undisbursed], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (30, N'HCC', N'123456720', N'FITL', N'SMA1', 1, 2200, 2008, 2008, 2008, NULL, N'Consortium', N'SBI', NULL, 8.79, N'', N'', NULL, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'1', CAST(N'2018-06-26T00:00:00.000' AS DateTime), N'sunil')
GO
SET IDENTITY_INSERT [dbo].[AccountDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityLog] ON 
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (1, N'Maruti', N'Documents', N'Communication', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (2, N'Maruti', N'Documents', N'Communication', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (3, N'Maruti', N'Documents', N'Communication', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (4, N'Maruti', N'SMA', N'Ist Reminder', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (5, N'Maruti', N'SMA', N'Ist Reminder', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([Id], [Cust_Id], [activityType], [logType], [informationDate], [stepsTaken], [attachment], [nextFollowupDate], [ractificationDate], [compiledDate], [lastUpdatedBy], [lastUpdatedOn]) VALUES (6, N'Maruti', N'SMA', N'Ist Reminder', CAST(N'2010-04-01T00:00:00.000' AS DateTime), N'', N'N/A', CAST(N'2010-05-01T00:00:00.000' AS DateTime), CAST(N'2010-06-01T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-30T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ActivityLog] OFF
GO
SET IDENTITY_INSERT [dbo].[CustDocument] ON 
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (1, N'Cust_id', N'Periodicity', N'Type', N'Submitted Y/N or NA', NULL, N'Dev Notes', NULL, NULL, N'MonitorId', N'Lastupdateby', N'Lastupdteom')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (2, N'Maruti', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (3, N'Maruti', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (4, N'Maruti', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (5, N'Maruti', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (6, N'Maruti', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (7, N'Maruti', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (8, N'Maruti', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (9, N'Maruti', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (10, N'Maruti', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (11, N'Maruti', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (12, N'HUL', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (13, N'HUL', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (14, N'HUL', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (15, N'HUL', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (16, N'HUL', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (17, N'HUL', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (18, N'HUL', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (19, N'HUL', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (20, N'HUL', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (21, N'HUL', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (22, N'HCC', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (23, N'HCC', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (24, N'HCC', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (25, N'HCC', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (26, N'HCC', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (27, N'HCC', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (28, N'HCC', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (29, N'HCC', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (30, N'HCC', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (31, N'HCC', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (32, N'TATAPOWER', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (33, N'TATAPOWER', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (34, N'TATAPOWER', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (35, N'TATAPOWER', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (36, N'TATAPOWER', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (37, N'TATAPOWER', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (38, N'TATAPOWER', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (39, N'TATAPOWER', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (40, N'TATAPOWER', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (41, N'TATAPOWER', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (42, N'HUL', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (43, N'HUL', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (44, N'HUL', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (45, N'HUL', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (46, N'HUL', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (47, N'HUL', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (48, N'HUL', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (49, N'HUL', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (50, N'HUL', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (51, N'HUL', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (52, N'RIL', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (53, N'RIL', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (54, N'RIL', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (55, N'RIL', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (56, N'RIL', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (57, N'RIL', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (58, N'RIL', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (59, N'RIL', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (60, N'RIL', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (61, N'RIL', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (62, N'ICICIHF', N'Annual', N'Audited FS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (63, N'ICICIHF', N'Annual', N'Stock Audit', N'YEs', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (64, N'ICICIHF', N'Annual', N'ECGC/CGTMS', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (65, N'ICICIHF', N'Annual', N'Insurance', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (66, N'ICICIHF', N'Quarterly', N'FFR / QIS', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (67, N'ICICIHF', N'Quarterly', N'Exgn. Of Info', N'No', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, N'', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (68, N'ICICIHF', N'Quarterly', N'UHFCE', N'Yes', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (69, N'ICICIHF', N'General', N'Cersai Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (70, N'ICICIHF', N'General', N'EM Creation', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
INSERT [dbo].[CustDocument] ([Id], [Cust_id], [Periodicity], [DocumentType], [Submitted], [SubmittedDate], [DeviationNoted], [CompiledDate], [IsChecked], [MonitorId], [LastUpdatedBy], [LastUpdatedOn]) VALUES (71, N'ICICIHF', N'General', N'ROC Charge', N'1', CAST(N'2018-04-01T00:00:00.000' AS DateTime), N'', CAST(N'2018-04-01T00:00:00.000' AS DateTime), 1, N'Praveen', N'Praveen', N'29-06-2018')
GO
SET IDENTITY_INSERT [dbo].[CustDocument] OFF
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'ATULAUTO', N'Atul Auto', N'EFGHI4567E', 500, CAST(N'2018-06-23' AS Date), N'Public', N'Auto', N'Auto', N'Mfg of Motor Vehicles', N'Hyerabad Lakdi Ka Pul', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=531795&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/atulauto/AA08')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'HCC', N'HCC', N'JKLMN9012J', 4099, CAST(N'2018-06-23' AS Date), N'Public', N'Infrastructure', N'Infra', N'Construction/Maintenance of Roads', N'Hyerabad Lakdi Ka Pul', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500185&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/construction-contracting-civil/hindustanconstructioncompany/HCC')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'HUL', N'HUL', N'HIJKL7890H', 30000, CAST(N'2018-06-23' AS Date), N'Public', N'Consumables', N'FMCG', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'Bangalore Indira Nagar', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500696&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/personal-care/hindustanunilever/HU')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'ICICIHF', N'ICICI HFC', N'CDEFG2345C', 2250, CAST(N'2018-06-23' AS Date), N'Public', N'NBFC-HFC', N'FI', N'NBFCs- in the housing sector', N'Bangalore Indira Nagar', N'', N'')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'JAYPEE', N'Jaypee Infratech Limited', N'IJKLM8901I', 9700, CAST(N'2018-06-23' AS Date), N'Public', N'Infrastructure', N'Infra', N'Construction/Maintenance of Roads', N'Delhi Karol Baug', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=533207&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/infrastructure-general/jaypeeinfratech/JI09')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'LICHF', N'LIC Housing Finance', N'DEFGH3456D', 3000, CAST(N'2018-06-23' AS Date), N'Public', N'NBFC-HFC', N'FI', N'NBFCs- in the housing sector', N'Delhi Karol Baug', N'', N'')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'MARUTI', N'Maruti Suzuki', N'FGHIJ5678F', 90000, CAST(N'2018-06-23' AS Date), N'Public', N'Auto', N'Auto', N'Mfg of Motor Vehicles', N'Mumbai Fort', N'', N'')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'PATANJALI', N'Patanjali Agro India P Ltd', N'GHIJK6789G', 75000, CAST(N'2018-06-23' AS Date), N'Private', N'Consumables', N'FMCG', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'Chennai Mount Road', N'', N'')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'RIL', N'Reliance Industries Limited', N'BCDEF0123B', 10010, CAST(N'2018-06-23' AS Date), N'Public', N'Oil', N'Energy', N'Manufacture of refined petroleum products', N'Chennai Mount Road', N'', N'')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'TATAPOWER', N'Tata Power', N'ABCDE1234A', 1000, CAST(N'2018-06-23' AS Date), N'Public', N'Power', N'Energy', N'Collection and Distn of Electricity', N'Mumbai Fort', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[CustomerDataMapping] ON 
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (1, N'ATULAUTO', N'https://www.moneycontrol.com/financials/atulauto/balance-sheetVI/AA08#AA08', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (2, N'HCC', N'https://www.moneycontrol.com/financials/hindustanconstructioncompany/balance-sheetVI/HCC#HCC', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (3, N'HUL', N'https://www.moneycontrol.com/financials/hindustanunilever/balance-sheetVI/HU#HU', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (4, N'ICICIHF', N'https://www.moneycontrol.com/financials/icicibank/balance-sheetVI/ICI02#ICI02', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (5, N'JAYPEE', N'https://www.moneycontrol.com/financials/jaypeeinfratech/balance-sheetVI/JI09#JI09', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (6, N'LICHF', N'https://www.moneycontrol.com/financials/lichousingfinance/balance-sheetVI/LIC#LIC', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (7, N'MARUTI', N'https://www.moneycontrol.com/financials/marutisuzukiindia/balance-sheetVI/MS24#MS24', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (8, N'RIL', N'https://www.moneycontrol.com/financials/relianceindustries/balance-sheetVI/RI#RI', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (9, N'TATAPOWER', N'https://www.moneycontrol.com/india/stockpricequote/power-generation-distribution/tatapowercompany/TPC', 3)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (10, N'ATULAUTO', N'https://www.moneycontrol.com/financials/atulauto/profit-lossVI/AA08#AA08', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (11, N'HCC', N'https://www.moneycontrol.com/financials/hindustanconstructioncompany/profit-lossVI/HCC#HCC', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (12, N'HUL', N'https://www.moneycontrol.com/financials/hindustanunilever/profit-lossVI/HU#HU', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (13, N'ICICIHF', N'https://www.moneycontrol.com/financials/icicibank/profit-lossVI/ICI02#ICI02', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (14, N'JAYPEE', N'https://www.moneycontrol.com/financials/jaypeeinfratech/profit-lossVI/JI09#JI09', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (15, N'LICHF', N'https://www.moneycontrol.com/financials/lichousingfinance/profit-lossVI/LIC#LIC', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (16, N'MARUTI', N'https://www.moneycontrol.com/financials/marutisuzukiindia/profit-lossVI/MS24#MS24', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (17, N'RIL', N'https://www.moneycontrol.com/financials/relianceindustries/profit-lossVI/RI#RI', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (18, N'TATAPOWER', N'https://www.moneycontrol.com/financials/tatapowercompany/profit-lossVI/TPC#TPC', 1)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (19, N'ATULAUTO', N'https://www.moneycontrol.com/financials/atulauto/cash-flowVI/AA08#AA08', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (20, N'HCC', N'https://www.moneycontrol.com/financials/hindustanconstructioncompany/cash-flowVI/HCC#HCC', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (21, N'HUL', N'https://www.moneycontrol.com/financials/hindustanunilever/cash-flowVI/HU#HU', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (22, N'ICICIHF', N'https://www.moneycontrol.com/financials/icicibank/cash-flowVI/ICI02#ICI02', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (23, N'JAYPEE', N'https://www.moneycontrol.com/financials/jaypeeinfratech/cash-flowVI/JI09#JI09', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (24, N'LICHF', N'https://www.moneycontrol.com/financials/lichousingfinance/cash-flowVI/LIC#LIC', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (25, N'MARUTI', N'https://www.moneycontrol.com/financials/marutisuzukiindia/cash-flowVI/MS24#MS24', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (26, N'RIL', N'https://www.moneycontrol.com/financials/relianceindustries/cash-flowVI/RI#RI', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (27, N'TATAPOWER', N'https://www.moneycontrol.com/financials/tatapowercompany/cash-flowVI/TPC#TPC', 4)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (28, N'ATULAUTO', N'https://www.moneycontrol.com/financials/atulauto/ratiosVI/AA08#AA08', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (29, N'HCC', N'https://www.moneycontrol.com/financials/hindustanconstructioncompany/ratiosVI/HCC#HCC', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (30, N'HUL', N'https://www.moneycontrol.com/financials/hindustanunilever/ratiosVI/HU#HU', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (31, N'ICICIHF', N'https://www.moneycontrol.com/financials/icicibank/ratiosVI/ICI02#ICI02', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (32, N'JAYPEE', N'https://www.moneycontrol.com/financials/jaypeeinfratech/ratiosVI/JI09#JI09', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (33, N'LICHF', N'https://www.moneycontrol.com/financials/lichousingfinance/ratiosVI/LIC#LIC', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (34, N'MARUTI', N'https://www.moneycontrol.com/financials/marutisuzukiindia/ratiosVI/MS24#MS24', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (35, N'RIL', N'https://www.moneycontrol.com/financials/relianceindustries/ratiosVI/RI#RI', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (36, N'TATAPOWER', N'https://www.moneycontrol.com/financials/tatapowercompany/ratiosVI/TPC#TPC', 5)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (37, N'ATULAUTO', N'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/atulauto/AA08', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (38, N'HCC', N'https://www.moneycontrol.com/india/stockpricequote/construction-contracting-civil/hindustanconstructioncompany/HCC', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (39, N'HUL', N'https://www.moneycontrol.com/india/stockpricequote/personal-care/hindustanunilever/HU', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (40, N'ICICIHF', N'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (41, N'JAYPEE', N'https://www.moneycontrol.com/india/stockpricequote/infrastructure-general/jaypeeinfratech/JI09', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (42, N'LICHF', N'https://www.moneycontrol.com/india/stockpricequote/finance-housing/lichousingfinance/LIC', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (43, N'MARUTI', N'https://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (44, N'RIL', N'https://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (45, N'TATAPOWER', N'https://www.moneycontrol.com/india/stockpricequote/power-generation-distribution/tatapowercompany/TPC', 7)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (46, N'ATULAUTO', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=531795&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (47, N'HCC', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500185&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (48, N'HUL', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500696&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (49, N'ICICIHF', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=532174&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (50, N'JAYPEE', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=533207&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (51, N'LICHF', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500253&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (52, N'MARUTI', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=532500&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (53, N'RIL', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500325&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (54, N'TATAPOWER', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500400&expandable=0', 2)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (55, N'ATULAUTO', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=531795&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (56, N'HCC', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500185&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (57, N'HUL', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500696&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (58, N'ICICIHF', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=532174&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (59, N'JAYPEE', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=533207&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (60, N'LICHF', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500253&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (61, N'MARUTI', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=532500&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (62, N'RIL', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500325&expandable=0', 6)
GO
INSERT [dbo].[CustomerDataMapping] ([ID], [CustID], [MAppingURl], [TypeId]) VALUES (63, N'TATAPOWER', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500400&expandable=0', 6)
GO
SET IDENTITY_INSERT [dbo].[CustomerDataMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialResultDetails] ON 
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (818, 61, CAST(5.9300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (819, 61, CAST(5.0300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (820, 61, CAST(8.3300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (821, 61, CAST(4.0600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (822, 61, CAST(3.4100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (823, 55, CAST(-1.3200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (824, 55, CAST(-1.3400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (825, 55, CAST(-1.3100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (826, 55, CAST(-1.2900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (827, 55, CAST(-1.4300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (828, 60, CAST(5.3300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (829, 60, CAST(4.4200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (830, 60, CAST(7.7400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (831, 60, CAST(3.5600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (832, 60, CAST(2.8300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (833, 59, CAST(10.9700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (834, 59, CAST(10.9700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (835, 59, CAST(10.9700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (836, 59, CAST(11.2000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (837, 59, CAST(11.2000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (838, 52, CAST(-132.6500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (839, 52, CAST(-113.5500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (840, 52, CAST(-132.9900 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (841, 52, CAST(-117.8900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (842, 52, CAST(-93.8600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (843, 53, CAST(-0.1200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (844, 53, CAST(-0.1300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (845, 53, CAST(-0.0700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (846, 53, CAST(-0.1000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (847, 53, CAST(-0.0900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (848, 58, CAST(11.6900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (849, 58, CAST(9.7000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (850, 58, CAST(16.9700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (851, 58, CAST(7.8100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (852, 58, CAST(6.2000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (853, 62, CAST(12.5600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (854, 62, CAST(12.3200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (855, 62, CAST(17.1300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (856, 62, CAST(9.6300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (857, 62, CAST(9.9000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (858, 50, CAST(0.9800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (859, 50, CAST(0.4300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (860, 50, CAST(0.5200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (861, 50, CAST(0.5200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (862, 50, CAST(0.1000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (863, 54, CAST(18.9100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (864, 54, CAST(15.8900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (865, 54, CAST(27.3800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (866, 54, CAST(12.5100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (867, 54, CAST(10.3000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (868, 56, CAST(17.5900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (869, 56, CAST(14.5500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (870, 56, CAST(26.0700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (871, 56, CAST(11.2200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (872, 56, CAST(8.8700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (873, 49, CAST(150.5800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (874, 49, CAST(129.0100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (875, 49, CAST(159.8500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (876, 49, CAST(129.8800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (877, 49, CAST(104.0600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (878, 57, CAST(-5.9000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (879, 57, CAST(-4.8500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (880, 57, CAST(-9.1000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (881, 57, CAST(-3.4100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (882, 57, CAST(-2.6700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (883, 51, CAST(151.5600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (884, 51, CAST(129.4400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (885, 51, CAST(160.3700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (886, 51, CAST(130.4000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (887, 51, CAST(104.1600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ATULAUTO', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (888, 61, CAST(0.5400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (889, 61, CAST(0.6000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (890, 61, CAST(0.4100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (891, 61, CAST(0.4300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (892, 61, CAST(0.4900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (893, 55, CAST(-35.1900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (894, 55, CAST(-29.3600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (895, 55, CAST(-29.5500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (896, 55, CAST(-28.8400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (897, 55, CAST(-28.3300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (898, 60, CAST(0.2000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (899, 60, CAST(0.3100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (900, 60, CAST(0.1100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (901, 60, CAST(0.1400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (902, 60, CAST(0.2500 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (903, 59, CAST(101.5500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (904, 59, CAST(101.5500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (905, 59, CAST(101.5500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (906, 59, CAST(101.0800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (907, 59, CAST(101.0800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (908, 52, CAST(-1447.2500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (909, 52, CAST(-1217.7000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (910, 52, CAST(-984.8800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (911, 52, CAST(-942.7900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (912, 52, CAST(-1363.3600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (913, 53, CAST(-164.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (914, 53, CAST(-150.7900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (915, 53, CAST(-163.0600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (916, 53, CAST(-182.1300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (917, 53, CAST(-207.9800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (918, 58, CAST(20.0900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (919, 58, CAST(31.3100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (920, 58, CAST(11.6000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (921, 58, CAST(14.5200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (922, 58, CAST(20.9100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (923, 62, CAST(4.4500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (924, 62, CAST(6.1200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (925, 62, CAST(4.8500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (926, 62, CAST(5.1900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (927, 62, CAST(4.8200 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (928, 50, CAST(68.7300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (929, 50, CAST(62.0800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (930, 50, CAST(61.1800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (931, 50, CAST(60.4600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (932, 50, CAST(70.5900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (933, 54, CAST(64.2200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (934, 54, CAST(75.3100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (935, 54, CAST(47.0500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (936, 54, CAST(48.3300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (937, 54, CAST(65.5000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (938, 56, CAST(29.0300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (939, 56, CAST(45.9500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (940, 56, CAST(17.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (941, 56, CAST(19.4900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (942, 56, CAST(37.1700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (943, 49, CAST(1442.7400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (944, 49, CAST(1230.9300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (945, 49, CAST(970.7500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (946, 49, CAST(930.6600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (947, 49, CAST(1358.2700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (948, 57, CAST(-8.9400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (949, 57, CAST(-14.6400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (950, 57, CAST(-5.9000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (951, 57, CAST(-4.9700 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (952, 57, CAST(-16.2600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (953, 51, CAST(1511.4700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (954, 51, CAST(1293.0100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (955, 51, CAST(1031.9300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (956, 51, CAST(991.1200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (957, 51, CAST(1428.8600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HCC', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (958, 61, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (959, 61, CAST(6.7000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (960, 61, CAST(6.4400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (961, 61, CAST(6.4700 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (962, 61, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (963, 55, CAST(-128.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (964, 55, CAST(-121.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (965, 55, CAST(-115.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (966, 55, CAST(-114.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (967, 55, CAST(-108.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (968, 60, CAST(6.2400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (969, 60, CAST(6.1300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (970, 60, CAST(5.9000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (971, 60, CAST(5.9300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (972, 60, CAST(5.4700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (973, 59, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (974, 59, CAST(216.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (975, 59, CAST(216.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (976, 59, CAST(216.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (977, 59, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (978, 52, CAST(-7117.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (979, 52, CAST(-6936.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (980, 52, CAST(-6597.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (981, 52, CAST(-7375.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (982, 52, CAST(-7242.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (983, 53, CAST(-4.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (984, 53, CAST(-5.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (985, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (986, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (987, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (988, 58, CAST(1351.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (989, 58, CAST(1326.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (990, 58, CAST(1276.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (991, 58, CAST(1283.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (992, 58, CAST(1183.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (993, 62, CAST(22.8600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (994, 62, CAST(21.0200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (995, 62, CAST(23.0600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (996, 62, CAST(21.2500 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (997, 62, CAST(19.4400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (998, 50, CAST(100.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (999, 50, CAST(152.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1000, 50, CAST(204.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1001, 50, CAST(113.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1002, 50, CAST(83.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1003, 54, CAST(2080.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1004, 54, CAST(1806.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1005, 54, CAST(1916.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1006, 54, CAST(1960.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1007, 54, CAST(1727.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1008, 56, CAST(1952.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1009, 56, CAST(1685.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1010, 56, CAST(1801.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1011, 56, CAST(1846.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1012, 56, CAST(1619.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1013, 49, CAST(9097.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1014, 49, CAST(8590.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1015, 49, CAST(8309.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1016, 49, CAST(9222.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1017, 49, CAST(8886.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1018, 57, CAST(-601.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1019, 57, CAST(-359.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1020, 57, CAST(-525.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1021, 57, CAST(-563.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1022, 57, CAST(-436.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1023, 51, CAST(9197.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1024, 51, CAST(8742.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1025, 51, CAST(8513.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1026, 51, CAST(9335.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1027, 51, CAST(8969.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'HUL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1028, 61, CAST(1.5900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1029, 61, CAST(2.5700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1030, 61, CAST(3.2100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1031, 61, CAST(3.1900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1032, 61, CAST(3.4800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1033, 55, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1034, 55, NULL, N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1035, 55, NULL, N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1036, 55, NULL, N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1037, 55, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1038, 60, CAST(1.5900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1039, 60, CAST(2.5700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1040, 60, CAST(3.2100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1041, 60, CAST(3.2000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1042, 60, CAST(3.4800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1043, 59, CAST(1285.8100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1044, 59, CAST(1284.6700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1045, 59, CAST(1283.5800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1046, 59, CAST(1282.7800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1047, 59, CAST(1165.1100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1048, 52, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1049, 52, NULL, N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1050, 52, NULL, N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1051, 52, NULL, N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1052, 52, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1053, 53, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1054, 53, NULL, N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1055, 53, NULL, N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1056, 53, NULL, N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1057, 53, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1058, 58, CAST(1020.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1059, 58, CAST(1650.2400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1060, 58, CAST(2058.1900 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1061, 58, CAST(2049.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1062, 58, CAST(2024.6400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1063, 62, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1064, 62, NULL, N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1065, 62, NULL, N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1066, 62, NULL, N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1067, 62, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1068, 50, CAST(5678.6100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1069, 50, CAST(3166.8700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1070, 50, CAST(5186.2400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1071, 50, CAST(3387.9100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1072, 50, CAST(3017.2300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1073, 54, CAST(7513.9800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1074, 54, CAST(5057.7500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1075, 54, CAST(6986.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1076, 54, CAST(5183.3100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1077, 54, CAST(5112.0200 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1078, 56, CAST(7513.9800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1079, 56, CAST(5057.7500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1080, 56, CAST(6986.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1081, 56, CAST(5183.3100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1082, 56, CAST(5112.0200 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1083, 49, CAST(14264.3600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1084, 49, CAST(13665.3500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1085, 49, CAST(13577.0500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1086, 49, CAST(13459.1300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1087, 49, CAST(13568.5300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1088, 57, CAST(131.7700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1089, 57, CAST(162.0500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1090, 57, CAST(-425.3800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1091, 57, CAST(-525.5700 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1092, 57, CAST(-189.1600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1093, 51, CAST(19942.9700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1094, 51, CAST(16832.2200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1095, 51, CAST(18763.2900 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1096, 51, CAST(16847.0400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1097, 51, CAST(16585.7600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'ICICIHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1098, 61, CAST(-3.4100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1099, 61, CAST(-2.5200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1100, 61, CAST(-6.6400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1101, 61, CAST(-0.2400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1102, 61, CAST(-4.7300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1103, 55, CAST(-7.3500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1104, 55, CAST(-11.8500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1105, 55, CAST(-9.8600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1106, 55, CAST(-11.4800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1107, 55, CAST(-10.3300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1108, 60, CAST(-3.4600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1109, 60, CAST(-2.6000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1110, 60, CAST(-6.7100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1111, 60, CAST(-0.3200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1112, 60, CAST(-4.8100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1113, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1114, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1115, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1116, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1117, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1118, 52, CAST(-731.1200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1119, 52, CAST(-409.3400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1120, 52, CAST(-187.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1121, 52, CAST(-387.6200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1122, 52, CAST(-291.6100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1123, 53, CAST(-433.7400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1124, 53, CAST(-223.0600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1125, 53, CAST(-253.9700 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1126, 53, CAST(-208.4400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1127, 53, CAST(-271.6400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1128, 58, CAST(-480.4500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1129, 58, CAST(-361.2800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1130, 58, CAST(-931.8600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1131, 58, CAST(-44.7800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1132, 58, CAST(-667.5700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1133, 62, CAST(-186.0800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1134, 62, CAST(-583.3600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1135, 62, NULL, N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1136, 62, CAST(-21.6200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1137, 62, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1138, 50, CAST(3.7800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1139, 50, CAST(0.0100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1140, 50, CAST(0.1200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1141, 50, CAST(7.8000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1142, 50, CAST(2.1800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1143, 54, CAST(-473.1000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1144, 54, CAST(-349.4300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1145, 54, CAST(-887.7800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1146, 54, CAST(-67.5200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1147, 54, CAST(-930.1800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1148, 56, CAST(-480.4500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1149, 56, CAST(-361.2800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1150, 56, CAST(-897.6400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1151, 56, CAST(-79.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1152, 56, CAST(-940.5100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1153, 49, CAST(254.2400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1154, 49, CAST(59.9000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1155, 49, CAST(-700.4000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1156, 49, CAST(312.3000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1157, 49, CAST(-640.7500 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1158, 57, NULL, N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1159, 57, NULL, N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1160, 57, CAST(-34.2200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1161, 57, CAST(34.2200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1162, 57, CAST(272.9400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1163, 51, CAST(258.0200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1164, 51, CAST(59.9100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1165, 51, CAST(-700.2800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1166, 51, CAST(320.1000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1167, 51, CAST(-638.5700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'JAYPEE', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1168, 61, CAST(10.7400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1169, 61, CAST(9.7800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1170, 61, CAST(9.7400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1171, 61, CAST(9.3600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1172, 61, CAST(10.5400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1173, 55, CAST(-2.6500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1174, 55, CAST(-2.4600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1175, 55, CAST(-2.4200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1176, 55, CAST(-2.4500 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1177, 55, CAST(-2.4800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1178, 60, CAST(10.6900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1179, 60, CAST(9.7300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1180, 60, CAST(9.6900 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1181, 60, CAST(9.3100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1182, 60, CAST(10.4900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1183, 59, CAST(100.9300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1184, 59, CAST(100.9300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1185, 59, CAST(100.9300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1186, 59, CAST(100.9300 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1187, 59, CAST(100.9300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1188, 52, CAST(-3092.7200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1189, 52, CAST(-3008.5400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1190, 52, CAST(-2966.1500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1191, 52, CAST(-2933.6500 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1192, 52, CAST(-2853.2800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1193, 53, CAST(-2843.0500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1194, 53, CAST(-2814.8100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1195, 53, CAST(-2770.5400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1196, 53, CAST(-2696.2500 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1197, 53, CAST(-2569.9300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1198, 58, CAST(539.3300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1199, 58, CAST(491.0700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1200, 58, CAST(489.1300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1201, 58, CAST(470.0600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1202, 58, CAST(529.1900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1203, 62, CAST(21.5700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1204, 62, CAST(20.3100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1205, 62, CAST(20.3500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1206, 62, CAST(19.8400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1207, 62, CAST(22.2000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1208, 50, CAST(33.1600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1209, 50, CAST(29.4900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1210, 50, CAST(29.2100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1211, 50, CAST(21.3900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1212, 50, CAST(18.9900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1213, 54, CAST(841.3900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1214, 54, CAST(759.0400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1215, 54, CAST(750.4800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1216, 54, CAST(720.9400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1217, 54, CAST(808.5800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1218, 56, CAST(838.7400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1219, 56, CAST(756.5900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1220, 56, CAST(748.0600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1221, 56, CAST(718.4800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1222, 56, CAST(806.1000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1223, 49, CAST(3900.9500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1224, 49, CAST(3738.1000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1225, 49, CAST(3687.4200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1226, 49, CAST(3633.2000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1227, 49, CAST(3642.8700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1228, 57, CAST(-299.4100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1229, 57, CAST(-265.5100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1230, 57, CAST(-258.9400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1231, 57, CAST(-248.4200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1232, 57, CAST(-276.9100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1233, 51, CAST(3934.1100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1234, 51, CAST(3767.5800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1235, 51, CAST(3716.6300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1236, 51, CAST(3654.5800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1237, 51, CAST(3661.8600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'LICHF', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1238, 49, CAST(19283.2000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1239, 49, CAST(19777.4000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1240, 49, CAST(20751.2000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1241, 49, CAST(21165.6000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1242, 49, CAST(21768.2000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1243, 50, CAST(244.9000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1244, 50, CAST(682.7000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1245, 50, CAST(444.9000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1246, 50, CAST(595.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1247, 50, CAST(522.9000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1248, 51, CAST(19528.1000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1249, 51, CAST(20460.1000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1250, 51, CAST(21196.1000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1251, 51, CAST(21760.6000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1252, 51, CAST(22291.1000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1253, 52, CAST(-16271.7000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1254, 52, CAST(-17477.5000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1255, 52, CAST(-18213.1000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1256, 52, CAST(-18423.7000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1257, 52, CAST(-18105.7000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1258, 53, CAST(-26.3000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1259, 53, CAST(-31.3000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1260, 53, CAST(-22.6000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1261, 53, CAST(-273.1000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1262, 53, CAST(-15.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1263, 54, CAST(3256.4000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1264, 54, CAST(2982.6000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1265, 54, CAST(2983.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1266, 54, CAST(3336.9000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1267, 54, CAST(4185.4000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1268, 55, CAST(-689.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1269, 55, CAST(-683.9000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1270, 55, CAST(-701.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1271, 55, CAST(-702.5000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1272, 55, CAST(-682.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1273, 56, CAST(2567.4000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1274, 56, CAST(2298.7000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1275, 56, CAST(2282.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1276, 56, CAST(2634.4000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1277, 56, CAST(3502.9000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1278, 57, CAST(-768.4000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1279, 57, CAST(-742.3000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1280, 57, CAST(-573.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1281, 57, CAST(-752.3000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1282, 57, CAST(-1018.6000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1283, 58, CAST(1799.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1284, 58, CAST(1556.4000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1285, 58, CAST(1709.0000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1286, 58, CAST(1882.1000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1287, 58, CAST(2484.3000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1288, 59, CAST(151.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1289, 59, CAST(151.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1290, 59, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1291, 59, CAST(151.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1292, 59, CAST(151.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1293, 60, CAST(59.5600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1294, 60, CAST(51.5200 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1295, 60, CAST(56.5700 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1296, 60, CAST(62.3000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1297, 60, CAST(82.2400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1298, 61, CAST(82.3800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1299, 61, CAST(74.1800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1300, 61, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1301, 61, CAST(85.5800 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1302, 61, CAST(104.8600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1303, 62, CAST(16.8900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1304, 62, CAST(15.0800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1305, 62, CAST(14.3800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1306, 62, CAST(15.7700 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1307, 62, CAST(19.2300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'MARUTI', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1308, 49, CAST(75913.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1309, 49, CAST(70434.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1310, 49, CAST(74597.6500 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1311, 49, CAST(87227.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1312, 49, CAST(71761.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1313, 50, CAST(1624.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1314, 50, CAST(1918.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1315, 50, CAST(1370.8800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1316, 50, CAST(2621.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1317, 50, CAST(2057.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1318, 51, CAST(77537.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1319, 51, CAST(72352.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1320, 51, CAST(75968.5300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1321, 51, CAST(89848.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1322, 51, CAST(73818.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1323, 52, CAST(-63263.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1324, 52, CAST(-59633.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1325, 52, CAST(-65961.5200 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1326, 52, CAST(-75262.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1327, 52, CAST(-60092.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1328, 53, CAST(-1094.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1329, 53, CAST(-788.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1330, 53, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1331, 53, CAST(-1460.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1332, 53, CAST(-1314.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1333, 54, CAST(14274.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1334, 54, CAST(12719.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1335, 54, CAST(10007.0100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1336, 54, CAST(14586.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1337, 54, CAST(13726.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1338, 55, CAST(-2475.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1339, 55, CAST(-2158.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1340, 55, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1341, 55, CAST(-2679.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1342, 55, CAST(-2268.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1343, 56, CAST(11799.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1344, 56, CAST(10561.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1345, 56, CAST(10007.0100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1346, 56, CAST(11907.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1347, 56, CAST(11458.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1348, 57, CAST(-3345.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1349, 57, CAST(-2365.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1350, 57, CAST(-1856.3100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1351, 57, CAST(-3210.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1352, 57, CAST(-3193.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1353, 58, CAST(8454.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1354, 58, CAST(8196.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1355, 58, CAST(8150.7000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1356, 58, CAST(8697.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1357, 58, CAST(8265.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1358, 59, CAST(6334.0000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1359, 59, CAST(3252.0000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1360, 59, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1361, 59, CAST(6335.0000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1362, 59, CAST(6333.0000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1363, 60, CAST(13.4000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1364, 60, CAST(25.2100 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1365, 60, CAST(25.1300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1366, 60, CAST(13.7300 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1367, 60, CAST(13.0300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1368, 61, CAST(17.2500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1369, 61, CAST(31.8400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1370, 61, NULL, N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1371, 61, CAST(17.9600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1372, 61, CAST(16.6300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1373, 62, CAST(18.8000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1374, 62, CAST(18.0600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1375, 62, CAST(13.4100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1376, 62, CAST(16.7200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1377, 62, CAST(19.1300 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'RIL', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1378, 49, CAST(1958.7700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1379, 49, CAST(1926.5900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1380, 49, CAST(1890.4900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1381, 49, CAST(1841.5900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1382, 49, CAST(1936.1000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1383, 50, CAST(260.7200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1384, 50, CAST(191.1800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1385, 50, CAST(155.1600 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1386, 50, CAST(271.2100 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1387, 50, CAST(181.0200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1388, 51, CAST(2219.4900 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1389, 51, CAST(2117.7700 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1390, 51, CAST(2045.6500 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1391, 51, CAST(2112.8000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1392, 51, CAST(2117.1200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1393, 52, CAST(-1772.4300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1394, 52, CAST(-1677.2800 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1395, 52, CAST(-2382.9000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1396, 52, CAST(-5917.9500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1397, 52, CAST(-1701.6100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1398, 53, CAST(-351.9700 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1399, 53, CAST(-342.6500 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1400, 53, CAST(-362.4100 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1401, 53, CAST(-332.6600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1402, 53, CAST(-396.6400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1403, 54, CAST(447.0600 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1404, 54, CAST(440.4900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1405, 54, CAST(-337.2500 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1406, 54, CAST(-3805.1500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1407, 54, CAST(415.5100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1408, 55, CAST(-161.9100 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1409, 55, CAST(-163.1900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1410, 55, CAST(-159.9800 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1411, 55, CAST(-188.7400 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1412, 55, CAST(-168.3500 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1413, 56, CAST(285.1500 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1414, 56, CAST(277.3000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1415, 56, CAST(-497.2300 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1416, 56, CAST(-3993.8900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1417, 56, CAST(247.1600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1418, 57, CAST(223.2200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1419, 57, CAST(-89.0600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1420, 57, CAST(-96.1900 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1421, 57, CAST(167.6900 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1422, 57, CAST(-81.3400 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1423, 58, CAST(524.2800 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1424, 58, CAST(188.2400 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1425, 58, CAST(-593.4200 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1426, 58, CAST(-3939.1200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1427, 58, CAST(50.3200 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1428, 59, CAST(270.5000 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1429, 59, CAST(270.5000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1430, 59, CAST(270.5000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1431, 59, CAST(270.5000 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1432, 59, CAST(270.5000 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1433, 60, CAST(1.8300 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1434, 60, CAST(0.5900 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1435, 60, CAST(-2.3000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1436, 60, CAST(-14.6500 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1437, 60, CAST(0.0800 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1438, 61, CAST(2.5400 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1439, 61, CAST(1.3000 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1440, 61, CAST(-1.6000 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1441, 61, CAST(-13.8600 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1442, 61, CAST(0.8100 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1443, 62, CAST(22.8200 AS Decimal(19, 4)), N'Dec-17', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1444, 62, CAST(22.8600 AS Decimal(19, 4)), N'Jun-17', CAST(N'2017-06-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1445, 62, CAST(-17.8400 AS Decimal(19, 4)), N'Mar-17', CAST(N'2017-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1446, 62, CAST(-206.6200 AS Decimal(19, 4)), N'Mar-18', CAST(N'2018-03-31T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (1447, 62, CAST(21.4600 AS Decimal(19, 4)), N'Sep-17', CAST(N'2017-09-30T00:00:00.000' AS DateTime), 1, N'TATAPOWER', N'2')
GO
SET IDENTITY_INSERT [dbo].[FinancialResultDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialResultHeader] ON 
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (49, N'Revenue', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (50, N'Other Income', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (51, N'Total Income', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (52, N'Expenditure', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (53, N'Interest', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (54, N'PBDT', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (55, N'Depreciation', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (56, N'PBT', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (57, N'Tax', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (58, N'Net Profit', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (59, N'Equity', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (60, N'EPS', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (61, N'CEPS', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (62, N'OPM %', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (63, N'NPM %', 2, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (64, N'Revenue', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (65, N'Other Income', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (66, N'Total Income', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (67, N'Expenditure', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (68, N'Interest', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (69, N'PBDT', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (70, N'Depreciation', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (71, N'PBT', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (72, N'Tax', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (73, N'Net Profit', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (74, N'Equity', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (75, N'EPS', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (76, N'CEPS', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (77, N'OPM %', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (78, N'NPM %', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (79, N'SHAREHOLDER''S FUNDS', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (80, N'Equity Share Capital', 3, 1, 79, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (81, N'Total Share Capital', 3, 1, 79, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (82, N'Reserves and Surplus', 3, 1, 79, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (83, N'Total Reserves and Surplus', 3, 1, 79, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (84, N'Total Shareholders Funds', 3, 1, 79, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (85, N'NON-CURRENT LIABILITIES', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (86, N'Long Term Borrowings ', 3, 1, 85, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (87, N'Deferred Tax Liabilities [Net]', 3, 1, 85, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (88, N'Other Long Term Liabilities', 3, 1, 85, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (89, N'Long Term Provisions ', 3, 1, 85, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (90, N'Total Non-Current Liabilities', 3, 1, 85, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (91, N'CURRENT LIABILITIES', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (92, N'Short Term Borrowings', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (93, N'Trade Payables', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (94, N'Other Current Liabilities', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (95, N'Short Term Provisions ', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (96, N'Total Current Liabilities', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (97, N'Total Capital And Liabilities', 3, 1, 91, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (98, N'NON-CURRENT ASSETS', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (99, N'Tangible Assets', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (100, N'Intangible Assets', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (101, N'Capital Work-In-Progress', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (102, N'Fixed Assets', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (103, N'Non-Current Investments', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (104, N'Deferred Tax Assets [Net]', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (105, N'Long Term Loans And Advances', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (106, N'Other Non-Current Assets', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (107, N'Total Non-Current Assets', 3, 1, 98, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (108, N'CURRENT ASSETS', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (109, N'Current Investments', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (110, N'Inventories', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (111, N'Trade Receivables', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (112, N'Cash And Cash Equivalents', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (113, N'Short Term Loans And Advances', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (114, N'OtherCurrentAssets', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (115, N'Total Current Assets', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (116, N'Total Assets', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (117, N'OTHER ADDITIONAL INFORMATION', 3, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (118, N'CONTINGENT LIABILITIES, COMMITMENTS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (119, N'Contingent Liabilities', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (120, N'CIF VALUE OF IMPORTS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (121, N'Raw Materials', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (122, N'Stores, Spares And Loose Tools', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (123, N'Trade/Other Goods', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (124, N'Capital Goods', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (125, N'EXPENDITURE IN FOREIGN EXCHANGE', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (126, N'Expenditure In Foreign Currency', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (127, N'REMITTANCES IN FOREIGN CURRENCIES FOR DIVIDENDS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (128, N'Dividend Remittance In Foreign Currency', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (129, N'EARNINGS IN FOREIGN EXCHANGE', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (130, N'FOB Value Of Goods', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (131, N'Other Earnings', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (132, N'BONUS DETAILS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (133, N'Bonus Equity Share Capital', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (134, N'NON-CURRENT INVESTMENTS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (135, N'Non-Current Investments Quoted Market Value', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (136, N' Non-Current Investments Unquoted Book Value ', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (137, N'CURRENT INVESTMENTS', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (138, N'Current Investments Quoted Market Value', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (139, N'Current Investments Unquoted Book Value', 3, 1, 108, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (140, N'INCOME', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (141, N'Revenue From Operations [Gross]', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (142, N'Less: Excise/Sevice Tax/Other Levies', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (143, N'Revenue From Operations [Net]', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (144, N'Total Operating Revenues', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (145, N'Other Income', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (146, N'Total Revenue', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (147, N'EXPENSES', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (148, N'Cost Of Materials Consumed', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (149, N'Operating And Direct Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (150, N'Changes In Inventories Of FG,WIP And Stock-In Trade', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (151, N'Employee Benefit Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (152, N'Finance Costs', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (153, N'Depreciation And Amortisation Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (154, N'Other Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (155, N'Total Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (156, N'Profit/Loss Before Exceptional, ExtraOrdinary Items And Tax', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (157, N'Exceptional Items', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (158, N'Profit/Loss Before Tax', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (159, N'Tax Expenses-Continued Operations', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (160, N'Current Tax', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (161, N'Less: MAT Credit Entitlement', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (162, N'Deferred Tax', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (163, N'Tax For Earlier Years', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (164, N'Total Tax Expenses', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (165, N'Profit/Loss After Tax And Before ExtraOrdinary Items ', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (166, N'Profit/Loss From Continuing Operations', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (167, N'Profit/Loss For The Period', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (168, N'EARNINGS PER SHARE', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (169, N'Basic EPS (Rs.)', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (170, N'Diluted EPS (Rs.)', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (171, N'VALUE OF IMPORTED AND INDIGENIOUS RAW MATERIALS', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (172, N'Imported Raw Materials', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (173, N'Indigenous Raw Materials', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (174, N'STORES, SPARES AND LOOSE TOOLS', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (175, N'Imported Stores And Spares', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (176, N'Indigenous Stores And Spares', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (177, N'DIVIDEND AND DIVIDEND PERCENTAGE', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (178, N'Equity Share Dividend', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (179, N'Preference Share Dividend', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (180, N'Tax On Dividend', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (181, N'Equity Dividend Rate (%)', 1, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (182, N'Net Profit/Loss Before Extraordinary Items And Tax', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (183, N'Net CashFlow From Operating Activities', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (184, N'Net Cash Used In Investing Activities', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (185, N'Net Cash Used From Financing Activities', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (186, N'Foreign Exchange Gains / Losses', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (187, N'Adjustments on Amalgamation / Merger / Demerger / Others', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (188, N'Net Inc/Dec In Cash And Cash Equivalents', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (189, N'Cash And Cash Equivalents Begin of Year', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (190, N'Cash And Cash Equivalents End Of Year', 4, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (191, N'Per Share Ratios', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (192, N'Basic EPS (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (193, N'Diluted EPS (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (194, N'Cash EPS (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (195, N'Book Value [ExclRevalReserve]/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (196, N'Book Value [InclRevalReserve]/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (197, N'Dividend / Share(Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (198, N'Revenue from Operations/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (199, N'PBDIT/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (200, N'PBIT/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (201, N'PBT/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (202, N'Net Profit/Share (Rs.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (203, N'Profitability Ratios', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (204, N'PBDIT Margin (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (205, N'PBIT Margin (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (206, N'PBT Margin (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (207, N'Net Profit Margin (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (208, N'Return on Networth / Equity (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (209, N'Return on Capital Employed (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (210, N'Return on Assets (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (211, N'Total Debt/Equity (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (212, N'Asset Turnover Ratio (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (213, N'Liquidity Ratios', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (214, N'Current Ratio (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (215, N'Quick Ratio (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (216, N'Inventory Turnover Ratio (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (217, N'Dividend Payout Ratio (NP) (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (218, N'Dividend Payout Ratio (CP) (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (219, N'Earnings Retention Ratio (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (220, N'Cash Earnings Retention Ratio (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (221, N'Valuation Ratios', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (222, N'Enterprise Value (Cr.)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (223, N'EV/Net Operating Revenue (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (224, N'EV/EBITDA (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (225, N'MarketCap/Net Operating Revenue (X)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (226, N'Retention Ratios (%)', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (227, N'Price/Net Operating Revenue', 6, 1, NULL, NULL)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive], [parentID], [SortOrder]) VALUES (228, N'Earnings Yield', 6, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[FinancialResultHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialResultType] ON 
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (1, N'PROFIT & LOSS', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (2, N'Quarters', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (3, N'Balance Sheet', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (4, N'Cashflow', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (5, N'Ratios', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (6, N'Yearly', 1, NULL)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive], [IsFinancialData]) VALUES (7, N'News', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[FinancialResultType] OFF
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'AutlAuto', N'Mfg of Motor Vehicles', N'Auto', N'No', N'N', N'Auto', N'18-Jun-86', N'02-Feb-10', NULL, NULL, NULL, NULL, NULL, N'Sole', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'HCC', N'Construction/Maintenance of Roads', N'Infra', N'No', N'N', N'Infrastructure', N'27-Jan-26', N'09-Sep-00', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', NULL, N'04-06-2003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'HL', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'FMCG', N'No', N'N', N'Consumables', N'17-Oct-33', N'22-May-96', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'ICICI Bank', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'ICICIHFL', N'NBFCs- in the housing sector', N'NBFC-HFC', N'No', N'N', N'FI', N'28-May-99', N'05-Dec-14', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'ICICI Bank', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Jaypee', N'Construction/Maintenance of Roads', N'Infra', N'No', N'N', N'Infrastructure', N'05-Apr-07', N'15-Jun-13', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'SMA2', N'31-12-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'jpmc', N'activity', N'sector or subsector', N'priority non priority', N'No', N'industry', N'incorporation', N'conection since', N'internal ration', CAST(N'1987-12-05' AS Date), N'eexternal rating', CAST(N'1987-12-08' AS Date), N'inspection comments', N'Multiple', N'if consortium', N'lead bank', N'sma', N'Yes', CAST(N'1987-12-07' AS Date), N'Yes', CAST(N'1987-12-06' AS Date), N'takeover from bank of america', N'reason for takeover', 1001, 324, 342324, 423, 324, 234, 23423, 324, 324, 24, 23423423, 32432, 4324324324, 23423, 23432, 324324, 3242, 3432, N'2 ', CAST(N'1996-12-09' AS Date), N'jpmc', N'jpmc', N'jpmc', N'jpmc', N'jpmc')
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'LICHFL', N'NBFCs- in the housing sector', N'NBFC-HFC', N'No', N'N', N'FI', N'19-Jun-89', N'04-Jan-17', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'maruti', N'Mfg of Motor Vehicles', N'Auto', N'No', N'No', N'Auto', N'24-Feb-81', N'12-Oct-98', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'HDFC Bank', N'NA', N'Yes', NULL, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Maruti1', N'activity', N'sdafasd', N'asdfasd', N'sfasf', N'asdfsad', N'asdfsda', N'adfsda', N'asdf', NULL, N'sdafa', NULL, NULL, N'sdf', N'asdf', N'sdaf', N'sdaf', N'adsf', NULL, N'asdf', NULL, N'dsfa', N'fsda', 1001, 324, 342324, 423, 324, 234, 23423, 324, 324, 24, 23423423, 32432, 4324324324, 23423, 23432, 324324, 3242, 3432, N'32432', CAST(N'1996-12-05' AS Date), N'g1', N'g2', N'g3', N'p1', N'p2')
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Patanjali', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'FMCG', N'No', N'N', N'Consumables', N'19-Aug-09', N'04-Aug-10', NULL, NULL, NULL, NULL, NULL, N'Sole', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'RIL', N'Manufacture of refined petroleum products', N'Energy', N'No', N'N', N'Oil', N'08-May-73', N'04-Jun-16', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'TataPower', N'Collection and Distn of Electricity', N'Energy', N'No', N'N', N'Power', N'18-Sep-19', N'02-Apr-08', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'SBI', N'SMA0', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[GeneralExposure] ON 
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (1, N'TATAPOWER', N'CC', 1000, 750, 1000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (2, N'TATAPOWER', N'Term Loan', 5000, 4850, 4900)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (3, N'TATAPOWER', N'BG/LC', 500, 400, 500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (4, N'RIL', N'WCDL', 10000, 10010, 10010)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (5, N'RIL', N'WCDL', 7500, 2500, 2500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (6, N'RIL', N'WCDL', 3000, 3003, 3000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (7, N'RIL', N'WCDL', 2500, 2000, 2000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (8, N'ICICIHF', N'Term Loan', 10000, 2250, 2250)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (9, N'ICICIHF', N'Term Loan', 2000, 1000, 1000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (10, N'ICICIHF', N'Term Loan', 6000, 4500, 4500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (11, N'ICICIHF', N'Term Loan', 2200, 1400, 1400)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (12, N'LICHF', N'Term Loan', 4000, 3000, 3000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (13, N'LICHF', N'Term Loan', 6000, 5000, 5000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (14, N'LICHF', N'Term Loan', 9000, 7500, 7500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (15, N'LICHF', N'Term Loan', 6600, 2000, 2000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (16, N'LICHF', N'Term Loan', 2400, 600, 600)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (17, N'ATULAUTO', N'Term Loan', 1000, 500, 500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (18, N'ATULAUTO', N'CC', 4400, 4395, 4400)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (19, N'ATULAUTO', N'PCA', 2500, 2500, 2500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (20, N'ATULAUTO', N'PSL', 2500, 100, 2500)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (21, N'MARUTI', N'Term Loan', 90000, 80000, 90000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (22, N'PATANJALI', N'Term Loan', 75000, 75000, 75000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (23, N'HUL', N'PCA', 30000, 200, 30000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (24, N'HUL', N'PSL', 90000, 80000, 90000)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (25, N'JAYPEE', N'Term Loan', 10000, 9700, 9700)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (26, N'JAYPEE', N'FITL', 1875, 1776, 1776)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (27, N'HCC', N'Term Loan', 4500, 4099, 4099)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (28, N'HCC', N'Term Loan', 5500, 5598, 5598)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (29, N'HCC', N'CC', 2000, 2007, 2007)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (30, N'HCC', N'FITL', 2200, 2008, 2008)
GO
SET IDENTITY_INSERT [dbo].[GeneralExposure] OFF
GO
SET IDENTITY_INSERT [dbo].[GeneralGurantor] ON 
GO
INSERT [dbo].[GeneralGurantor] ([id], [Cust_Id], [accountNo], [gurCust_Id], [gurType], [netWorth]) VALUES (1, N'jpmc', NULL, N'jpmc', N'gur', NULL)
GO
INSERT [dbo].[GeneralGurantor] ([id], [Cust_Id], [accountNo], [gurCust_Id], [gurType], [netWorth]) VALUES (2, N'jpmc', NULL, N'boa', N'gur', NULL)
GO
INSERT [dbo].[GeneralGurantor] ([id], [Cust_Id], [accountNo], [gurCust_Id], [gurType], [netWorth]) VALUES (3, N'jpmc', NULL, N'dbs', N'gur', NULL)
GO
SET IDENTITY_INSERT [dbo].[GeneralGurantor] OFF
GO
SET IDENTITY_INSERT [dbo].[Inspection] ON 
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (1, N'Maruti', N'RBIA', N'Minor', N'test', N'Deleted', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (2, N'Maruti', N'Credit', N'Major', N'test', N'Isolated', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (3, N'Maruti', N'Forex', N'Minor', N'test', N'Rectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (4, N'Maruti', N'Management', N'Serious', N'test', N'UnRectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (5, N'HCC', N'RBIA', N'Minor', N'test', N'Deleted', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (6, N'HCC', N'Credit', N'Major', N'test', N'Isolated', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (7, N'HCC', N'Forex', N'Minor', N'test', N'Rectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (8, N'HCC', N'Management', N'Serious', N'test', N'UnRectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (9, N'HUL', N'RBIA', N'Minor', N'test', N'Deleted', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (10, N'HUL', N'Credit', N'Major', N'test', N'Isolated', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (11, N'HUL', N'Forex', N'Minor', N'test', N'Rectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inspection] ([Id], [Cust_Id], [AuditType], [Code], [Comments], [InspectionStatus], [FollowUpDate], [CompiledDate], [LastUpdatedBy], [LastUpdatedOn]) VALUES (12, N'HUL', N'Management', N'Serious', N'test', N'UnRectified', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2018-06-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Inspection] OFF
GO
SET IDENTITY_INSERT [dbo].[Interest] ON 
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (1, N'TATAPOWER', N'123456780', N'CC', N'8.75', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-03-18T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (2, N'TATAPOWER', N'123456781', N'Term Loan', N'8.2', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (3, N'TATAPOWER', N'123456782', N'BG/LC', N'0.25', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (4, N'RIL', N'123456783', N'WCDL', N'8.75', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (5, N'RIL', N'123456784', N'WCDL', N'8.2', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (6, N'RIL', N'123456785', N'WCDL', N'8.2', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (7, N'RIL', N'123456786', N'WCDL', N'8.2', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (8, N'ICICIHF', N'123456787', N'Term Loan', N'9.03', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (9, N'ICICIHF', N'123456788', N'Term Loan', N'9.03', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (10, N'ICICIHF', N'123456789', N'Term Loan', N'9.03', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (11, N'ICICIHF', N'123456701', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (12, N'LICHF', N'123456702', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (13, N'LICHF', N'123456703', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (14, N'LICHF', N'123456704', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (15, N'LICHF', N'123456705', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (16, N'LICHF', N'123456706', N'Term Loan', N'9.1', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (17, N'ATULAUTO', N'123456707', N'Term Loan', N'9.76', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (18, N'ATULAUTO', N'123456708', N'CC', N'9.76', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2016-03-15T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (19, N'ATULAUTO', N'123456709', N'PCA', N'9.76', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (20, N'ATULAUTO', N'123456710', N'PSL', N'', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (21, N'MARUTI', N'123456711', N'Term Loan', N'7.95', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (22, N'PATANJALI', N'123456712', N'Term Loan', N'8.25', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (23, N'HUL', N'123456713', N'PCA', N'', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (24, N'HUL', N'123456714', N'PSL', N'', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (25, N'JAYPEE', N'123456715', N'Term Loan', N'8.99', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (26, N'JAYPEE', N'123456716', N'FITL', N'8.99', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (27, N'HCC', N'123456717', N'Term Loan', N'8.79', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (28, N'HCC', N'123456718', N'Term Loan', N'8.79', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (29, N'HCC', N'123456719', N'CC', N'8.79', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2014-01-01T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (30, N'HCC', N'123456720', N'FITL', N'8.79', NULL, CAST(N'2018-03-31T00:00:00.000' AS DateTime), N'Loan', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'CBS')
GO
SET IDENTITY_INSERT [dbo].[Interest] OFF
GO
SET IDENTITY_INSERT [dbo].[LookUp] ON 
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (1, N'General', N'Govt_sponsored', N'Yes')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (2, N'General', N'Govt_sponsored', N'No')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (3, N'General', N'Govt_sponsored', N'Refer Notes')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (4, N'General', N'DCCO', N'Yes')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (5, N'General', N'DCCO', N'No')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (6, N'General', N'DCCO', N'N/A')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (7, N'General', N'Banking_Argmt', N'Sole')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (8, N'General', N'Banking_Argmt', N'Multiple')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (9, N'General', N'Banking_Argmt', N'Consortium')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (10, N'General', N'Banking_Argmt', N'Others')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (11, N'General', N'Takeover', N'Yes')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (12, N'General', N'Takeover', N'No')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (13, N'SOC124', N'Via', N'Loan Sanc App')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (14, N'SOC124', N'Via', N'Loans Concession')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (15, N'SOC124', N'Via', N'Mails')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (16, N'INSPECTION', N'INSPECTIONSTATUS', N'Rectified')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (17, N'INSPECTION', N'INSPECTIONSTATUS', N'UnRectified')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (18, N'INSPECTION', N'INSPECTIONSTATUS', N'Isolated')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (19, N'INSPECTION', N'INSPECTIONSTATUS', N'Deleted')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (20, N'ActivityLog', N'LogTypes', N'Communication')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (21, N'ActivityLog', N'LogTypes', N'Ist Reminder')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (22, N'ActivityLog', N'LogTypes', N'IInd Reminder')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (23, N'ActivityLog', N'LogTypes', N'Further Followup')
GO
INSERT [dbo].[LookUp] ([Id], [LookUp_Table], [LookUp_Name], [LookUp_Value]) VALUES (24, N'ActivityLog', N'LogTypes', N'Rectified')
GO
SET IDENTITY_INSERT [dbo].[LookUp] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (2, N'TATAPOWER', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (3, N'TATAPOWER', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (4, N'TATAPOWER', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (5, N'TATAPOWER', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (6, N'TATAPOWER', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (7, N'TATAPOWER', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (8, N'TATAPOWER', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'A', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (9, N'TATAPOWER', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'A', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (10, N'TATAPOWER', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'A', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (11, N'TATAPOWER', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'A', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (12, N'RIL', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (13, N'RIL', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR1', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (14, N'RIL', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (15, N'RIL', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (16, N'RIL', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (17, N'RIL', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (18, N'RIL', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (19, N'RIL', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (20, N'RIL', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (21, N'RIL', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (22, N'ICICIHF', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (23, N'ICICIHF', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (24, N'ICICIHF', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (25, N'ICICIHF', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (26, N'ICICIHF', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (27, N'ICICIHF', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (28, N'ICICIHF', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (29, N'ICICIHF', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (30, N'ICICIHF', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (31, N'ICICIHF', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (32, N'LICHF', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (33, N'LICHF', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (34, N'LICHF', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (35, N'LICHF', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (36, N'LICHF', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'NA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (37, N'LICHF', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (38, N'LICHF', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (39, N'LICHF', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (40, N'LICHF', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (41, N'LICHF', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (42, N'ATULAUTO', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR5', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (43, N'ATULAUTO', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR7', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (44, N'ATULAUTO', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR7', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (45, N'ATULAUTO', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR6', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (46, N'ATULAUTO', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR7', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (47, N'ATULAUTO', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'A', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (48, N'ATULAUTO', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'A2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (49, N'ATULAUTO', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'A3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (50, N'ATULAUTO', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'A2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (51, N'ATULAUTO', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'A3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (52, N'MARUTI', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (53, N'MARUTI', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (54, N'MARUTI', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (55, N'MARUTI', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (56, N'MARUTI', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (57, N'MARUTI', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (58, N'MARUTI', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (59, N'MARUTI', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (60, N'MARUTI', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (61, N'MARUTI', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (62, N'PATANJALI', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (63, N'PATANJALI', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (64, N'PATANJALI', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (65, N'PATANJALI', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (66, N'PATANJALI', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (67, N'PATANJALI', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (68, N'PATANJALI', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'A2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (69, N'PATANJALI', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'A2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (70, N'PATANJALI', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'A3', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (71, N'PATANJALI', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'A4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (72, N'HUL', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR1', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (73, N'HUL', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (74, N'HUL', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (75, N'HUL', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (76, N'HUL', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR2', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (77, N'HUL', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (78, N'HUL', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (79, N'HUL', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (80, N'HUL', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'AAA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (81, N'HUL', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'AA', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (82, N'JAYPEE', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR8', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (83, N'JAYPEE', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR6', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (84, N'JAYPEE', N'internal', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2016, N'CBR5', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (85, N'JAYPEE', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (86, N'JAYPEE', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR5', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (87, N'JAYPEE', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'D', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (88, N'JAYPEE', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'D', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (89, N'JAYPEE', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'C', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (90, N'JAYPEE', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'D', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (91, N'JAYPEE', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'C', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (92, N'HCC', N'internal', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2018, N'CBR7', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (93, N'HCC', N'internal', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2017, N'CBR5', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (94, N'HCC', N'internal', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2015, N'CBR4', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (95, N'HCC', N'internal', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'INTERNAL', 2014, N'CBR5', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (96, N'HCC', N'external', CAST(N'2017-03-01T00:00:00.000' AS DateTime), CAST(N'2018-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2018, N'BB', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (97, N'HCC', N'external', CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2017-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2017, N'BB', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (98, N'HCC', N'external', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2016, N'BBB', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (99, N'HCC', N'external', CAST(N'2014-03-01T00:00:00.000' AS DateTime), CAST(N'2015-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2015, N'D', N'Praveen', N'CRISIL')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (100, N'HCC', N'external', CAST(N'2013-03-01T00:00:00.000' AS DateTime), CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'EXTERNAL', 2014, N'BBB', N'Praveen', N'CRISIL')
GO
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RestucturingDetail] ON 
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (1, N'maruti', N'42423432', N'cc', CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), 5000, CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'M')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (2, N'maruti', N'34234324', N'term', CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), 543434, CAST(N'2002-05-05T00:00:00.000' AS DateTime), N'Y')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (3, N'HCC', N'42423432', N'cc', CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), 5000, CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'M')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (4, N'HCC', N'34234324', N'term', CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), 543434, CAST(N'2002-05-05T00:00:00.000' AS DateTime), N'Y')
GO
SET IDENTITY_INSERT [dbo].[RestucturingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[RestucturingHeader] ON 
GO
INSERT [dbo].[RestucturingHeader] ([Id], [Cust_Id], [accountRestructured], [accountRescheduled], [idNo], [soApplicationDate], [checkedByCRMD], [pfNo], [followupDate], [accountRegularisedDate], [projectType], [dccoDate], [ExtendedDate], [actualDate]) VALUES (1, N'Maruti', N'yes', N'no', N'1', CAST(N'2009-10-05T00:00:00.000' AS DateTime), N'yes', N'pfnotest', CAST(N'2010-05-05T00:00:00.000' AS DateTime), CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'projecttype', CAST(N'2018-02-10T00:00:00.000' AS DateTime), CAST(N'2009-02-11T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[RestucturingHeader] ([Id], [Cust_Id], [accountRestructured], [accountRescheduled], [idNo], [soApplicationDate], [checkedByCRMD], [pfNo], [followupDate], [accountRegularisedDate], [projectType], [dccoDate], [ExtendedDate], [actualDate]) VALUES (2, N'HCC', N'no', N'yes', N'2', CAST(N'2009-10-05T00:00:00.000' AS DateTime), N'yes', N'phnoHCC', CAST(N'2010-05-05T00:00:00.000' AS DateTime), CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'projecttype', CAST(N'2018-02-10T00:00:00.000' AS DateTime), CAST(N'2009-02-11T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RestucturingHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[Security] ON 
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (1, N'tatapower', N'34343432', N'Primary', 540400, N'Receivables and Inventory', 860, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'70%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (2, N'tatapower', N'2456335', N'Primary', 4044, N'Land and Building', 6000, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (3, N'tatapower', N'3455234', N'Primary', 4044, N'CC', 6000, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (4, N'maruti', N'34343432', N'Primary', 540400, N'Receivables and Inventory', 860, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'70%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (5, N'maruti', N'2456335', N'Primary', 4044, N'Land and Building', 6000, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (6, N'maruti', N'3455234', N'Primary', 4044, N'CC', 6000, N'Yes', CAST(N'2017-03-31T00:00:00.000' AS DateTime), N'30%', N'TataSons', 500)
GO
SET IDENTITY_INSERT [dbo].[Security] OFF
GO
SET IDENTITY_INSERT [dbo].[SMABucket] ON 
GO
INSERT [dbo].[SMABucket] ([Id], [Cust_Id], [bucket], [banksFICounts], [numberFIBanks], [unregularisedDays], [noOfFI], [regularised], [reportDate], [lastupdatedOn], [lastupdatedBy]) VALUES (1, N'MAruti', N'0-7 days', N'5', N'6', N'5', N'5', N'5', CAST(N'2015-05-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[SMABucket] ([Id], [Cust_Id], [bucket], [banksFICounts], [numberFIBanks], [unregularisedDays], [noOfFI], [regularised], [reportDate], [lastupdatedOn], [lastupdatedBy]) VALUES (2, N'MAruti', N'8-14 days', N'54', N'65', N'54', N'54', N'65', CAST(N'2015-05-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[SMABucket] ([Id], [Cust_Id], [bucket], [banksFICounts], [numberFIBanks], [unregularisedDays], [noOfFI], [regularised], [reportDate], [lastupdatedOn], [lastupdatedBy]) VALUES (3, N'MAruti', N'15-21 days', N'54', N'65', N'54', N'54', N'65', CAST(N'2015-05-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[SMABucket] ([Id], [Cust_Id], [bucket], [banksFICounts], [numberFIBanks], [unregularisedDays], [noOfFI], [regularised], [reportDate], [lastupdatedOn], [lastupdatedBy]) VALUES (4, N'MAruti', N'22-28 days', N'54', N'65', N'54', N'54', N'65', CAST(N'2015-05-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'praveen')
GO
SET IDENTITY_INSERT [dbo].[SMABucket] OFF
GO
SET IDENTITY_INSERT [dbo].[SMACompilation] ON 
GO
INSERT [dbo].[SMACompilation] ([Id], [Cust_id], [JLF], [smaDate], [calledBy], [meeetingSummary], [branchReply], [nextFollowupDate], [LastUpdateBy], [LastUpdatedOn]) VALUES (1, N'Maruti', N'Y', CAST(N'2017-05-05T00:00:00.000' AS DateTime), N'HDFC      ', N'Meeeting Summary', N'branch response', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'praveen', CAST(N'2019-02-05T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SMACompilation] OFF
GO
SET IDENTITY_INSERT [dbo].[SMAHistory] ON 
GO
INSERT [dbo].[SMAHistory] ([Id], [Cust_Id], [smaClass], [accountNumber], [reason], [noOfDays], [nextStatus], [smaDate], [CompiledDate], [LastUpdatedOn], [LastUpdateBy]) VALUES (1, N'Maruti', N'SMA1', N'123456711', N'reason', 12, N'Upgrade', CAST(N'2015-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'Praveen')
GO
INSERT [dbo].[SMAHistory] ([Id], [Cust_Id], [smaClass], [accountNumber], [reason], [noOfDays], [nextStatus], [smaDate], [CompiledDate], [LastUpdatedOn], [LastUpdateBy]) VALUES (2, N'Maruti', N'SMA2', N'123456711', N'reason', 12, N'DownGrade', CAST(N'2015-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'Praveen')
GO
INSERT [dbo].[SMAHistory] ([Id], [Cust_Id], [smaClass], [accountNumber], [reason], [noOfDays], [nextStatus], [smaDate], [CompiledDate], [LastUpdatedOn], [LastUpdateBy]) VALUES (3, N'Maruti', N'SMA3', N'123456711', N'reason', 15, N'Regularised', CAST(N'2015-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'Praveen')
GO
SET IDENTITY_INSERT [dbo].[SMAHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Snapshot] ON 
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (1, N'Maruti', N'Account Renewed', N'Account Renewed', N'From', N'01-04-2017', N'To', N'01-04-2018', N'Past days', N'40', N'', N'', N'10', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (2, N'Maruti', N'Account Reviewed', N'Account Reviewed', N'I / II', N'I', N'Upto', N'01-04-2018', N'Past days', N'30', N'', N'', N'20', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (3, N'Maruti', N'Cheque Returns (Inward)', N'Cheque Returns (Inward)', N'Count', N'40', N'Amount', N'32432', N'Avg Amt', N'', N'', N'', N'30', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (4, N'Maruti', N'Cheque Returns (Outward)', N'Cheque Returns (Outward)', N'Count', N'30', N'Amount', N'342432', N'Avg Amt', N'', N'', N'', N'40', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (5, N'Maruti', N'LC Issued', N'LC Issued', N'Count', N'30', N'Amount', N'34343', N'Avg Amt', N'', N'', N'', N'50', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (6, N'Maruti', N'LC Devolved', N'LC Devolved', N'Count', N'10', N'Amount', N'243', N'Amt %', N'', N'', N'', N'60', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (7, N'Maruti', N'BG Issued', N'BG Issued', N'Count', N'34', N'Amount', N'3224', N'Avg Amt', N'', N'', N'', N'70', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (8, N'Maruti', N'BG Invoked', N'BG Invoked', N'Count', N'33', N'Amount', N'43434', N'Amt %', N'', N'', N'', N'80', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (9, N'Maruti', N'Exceeding in Operative A/c', N'Exceeding in Operative A/c', N'Occassions', N'23', N'Amount', N'3442', N'No. of Days', N'', N'', N'', N'90', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (10, N'Maruti', N'Intraday TOD', N'Intraday TOD', N'Occassions', N'343', N'Amount', N'23432', N'Avg Amt', N'', N'', N'', N'100', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (11, N'Maruti', N'Export Bills O/s as on date', N'Export Bills O/s as on date', N'Count', N'23', N'Amount', N'23432', N'Avg Days', N'', N'', N'', N'110', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (12, N'Maruti', N'Individual Bill Details Closure', N'', N'count', N'4', N'Amount', N'310158', N'Avg delay', N'115', N'Avg Amount', N'62031', N'120', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (13, N'Maruti', N'Individual Bill Details Closure', N'Individual Bill Details', N'Bill No', N'LC2', N'O/s Amount', N'24', N'Delay Days', N'43', N'', N'', N'130', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (14, N'Maruti', N'Individual Bill Details Closure', N'Individual Bill Details', N'Bill No', N'LC3', N'O/s Amount', N'234', N'Delay Days', N'53', N'', N'', N'140', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (15, N'Maruti', N'Individual Bill Details Closure', N'Individual Bill Details', N'Bill No', N'LC4', N'O/s Amount', N'234234', N'Delay Days', N'22', N'', N'', N'150', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (16, N'Maruti', N'Individual Bill Details Closure', N'Individual Bill Details', N'Bill No', N'LC5', N'O/s Amount', N'32432', N'Delay Days', N'343', N'', N'', N'160', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (17, N'Maruti', N'PCL Due for Closure', N'', N'Count', N'4', N'O/s Amount', N'58422', N'Avg Days', N'34', N'Avg Amount', N'14605', N'180', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (18, N'Maruti', N'PCL Due for Closure', N'Individual PCL Details', N'PFC2', N'PC1', N'O/s Amount', N'234', N'Delay Days', N'34', N'', N'', N'190', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (19, N'Maruti', N'PCL Due for Closure', N'Individual PCL Details', N'PFC3', N'PC2', N'O/s Amount', N'23423', N'Delay Days', N'34', N'', N'', N'200', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (20, N'Maruti', N'PCL Due for Closure', N'Individual PCL Details', N'PFC4', N'PC3', N'O/s Amount', N'32423', N'Delay Days', N'34', N'', N'', N'210', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (21, N'Maruti', N'PCL Due for Closure', N'Individual PCL Details', N'PFC5', N'PC4', N'O/s Amount', N'2342', N'Delay Days', N'34', N'', N'', N'220', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (22, N'Maruti', N'Bills Under LC Due for payment', N'', N'Count', N'5', N'Amout', N'31594', N'Avg Days', N'34', N'Avg Amount', N'6318', N'240', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (23, N'Maruti', N'Bills Under LC Due for payment', N'Individual LG Details', N'BG1', N'3', N'O/s Amount', N'3243', N'Delay Days', N'3', N'', N'', N'250', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (24, N'Maruti', N'Bills Under LC Due for payment', N'Individual LG Details', N'BG2', N'34', N'O/s Amount', N'2343', N'Delay Days', N'3', N'', N'', N'260', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (25, N'Maruti', N'Bills Under LC Due for payment', N'Individual LG Details', N'BG3', N'342', N'O/s Amount', N'234', N'Delay Days', N'43', N'', N'', N'270', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (26, N'Maruti', N'Bills Under LC Due for payment', N'Individual LG Details', N'BG4', N'343', N'O/s Amount', N'2342', N'Delay Days', N'34', N'', N'', N'280', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (27, N'Maruti', N'Bills Under LC Due for payment', N'Individual LG Details', N'BG5', N'453', N'O/s Amount', N'23432', N'Delay Days', N'34', N'', N'', N'290', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (28, N'Maruti', N'Working Capital', N'Working Capital', N'Lowest Balance', N'3243', N'Highest Balance', N'', N'Avg Balance', N'', N'Utilisation %', N'50', N'300', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
INSERT [dbo].[Snapshot] ([Id], [Cust_Id], [snapshotType], [snapshotDescription], [data1Description], [data1Value], [data2Description], [data2Value], [data3Description], [data3Value], [data4Description], [data4Value], [data5Description], [data5Value], [compiledDate], [SortOrder], [lastUpdatedOn], [lastUpdatedBy]) VALUES (29, N'Maruti', N'Revenue Earned', N'Revenue Earned', N'From', N'01-04-2009', N'To', N'01-04-2010', N'Amount', N'342', N'Previous Period ', N'343', N'310', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), NULL, CAST(N'2018-06-30T00:00:00.000' AS DateTime), N'praveen')
GO
SET IDENTITY_INSERT [dbo].[Snapshot] OFF
GO
SET IDENTITY_INSERT [dbo].[SOC124] ON 
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (1, N'HCC', N'soourcesystem', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via', N'appprovalfor', N'yes', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (2, N'HCC', N'soourcesystem1', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via1', N'appprovalfor1', N'no', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (3, N'HCC', N'soourcesystem2', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via1', N'appprovalfor2', N'yes', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (4, N'maruti', N'soourcesystem', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via', N'appprovalfor', N'yes', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (5, N'maruti', N'soourcesystem1', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via1', N'appprovalfor1', N'no', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (6, N'maruti', N'soourcesystem2', CAST(N'2018-01-10T00:00:00.000' AS DateTime), N'via1', N'appprovalfor2', N'yes', CAST(N'2018-01-11T00:00:00.000' AS DateTime), CAST(N'2018-01-12T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SOC124] OFF
GO
INSERT [dbo].[Student] ([StudentID], [Name], [Email], [Class], [EnrollYear], [City], [Country]) VALUES (1, N'Praveen', N'praveejadoun@yahoo.com', N'bsc', N'2011', N'hyderabae', N'india')
GO
INSERT [dbo].[Student] ([StudentID], [Name], [Email], [Class], [EnrollYear], [City], [Country]) VALUES (2, N'afA', N'DF', N'F', N'DF', N'DF', N'F')
GO
SET IDENTITY_INSERT [dbo].[WarningIndicator] ON 
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (1, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Claims not acknowledged as debt high', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (2, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Concealment of certain vital documents like master agreement, insurance coverage', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (3, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Costing of the project which is in wide variance with standard cost of installation of the project', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (4, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Critical issues highlighted in the stock audit report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (5, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Default in payment to the banks/ sundry debtors and other statutory bodies, etc., bouncing of the high value cheques', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (6, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Delay observed in payment of outstanding dues', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (7, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Disproportionate increase in other current assets.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (8, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Dispute on title of the collateral securities', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (9, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Financing the unit far away from the branch', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (10, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Floating front / associate companies by investing borrowed money', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (11, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Foreign bills remaining outstanding for a long time and tendency for bills to remain overdue', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (12, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent ad hoc sanctions.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (13, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent change in accounting period and/or accounting policies.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (14, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent change in the scope of the project to be undertaken by the borrower', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (15, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent invocation of BGs and devolvement of LCs', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (16, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent request for general purpose loans.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (17, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Funding of the interest by sanctioning additional facilities', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (18, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Funds coming from other banks to liquidate the outstanding loan amount', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (19, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Heavy cash withdrawal in loan accounts.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (20, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'High value RTGS payment to unrelated parties.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (21, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'In merchanting trade, import leg not revealed to the bank', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (22, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Increase in borrowings, despite huge cash and cash equivalents in the borrower’s balance sheet.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (23, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Increase in Fixed Assets, without corresponding increase in turnover (when project is implemented).', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (24, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Invoices devoid of TAN and other details', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (25, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Large number of transactions with inter-connected companies and large outstanding from such companies.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (26, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'LCs issued for local trade / related party transactions', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (27, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Liabilities appearing in ROC search report, not reported by the borrower in its annual report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (28, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Material discrepancies in the annual report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (29, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Movement of an account from one bank to another.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (30, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Non submission of original bills.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (31, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Not routing of sales proceeds through bank', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (32, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Onerous clause in issue of BG/LC/standby letters of credit', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (33, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Poor disclosure of materially adverse information and no qualification by the statutory auditors.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (34, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Raid by Income tax /sales tax/ central excise duty officials', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (35, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Reduction in the stake of promoter / director', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (36, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Request received from the borrower to postpone the inspection of the godown for flimsy reasons', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (37, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Resignation of the key personnel and frequent changes in the management', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (38, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Same collateral charged to a number of lenders', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (39, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant inconsistencies within the annual report (between various sections).', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (40, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant increase in working capital borrowing as percentage of turnover.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (41, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant movements in inventory, disproportionately higher than the growth in turnover.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (42, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant movements in receivables, disproportionately higher than the growth in turnover and/or increase in ageing of the receivables.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (43, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Substantial increase in unbilled revenue year after year.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (44, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Substantial related party transactions.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (45, N'maruti', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Under insured or over insured inventory', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (46, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Claims not acknowledged as debt high', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (47, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Concealment of certain vital documents like master agreement, insurance coverage', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (48, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Costing of the project which is in wide variance with standard cost of installation of the project', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (49, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Critical issues highlighted in the stock audit report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (50, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Default in payment to the banks/ sundry debtors and other statutory bodies, etc., bouncing of the high value cheques', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (51, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Delay observed in payment of outstanding dues', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (52, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Disproportionate increase in other current assets.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (53, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Dispute on title of the collateral securities', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (54, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Financing the unit far away from the branch', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (55, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Floating front / associate companies by investing borrowed money', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (56, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Foreign bills remaining outstanding for a long time and tendency for bills to remain overdue', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (57, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent ad hoc sanctions.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (58, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent change in accounting period and/or accounting policies.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (59, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent change in the scope of the project to be undertaken by the borrower', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (60, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent invocation of BGs and devolvement of LCs', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (61, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Frequent request for general purpose loans.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (62, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Funding of the interest by sanctioning additional facilities', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (63, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Funds coming from other banks to liquidate the outstanding loan amount', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (64, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Heavy cash withdrawal in loan accounts.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (65, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'High value RTGS payment to unrelated parties.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (66, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'In merchanting trade, import leg not revealed to the bank', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (67, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Increase in borrowings, despite huge cash and cash equivalents in the borrower’s balance sheet.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (68, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Increase in Fixed Assets, without corresponding increase in turnover (when project is implemented).', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (69, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Invoices devoid of TAN and other details', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (70, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Large number of transactions with inter-connected companies and large outstanding from such companies.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (71, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'LCs issued for local trade / related party transactions', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (72, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Liabilities appearing in ROC search report, not reported by the borrower in its annual report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (73, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Material discrepancies in the annual report.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (74, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Movement of an account from one bank to another.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (75, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Non submission of original bills.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (76, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Not routing of sales proceeds through bank', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (77, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Onerous clause in issue of BG/LC/standby letters of credit', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (78, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Poor disclosure of materially adverse information and no qualification by the statutory auditors.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (79, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Raid by Income tax /sales tax/ central excise duty officials', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (80, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Reduction in the stake of promoter / director', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (81, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Request received from the borrower to postpone the inspection of the godown for flimsy reasons', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (82, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Resignation of the key personnel and frequent changes in the management', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (83, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Same collateral charged to a number of lenders', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (84, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant inconsistencies within the annual report (between various sections).', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (85, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant increase in working capital borrowing as percentage of turnover.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (86, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant movements in inventory, disproportionately higher than the growth in turnover.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (87, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Significant movements in receivables, disproportionately higher than the growth in turnover and/or increase in ageing of the receivables.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (88, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Substantial increase in unbilled revenue year after year.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (89, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Substantial related party transactions.', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (90, N'HCC', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'Under insured or over insured inventory', N'Yes', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(N'2018-06-23T05:38:24.133' AS DateTime), N'praveen')
GO
SET IDENTITY_INSERT [dbo].[WarningIndicator] OFF
GO
ALTER TABLE [dbo].[FinancialResultType] ADD  DEFAULT ((0)) FOR [IsFinancialData]
GO
ALTER TABLE [dbo].[FinancialResultDetails]  WITH CHECK ADD  CONSTRAINT [FK_FinancialResultDetails_FinancialResultHeader] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[FinancialResultHeader] ([HeaderID])
GO
ALTER TABLE [dbo].[FinancialResultDetails] CHECK CONSTRAINT [FK_FinancialResultDetails_FinancialResultHeader]
GO
ALTER TABLE [dbo].[FinancialResultHeader]  WITH CHECK ADD  CONSTRAINT [FK_FinancialResultHeader_FinancialResultType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[FinancialResultType] ([TypeID])
GO
ALTER TABLE [dbo].[FinancialResultHeader] CHECK CONSTRAINT [FK_FinancialResultHeader_FinancialResultType]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateFinancialInfo]    Script Date: 01-07-2018 02:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [dbo].[spUpdateFinancialInfo]  
@financialData [dbo].[FinancialData] readonly  
AS  
BEGIN  
  
  
INSERT INTO [dbo].[FinancialResultDetails] ([HeaderID],[Amount],[ResQuarter],[IsActive],[Cust_id],Trends,UpdateDate)   
(  
SELECT FRD.HeaderID,FD.Amount,FD.QuarterInfo,1,ClientID,FD.Trends,CASE WHEN Trends IN (1,2,3,4,5) THEN CASE  
 WHEN QuarterInfo LIKE 'MAR%' OR QuarterInfo  LIKE 'DEC%' THEN CAST(convert(varchar(10),'31-'+QuarterInfo,121) AS DATE)   
 ELSE  CAST(convert(varchar(10),'30-'+QuarterInfo,121) AS DATE) END  
  ELSE  CAST(convert(varchar(10),'31-12-'+QuarterInfo,121) AS DATE) END  
FROM @financialData FD   
INNER JOIN [dbo].[FinancialResultHeader] FRD ON FRD.HeaderName=FD.Heading  AND FD.Trends=FRD.TypeId
WHERE NOT EXISTS(SELECT FDet.HeaderID,Fdet.[ResQuarter],FDet.Cust_id FROM [FinancialResultDetails] FDet WHERE FRD.HeaderID =FDet.HeaderID AND FDet.ResQuarter=FD.QuarterInfo AND FDet.Cust_id=FD.ClientID AND Fdet.Trends=FD.Trends)  
  
)  
  
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateNewsInfo]    Script Date: 01-07-2018 02:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateNewsInfo]
@newsData [dbo].[FinancialNews] readonly
AS
BEGIN


INSERT INTO [dbo].[News] ([Url],[Heading],[Source],[UpdateDate],[Cust_id]) 
(
SELECT FD.NewsURL,FD.Title,'MoneyControl',FD.UpdateTime,ClientID
FROM @newsData FD 
WHERE NOT EXISTS (SELECT 1 FROM News n WHERE n.Url=FD.NewsURL AND n.Cust_id=FD.ClientID)

)

END
GO
