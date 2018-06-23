USE [gamutdatabase]
GO
/****** Object:  Table [dbo].[AccountDetails]    Script Date: 24-06-2018 00:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinancialResultDetails]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinancialResultHeader]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FinancialResultHeader](
	[HeaderID] [int] IDENTITY(1,1) NOT NULL,
	[HeaderName] [varchar](500) NULL,
	[TypeId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FinancialResultHeader] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinancialResultType]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FinancialResultType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FinancialResultType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[General]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GeneralExposure]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GeneralGurantor]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LookUp]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [bigint] IDENTITY(1,1) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[Source] [varchar](100) NULL,
	[Heading] [varchar](500) NULL,
	[Url] [varchar](500) NULL,
	[Cust_id] [varchar](50) NULL,
	[Comments] [varchar](5000) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RestucturingDetail]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RestucturingHeader]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Security]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOC124]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WarningIndicator]    Script Date: 24-06-2018 00:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AccountDetails] ON 

GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (1, N'maruti', N'12345678', N'term loan', N'SMA0', 0, 434343, 4343, NULL, 4535, N'Consortium
', N'hdfc', NULL, 9, N'mar-jun', NULL, 3434, NULL, NULL, NULL, CAST(0x0000AA4400000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (2, N'maruti', N'34567989', N'term loan', N'SMA1', 1, 87757, 5, NULL, 4354, N'Multiple', N'hdfc', NULL, 8, N'mar-jun', NULL, 343, NULL, NULL, NULL, CAST(0x0000AA4400000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (3, N'maruti', N'8668656656', N'CC', N'SMA2', 2, 3353535, 533, NULL, 4343, N'Consortium
', N'hdfc', NULL, 7, N'mar-jun', NULL, 57655, NULL, NULL, NULL, CAST(0x0000AA8300000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (4, N'maruti', N'4646755656', N'CC', N'SMA3', 3, 43433, 533, NULL, 554, N'Multiple', N'ICICI', NULL, 7, N'mar-jun', NULL, 57655, NULL, NULL, NULL, CAST(0x0000AA8300000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (5, N'tatapower', N'12345678', N'CC', N'SMA0', 1, 1000, 750, 1000, 23432, N'Consortium', N'SBI', NULL, 8.75, NULL, N'gold', NULL, CAST(0x0000A8A700000000 AS DateTime), CAST(0x0000A8A700000000 AS DateTime), NULL, CAST(0x0000A8A700000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (6, N'tatapower', N'23456789', N'Term Loan', N'SMA1', 2, 5000, 4850, 4900, 3243, N'Multiple', N'NA', CAST(0x0000A04700000000 AS DateTime), 8.2, NULL, N'silver', NULL, CAST(0x0000A8A700000000 AS DateTime), CAST(0x0000A8A700000000 AS DateTime), NULL, CAST(0x0000A8A700000000 AS DateTime), N'praveen')
GO
INSERT [dbo].[AccountDetails] ([Id], [Cust_Id], [accountNumber], [nature], [smaRiskType], [smaRiskLevel], [limit], [balance], [exposure], [arrears], [bankingArr], [leadBank], [dcco], [roi], [period], [security], [cashMargin], [lastRenewalDate], [lastReviewDate], [lastReviewDate1or2], [lastUpdateOn], [lastUpdateBy]) VALUES (7, N'tatapower', N'34567890', N'BG/LC', N'NA', 0, 500, 400, 500, 32432, N'Consortium', N'SBI', NULL, 0.25, NULL, N'future payments', NULL, CAST(0x0000A8A700000000 AS DateTime), CAST(0x0000A8A700000000 AS DateTime), NULL, CAST(0x0000A8A700000000 AS DateTime), N'praveen')
GO
SET IDENTITY_INSERT [dbo].[AccountDetails] OFF
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'AtulAuto', N'Atul Auto', N'EFGHI4567E', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Auto', N'Auto', N'Mfg of Motor Vehicles', N'Hyerabad Lakdi Ka Pul', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=531795&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/atulauto/AA08')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'dbs', N'development bank of spore', N'PANSPORE', 3334, CAST(0xD5310B00 AS Date), N'pubic limited', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'HCC', N'HCC', N'JKLMN9012J', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Infrastructure', N'Infra', N'Construction/Maintenance of Roads', N'Hyerabad Lakdi Ka Pul', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500185&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/construction-contracting-civil/hindustanconstructioncompany/HCC')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'HUL', N'HUL', N'HIJKL7890H', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Consumables', N'FMCG', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'Bangalore Indira Nagar', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=500696&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/personal-care/hindustanunilever/HU')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'ICICIHFC', N'ICICI HFC', N'CDEFG2345C', 10000, CAST(0x4C320B00 AS Date), N'Public', N'FI', N'NBFC-HFC', N'NBFCs- in the housing sector', N'Bangalore Indira Nagar', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'JaypeeInfra', N'Jaypee Infratech Limited', N'IJKLM8901I', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Infrastructure', N'Infra', N'Construction/Maintenance of Roads', N'Delhi Karol Baug', N'https://www.bseindia.com/stock-share-price/stockreach_financials.aspx?scripcode=533207&expandable=0', N'https://www.moneycontrol.com/india/stockpricequote/infrastructure-general/jaypeeinfratech/JI09')
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'LICHFL', N'LIC Housing Finance', N'DEFGH3456D', 10000, CAST(0x4C320B00 AS Date), N'Public', N'FI', N'NBFC-HFC', N'NBFCs- in the housing sector', N'Delhi Karol Baug', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'Maruti', N'Maruti Suzuki', N'FGHIJ5678F', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Auto', N'Auto', N'Mfg of Motor Vehicles', N'Mumbai Fort', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'PatanjaliAgro', N'Patanjali Agro India P Ltd', N'GHIJK6789G', 10000, CAST(0x4C320B00 AS Date), N'Private', N'Consumables', N'FMCG', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'Chennai Mount Road', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'RIL', N'Reliance Industries Limited', N'BCDEF0123B', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Oil', N'Energy', N'Manufacture of refined petroleum products', N'Chennai Mount Road', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'TataPower', N'Tata Power', N'ABCDE1234A', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Power', N'Energy', N'Collection and Distn of Electricity', N'Mumbai Fort', NULL, NULL)
GO
INSERT [dbo].[Customer] ([Cust_id], [Cust_Name], [Pan_No], [Exposure], [Exposure_AsOn], [Constitution], [Industry], [Sector], [Activity], [Branch], [FinDataMappingId], [NewsDataMappingId]) VALUES (N'TataSons', N'Tata Sons', N'ABCDE1234A', 10000, CAST(0x4C320B00 AS Date), N'Public', N'Power', N'Energy', N'Collection and Distn of Electricity', N'Mumbai Fort', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[FinancialResultDetails] ON 

GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (106, 49, CAST(150.5800 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (107, 49, CAST(129.0100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (108, 49, CAST(159.8500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (109, 49, CAST(129.8800 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (110, 49, CAST(104.0600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (111, 50, CAST(0.9800 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (112, 50, CAST(0.4300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (113, 50, CAST(0.5200 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (114, 50, CAST(0.5200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (115, 50, CAST(0.1000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (116, 51, CAST(151.5600 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (117, 51, CAST(129.4400 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (118, 51, CAST(160.3700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (119, 51, CAST(130.4000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (120, 51, CAST(104.1600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (121, 52, CAST(-132.6500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (122, 52, CAST(-113.5500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (123, 52, CAST(-132.9900 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (124, 52, CAST(-117.8900 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (125, 52, CAST(-93.8600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (126, 53, CAST(-0.1200 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (127, 53, CAST(-0.1300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (128, 53, CAST(-0.0700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (129, 53, CAST(-0.1000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (130, 53, CAST(-0.0900 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (131, 54, CAST(18.9100 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (132, 54, CAST(15.8900 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (133, 54, CAST(27.3800 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (134, 54, CAST(12.5100 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (135, 54, CAST(10.3000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (136, 55, CAST(-1.3200 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (137, 55, CAST(-1.3400 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (138, 55, CAST(-1.3100 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (139, 55, CAST(-1.2900 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (140, 55, CAST(-1.4300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (141, 56, CAST(17.5900 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (142, 56, CAST(14.5500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (143, 56, CAST(26.0700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (144, 56, CAST(11.2200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (145, 56, CAST(8.8700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (146, 57, CAST(-5.9000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (147, 57, CAST(-4.8500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (148, 57, CAST(-9.1000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (149, 57, CAST(-3.4100 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (150, 57, CAST(-2.6700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (151, 58, CAST(11.6900 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (152, 58, CAST(9.7000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (153, 58, CAST(16.9700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (154, 58, CAST(7.8100 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (155, 58, CAST(6.2000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (156, 59, CAST(10.9700 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (157, 59, CAST(10.9700 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (158, 59, CAST(10.9700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (159, 59, CAST(11.2000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (160, 59, CAST(11.2000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (161, 60, CAST(5.3300 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (162, 60, CAST(4.4200 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (163, 60, CAST(7.7400 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (164, 60, CAST(3.5600 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (165, 60, CAST(2.8300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (166, 61, CAST(5.9300 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (167, 61, CAST(5.0300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (168, 61, CAST(8.3300 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (169, 61, CAST(4.0600 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (170, 61, CAST(3.4100 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (171, 62, CAST(12.5600 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (172, 62, CAST(12.3200 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (173, 62, CAST(17.1300 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (174, 62, CAST(9.6300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (175, 62, CAST(9.9000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'AtulAuto', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (176, 49, CAST(1442.7400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (177, 49, CAST(1230.9300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (178, 49, CAST(970.7500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (179, 49, CAST(930.6600 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (180, 49, CAST(1358.2700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (181, 50, CAST(68.7300 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (182, 50, CAST(62.0800 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (183, 50, CAST(61.1800 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (184, 50, CAST(60.4600 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (185, 50, CAST(70.5900 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (186, 51, CAST(1511.4700 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (187, 51, CAST(1293.0100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (188, 51, CAST(1031.9300 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (189, 51, CAST(991.1200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (190, 51, CAST(1428.8600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (191, 52, CAST(-1447.2500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (192, 52, CAST(-1217.7000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (193, 52, CAST(-984.8800 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (194, 52, CAST(-942.7900 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (195, 52, CAST(-1363.3600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (196, 53, CAST(-164.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (197, 53, CAST(-150.7900 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (198, 53, CAST(-163.0600 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (199, 53, CAST(-182.1300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (200, 53, CAST(-207.9800 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (201, 54, CAST(64.2200 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (202, 54, CAST(75.3100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (203, 54, CAST(47.0500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (204, 54, CAST(48.3300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (205, 54, CAST(65.5000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (206, 55, CAST(-35.1900 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (207, 55, CAST(-29.3600 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (208, 55, CAST(-29.5500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (209, 55, CAST(-28.8400 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (210, 55, CAST(-28.3300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (211, 56, CAST(29.0300 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (212, 56, CAST(45.9500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (213, 56, CAST(17.5000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (214, 56, CAST(19.4900 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (215, 56, CAST(37.1700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (216, 57, CAST(-8.9400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (217, 57, CAST(-14.6400 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (218, 57, CAST(-5.9000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (219, 57, CAST(-4.9700 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (220, 57, CAST(-16.2600 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (221, 58, CAST(20.0900 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (222, 58, CAST(31.3100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (223, 58, CAST(11.6000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (224, 58, CAST(14.5200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (225, 58, CAST(20.9100 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (226, 59, CAST(101.5500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (227, 59, CAST(101.5500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (228, 59, CAST(101.5500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (229, 59, CAST(101.0800 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (230, 59, CAST(101.0800 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (231, 60, CAST(0.2000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (232, 60, CAST(0.3100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (233, 60, CAST(0.1100 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (234, 60, CAST(0.1400 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (235, 60, CAST(0.2500 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (236, 61, CAST(0.5400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (237, 61, CAST(0.6000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (238, 61, CAST(0.4100 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (239, 61, CAST(0.4300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (240, 61, CAST(0.4900 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (241, 62, CAST(4.4500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (242, 62, CAST(6.1200 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (243, 62, CAST(4.8500 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (244, 62, CAST(5.1900 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (245, 62, CAST(4.8200 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HCC', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (246, 49, CAST(9097.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (247, 49, CAST(8590.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (248, 49, CAST(8309.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (249, 49, CAST(9222.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (250, 49, CAST(8886.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (251, 50, CAST(100.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (252, 50, CAST(152.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (253, 50, CAST(204.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (254, 50, CAST(113.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (255, 50, CAST(83.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (256, 51, CAST(9197.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (257, 51, CAST(8742.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (258, 51, CAST(8513.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (259, 51, CAST(9335.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (260, 51, CAST(8969.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (261, 52, CAST(-7117.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (262, 52, CAST(-6936.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (263, 52, CAST(-6597.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (264, 52, CAST(-7375.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (265, 52, CAST(-7242.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (266, 53, CAST(-4.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (267, 53, CAST(-5.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (268, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (269, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (270, 53, CAST(-6.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (271, 54, CAST(2080.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (272, 54, CAST(1806.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (273, 54, CAST(1916.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (274, 54, CAST(1960.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (275, 54, CAST(1727.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (276, 55, CAST(-128.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (277, 55, CAST(-121.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (278, 55, CAST(-115.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (279, 55, CAST(-114.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (280, 55, CAST(-108.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (281, 56, CAST(1952.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (282, 56, CAST(1685.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (283, 56, CAST(1801.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (284, 56, CAST(1846.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (285, 56, CAST(1619.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (286, 57, CAST(-601.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (287, 57, CAST(-359.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (288, 57, CAST(-525.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (289, 57, CAST(-563.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (290, 57, CAST(-436.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (291, 58, CAST(1351.0000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (292, 58, CAST(1326.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (293, 58, CAST(1276.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (294, 58, CAST(1283.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (295, 58, CAST(1183.0000 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (296, 59, NULL, N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (297, 59, CAST(216.0000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (298, 59, CAST(216.0000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (299, 59, CAST(216.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (300, 59, NULL, N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (301, 60, CAST(6.2400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (302, 60, CAST(6.1300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (303, 60, CAST(5.9000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (304, 60, CAST(5.9300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (305, 60, CAST(5.4700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (306, 61, NULL, N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (307, 61, CAST(6.7000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (308, 61, CAST(6.4400 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (309, 61, CAST(6.4700 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (310, 61, NULL, N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (311, 62, CAST(22.8600 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (312, 62, CAST(21.0200 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (313, 62, CAST(23.0600 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (314, 62, CAST(21.2500 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (315, 62, CAST(19.4400 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'HUL', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (316, 49, CAST(59.9000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (317, 49, CAST(312.3000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (318, 49, CAST(-640.7500 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (319, 49, CAST(254.2400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (320, 49, CAST(-700.4000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (321, 50, CAST(0.0100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (322, 50, CAST(7.8000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (323, 50, CAST(2.1800 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (324, 50, CAST(3.7800 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (325, 50, CAST(0.1200 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (326, 51, CAST(59.9100 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (327, 51, CAST(320.1000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (328, 51, CAST(-638.5700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (329, 51, CAST(258.0200 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (330, 51, CAST(-700.2800 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (331, 52, CAST(-409.3400 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (332, 52, CAST(-387.6200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (333, 52, CAST(-291.6100 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (334, 52, CAST(-731.1200 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (335, 52, CAST(-187.5000 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (336, 53, CAST(-223.0600 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (337, 53, CAST(-208.4400 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (338, 53, CAST(-271.6400 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (339, 53, CAST(-433.7400 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (340, 53, CAST(-253.9700 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (341, 54, CAST(-349.4300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (342, 54, CAST(-67.5200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (343, 54, CAST(-930.1800 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (344, 54, CAST(-473.1000 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (345, 54, CAST(-887.7800 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (346, 55, CAST(-11.8500 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (347, 55, CAST(-11.4800 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (348, 55, CAST(-10.3300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (349, 55, CAST(-7.3500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (350, 55, CAST(-9.8600 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (351, 56, CAST(-361.2800 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (352, 56, CAST(-79.0000 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (353, 56, CAST(-940.5100 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (354, 56, CAST(-480.4500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (355, 56, CAST(-897.6400 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (356, 57, NULL, N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (357, 57, CAST(34.2200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (358, 57, CAST(272.9400 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (359, 57, NULL, N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (360, 57, CAST(-34.2200 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (361, 58, CAST(-361.2800 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (362, 58, CAST(-44.7800 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (363, 58, CAST(-667.5700 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (364, 58, CAST(-480.4500 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (365, 58, CAST(-931.8600 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (366, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (367, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (368, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (369, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (370, 59, CAST(1388.9300 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (371, 60, CAST(-2.6000 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (372, 60, CAST(-0.3200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (373, 60, CAST(-4.8100 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (374, 60, CAST(-3.4600 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (375, 60, CAST(-6.7100 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (376, 61, CAST(-2.5200 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (377, 61, CAST(-0.2400 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (378, 61, CAST(-4.7300 AS Decimal(19, 4)), N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (379, 61, CAST(-3.4100 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (380, 61, CAST(-6.6400 AS Decimal(19, 4)), N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (381, 62, CAST(-583.3600 AS Decimal(19, 4)), N'Dec-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (382, 62, CAST(-21.6200 AS Decimal(19, 4)), N'Jun-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (383, 62, NULL, N'Mar-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (384, 62, CAST(-186.0800 AS Decimal(19, 4)), N'Mar-18', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (385, 62, NULL, N'Sep-17', NULL, 1, N'JaypeeInfra', N'Quarterly')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (386, 49, CAST(3318.6900 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (387, 49, CAST(3247.8300 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (388, 49, CAST(2799.7800 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (389, 49, CAST(962.1400 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (390, 49, CAST(-73.9600 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (391, 50, CAST(13.4400 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (392, 50, CAST(9.9500 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (393, 50, CAST(7.8600 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (394, 50, CAST(3.7400 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (395, 50, CAST(11.7100 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (396, 51, CAST(3332.1300 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (397, 51, CAST(3257.7800 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (398, 51, CAST(2807.6400 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (399, 51, CAST(965.8800 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (400, 51, CAST(-62.2500 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (401, 52, CAST(-2016.2300 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (402, 52, CAST(-1907.0900 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (403, 52, CAST(-2201.6300 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (404, 52, CAST(-2167.0800 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (405, 52, CAST(-1715.5800 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (406, 53, CAST(-894.0200 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (407, 53, CAST(-893.5600 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (408, 53, CAST(-918.4600 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (409, 53, CAST(-841.3900 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (410, 53, CAST(-1119.2100 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (411, 54, CAST(421.8800 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (412, 54, CAST(457.1300 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (413, 54, CAST(-312.4500 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (414, 54, CAST(-1201.2000 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (415, 54, CAST(-1777.8300 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (416, 55, CAST(-21.4300 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (417, 55, CAST(-28.2800 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (418, 55, CAST(-34.0600 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (419, 55, CAST(-41.2700 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (420, 55, CAST(-40.5400 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (421, 56, CAST(400.4500 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (422, 56, CAST(428.8500 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (423, 56, CAST(-346.5100 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (424, 56, CAST(-1242.4700 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (425, 56, CAST(-1818.3700 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (426, 57, CAST(-101.2900 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (427, 57, CAST(-73.8500 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (428, 57, CAST(103.5800 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (429, 57, CAST(366.0900 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (430, 57, NULL, N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (431, 58, CAST(299.1600 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (432, 58, CAST(355.0000 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (433, 58, CAST(-242.9300 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (434, 58, CAST(-876.3800 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (435, 58, CAST(-1818.3700 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (436, 59, CAST(1388.9300 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (437, 59, CAST(1388.9300 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (438, 59, CAST(1388.9300 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (439, 59, CAST(1388.9300 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (440, 59, CAST(1388.9300 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (441, 60, CAST(2.1500 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (442, 60, CAST(2.5600 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (443, 60, CAST(-1.7500 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (444, 60, CAST(-6.3100 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (445, 60, CAST(-13.0900 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (446, 61, CAST(2.3100 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (447, 61, CAST(2.7600 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (448, 61, CAST(-1.5000 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (449, 61, CAST(-6.0100 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (450, 61, CAST(-12.8000 AS Decimal(19, 4)), N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (451, 62, CAST(39.6500 AS Decimal(19, 4)), N'2014', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (452, 62, CAST(41.5900 AS Decimal(19, 4)), N'2015', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (453, 62, CAST(21.6400 AS Decimal(19, 4)), N'2016', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (454, 62, CAST(-124.8500 AS Decimal(19, 4)), N'2017', NULL, 1, N'JaypeeInfra', N'Annual')
GO
INSERT [dbo].[FinancialResultDetails] ([ID], [HeaderID], [Amount], [ResQuarter], [UpdateDate], [IsActive], [Cust_id], [Trends]) VALUES (455, 62, NULL, N'2018', NULL, 1, N'JaypeeInfra', N'Annual')
GO
SET IDENTITY_INSERT [dbo].[FinancialResultDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialResultHeader] ON 

GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (49, N'Revenue', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (50, N'Other Income', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (51, N'Total Income', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (52, N'Expenditure', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (53, N'Interest', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (54, N'PBDT', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (55, N'Depreciation', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (56, N'PBT', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (57, N'Tax', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (58, N'Net Profit', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (59, N'Equity', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (60, N'EPS', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (61, N'CEPS', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (62, N'OPM %', 1, 1)
GO
INSERT [dbo].[FinancialResultHeader] ([HeaderID], [HeaderName], [TypeId], [IsActive]) VALUES (63, N'NPM %', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[FinancialResultHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialResultType] ON 

GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive]) VALUES (1, N'PROFIT & LOSS', 1)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive]) VALUES (2, N'Quarters', 1)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive]) VALUES (3, N'Balance Sheet', 1)
GO
INSERT [dbo].[FinancialResultType] ([TypeID], [TypeName], [IsActive]) VALUES (4, N'Cashflow', 1)
GO
SET IDENTITY_INSERT [dbo].[FinancialResultType] OFF
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'AutlAuto', N'Mfg of Motor Vehicles', N'Auto', N'No', N'N', N'Auto', N'18-Jun-86', N'02-Feb-10', NULL, NULL, NULL, NULL, NULL, N'Sole', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'HCC', N'Construction/Maintenance of Roads', N'Infra', N'No', N'N', N'Infrastructure', N'27-Jan-26', N'09-Sep-00', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'SMA2', N'04-06-2003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'HL', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'FMCG', N'No', N'N', N'Consumables', N'17-Oct-33', N'22-May-96', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'ICICI Bank', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'ICICIHFL', N'NBFCs- in the housing sector', N'NBFC-HFC', N'No', N'N', N'FI', N'28-May-99', N'05-Dec-14', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'ICICI Bank', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Jaypee', N'Construction/Maintenance of Roads', N'Infra', N'No', N'N', N'Infrastructure', N'05-Apr-07', N'15-Jun-13', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'SMA2', N'31-12-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'jpmc', N'activity', N'sector or subsector', N'priority non priority', N'No', N'industry', N'incorporation', N'conection since', N'internal ration', CAST(0xCD120B00 AS Date), N'eexternal rating', CAST(0xD0120B00 AS Date), N'inspection comments', N'Multiple', N'if consortium', N'lead bank', N'sma', N'Yes', CAST(0xCF120B00 AS Date), N'Yes', CAST(0xCE120B00 AS Date), N'takeover from bank of america', N'reason for takeover', 1001, 324, 342324, 423, 324, 234, 23423, 324, 324, 24, 23423423, 32432, 4324324324, 23423, 23432, 324324, 3242, 3432, N'2 ', CAST(0xA91F0B00 AS Date), N'jpmc', N'jpmc', N'jpmc', N'jpmc', N'jpmc')
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'LICHFL', N'NBFCs- in the housing sector', N'NBFC-HFC', N'No', N'N', N'FI', N'19-Jun-89', N'04-Jan-17', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'maruti', N'Mfg of Motor Vehicles', N'Auto', N'No', N'No', N'Auto', N'24-Feb-81', N'12-Oct-98', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'HDFC Bank', N'NA', N'Yes', NULL, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Maruti1', N'activity', N'sdafasd', N'asdfasd', N'sfasf', N'asdfsad', N'asdfsda', N'adfsda', N'asdf', NULL, N'sdafa', NULL, NULL, N'sdf', N'asdf', N'sdaf', N'sdaf', N'adsf', NULL, N'asdf', NULL, N'dsfa', N'fsda', 1001, 324, 342324, 423, 324, 234, 23423, 324, 324, 24, 23423423, 32432, 4324324324, 23423, 23432, 324324, 3242, 3432, N'32432', CAST(0xA51F0B00 AS Date), N'g1', N'g2', N'g3', N'p1', N'p2')
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'Patanjali', N'SOAPS,COSMETICS, TOILETRIES, ETC.', N'FMCG', N'No', N'N', N'Consumables', N'19-Aug-09', N'04-Aug-10', NULL, NULL, NULL, NULL, NULL, N'Sole', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'RIL', N'Manufacture of refined petroleum products', N'Energy', N'No', N'N', N'Oil', N'08-May-73', N'04-Jun-16', NULL, NULL, NULL, NULL, NULL, N'Multiple', NULL, N'NA', N'NA', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[General] ([Cust_id], [Activity], [Sector_SubSector], [Priority_Non_Priority], [Govt_sponsored], [Industry], [Incorporation], [Connection_Since], [Internal_Rating], [Internal_Rating_AsOn], [External_Rating], [External_Rating_AsOn], [Inspection_Comments], [Banking_Argmt], [If_Consortium], [Lead_Bank], [SMA], [DCCO], [DCCO_AsOn], [Takeover], [Takeover_AsOn], [Takeover_From], [Reason_for_Takeover], [Working_capital_L], [Term_Load_L], [Bank_Gurantee_L], [Letter_of_credit_L], [PCL_L], [Bill_Purchase_L], [Working_capital_B], [Term_Load_B], [Bank_Gurantee_B], [Letter_of_credit_B], [PCL_B], [Bill_Purchase_B], [Working_capital_E], [Term_Load_E], [Bank_Gurantee_E], [Letter_of_credit_E], [PCL_E], [Bill_Purchase_E], [Defaults], [Defaults_As_On], [Gurantor_1], [Gurantor_2], [Promoter_1], [Promoter_2], [Promoter_3]) VALUES (N'TataPower', N'Collection and Distn of Electricity', N'Energy', N'No', N'N', N'Power', N'18-Sep-19', N'02-Apr-08', NULL, NULL, NULL, NULL, NULL, N'Consortium', NULL, N'SBI', N'SMA0', N'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[GeneralExposure] ON 

GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (1, N'maruti', N'Working Capital', 434, 4343, 43)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (2, N'maruti', N'term load', 3223, 34234, 4334)
GO
INSERT [dbo].[GeneralExposure] ([id], [Cust_Id], [Nature], [Limit], [Balance], [Exposure]) VALUES (3, N'maruti', N'Bank Gurantee', 32423, 23423, 343)
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
SET IDENTITY_INSERT [dbo].[Interest] ON 

GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (1, N'jpmc', N'3456789', N'cash-credit', N'as per finacle', 9.9, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'finacle')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (2, N'jpmc', N'3456785', N'cash-credit', N'as per finacle', 9.9, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'finacle')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (3, N'jpmc', N'34567867', N'Term-Loan', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (4, N'jpmc', N'3456782', N'Term-Loan', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (5, N'jpmc', N'3456781', N'PCL', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (6, N'jpmc', N'3456788', N'PCL', N'CBS', 11, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (7, N'jpmc', N'3456789', N'cash-credit', N'as per finacle', 9.9, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'finacle')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (8, N'maruti', N'3456785', N'cash-credit', N'as per finacle', 9.9, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'finacle')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (9, N'maruti', N'34567867', N'Term-Loan', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (10, N'maruti', N'3456782', N'Term-Loan', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (11, N'hcc', N'3456781', N'PCL', N'CBS', 10, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
GO
INSERT [dbo].[Interest] ([Id], [Cust_Id], [accountNo], [accountType], [roi], [asperID], [dated], [schemeType], [followUpDate], [compiledDate], [source]) VALUES (12, N'hcc', N'3456788', N'PCL', N'CBS', 11, CAST(0x00009B8800000000 AS DateTime), NULL, CAST(0x0000AC3200000000 AS DateTime), CAST(0x00009C9E00000000 AS DateTime), N'CBS')
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
SET IDENTITY_INSERT [dbo].[LookUp] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (1, CAST(0x0000A8C700000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (2, CAST(0x0000A89600000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (3, CAST(0x0000A89600000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (4, CAST(0x0000A85B00000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (5, CAST(0x0000A80100000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (6, CAST(0x0000A8F600000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (7, CAST(0x0000A8F200000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (8, CAST(0x0000A8E500000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (9, CAST(0x0000A8E500000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (10, CAST(0x0000A8E200000000 AS DateTime), N'MoneyControl', N'Atul Auto Q4 PAT seen up 146.4% YoY to Rs. 20 cr: HDFC Securities', N'https://www.moneycontrol.com/news/result-poll/atul-auto-q4-pat-seen1464-yoy-to-rs-20-cr-hdfc-securities_10803261.html', N'AtulAuto', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (11, CAST(0x0000A8F700000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (12, CAST(0x0000A8F700000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (13, CAST(0x0000A8D500000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (14, CAST(0x0000A8AB00000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (15, CAST(0x0000A8F700000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (16, CAST(0x0000A8E300000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (17, CAST(0x0000A8D600000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (18, CAST(0x0000A8D600000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (19, CAST(0x0000A8D500000000 AS DateTime), N'MoneyControl', N'HCC bags Rs 737 cr contract for Bangladesh nuclear power plant', N'https://www.moneycontrol.com/news/business/hcc-bags-rs-737-cr-contract-for-bangladesh-nuclear-power-plant_10983281.html', N'HCC', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (20, CAST(0x0000A90200000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (21, CAST(0x0000A8F500000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (22, CAST(0x0000A8F200000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (23, CAST(0x0000A8F800000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (24, CAST(0x0000A8F700000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (25, CAST(0x0000A8F600000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (26, CAST(0x0000A8F600000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (27, CAST(0x0000A8F000000000 AS DateTime), N'MoneyControl', N'Seven of top 10 valued companies add Rs 73,872 crore in MCap', N'https://www.moneycontrol.com/news/business/seventop-10-valued-companies-add-rs-73872-croremcap_11020341.html', N'HUL', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (28, CAST(0x0000A90000000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (29, CAST(0x0000A8EA00000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (30, CAST(0x0000A8E400000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (31, CAST(0x0000A8E000000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (32, CAST(0x0000A8DC00000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (33, CAST(0x0000A8E300000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (34, CAST(0x0000A8E300000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (35, CAST(0x0000A8E100000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (36, CAST(0x0000A8E000000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
INSERT [dbo].[News] ([NewsID], [UpdateDate], [Source], [Heading], [Url], [Cust_id], [Comments]) VALUES (37, CAST(0x0000A8DD00000000 AS DateTime), N'MoneyControl', N'Jaypee fails to pay up at SC, talking to YES Bank, Deutsche under alternative plan', N'https://www.moneycontrol.com/news/real-estate/jaypee-fails-to-payat-sc-talking-to-yes-bank-deutsche-under-alternative-plan_11017681.html', N'JaypeeInfra', NULL)
GO
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (1, N'tatapower', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), NULL, 2018, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (2, N'tatapower', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), NULL, 2017, N'A', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (3, N'tatapower', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), NULL, 2016, N'A', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (4, N'tatapower', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), NULL, 2015, N'A', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (5, N'tatapower', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), NULL, 2014, N'A', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (6, N'RIL', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), NULL, 2018, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (7, N'RIL', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), NULL, 2017, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (8, N'RIL', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), NULL, 2016, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (9, N'RIL', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), NULL, 2015, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (10, N'RIL', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), NULL, 2014, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (11, N'ICICIHFC', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), NULL, 2018, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (12, N'ICICIHFC', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), NULL, 2017, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (13, N'ICICIHFC', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), NULL, 2016, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (14, N'ICICIHFC', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), NULL, 2015, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (15, N'ICICIHFC', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), NULL, 2014, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (16, N'LICHFL', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), NULL, 2018, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (17, N'LICHFL', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), NULL, 2017, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (18, N'LICHFL', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), NULL, 2016, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (19, N'LICHFL', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), NULL, 2015, N'AA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (20, N'LICHFL', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), NULL, 2014, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (21, N'maruti', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), N'INTERNAL', 2018, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (22, N'maruti', N'as per SO', CAST(0x0000A5FF00000000 AS DateTime), CAST(0x0000A76C00000000 AS DateTime), N'INTERNAL', 2017, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (23, N'maruti', N'as per SO', CAST(0x0000A49100000000 AS DateTime), CAST(0x0000A32400000000 AS DateTime), N'INTERNAL', 2016, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (24, N'maruti', N'as per SO', CAST(0x0000A32400000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), N'INTERNAL', 2015, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (25, N'maruti', N'as per SO', CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A04A00000000 AS DateTime), N'EXTERNAL', 2014, N'AAA', N'testid', N'Web')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (26, N'maruti', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), N'EXTERNAL', 2018, N'CBR4', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (27, N'maruti', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), N'EXTERNAL', 2017, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (28, N'maruti', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), N'EXTERNAL', 2016, N'CBR4', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (29, N'maruti', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (30, N'tatapower', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (31, N'RIL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR2', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (32, N'RIL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR2', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (33, N'RIL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR2', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (34, N'RIL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'NA', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (35, N'RIL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'NA', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (36, N'ICICIHFC', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (37, N'ICICIHFC', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR2', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (38, N'ICICIHFC', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (39, N'ICICIHFC', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR2', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (40, N'ICICIHFC', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (41, N'LICHFL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (42, N'LICHFL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (43, N'LICHFL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (44, N'LICHFL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (45, N'LICHFL', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (46, N'Atul Auto', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR5', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (47, N'Atul Auto', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR7', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (48, N'Atul Auto', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR7', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (49, N'Atul Auto', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR6', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (50, N'Atul Auto', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR7', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (51, N'Maruti Suzuki', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (52, N'Maruti Suzuki', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR4', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (53, N'Maruti Suzuki', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR4', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (54, N'Maruti Suzuki', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR3', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (55, N'Maruti Suzuki', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR4', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (56, N'jpmc', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2018, N'CBR5', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (57, N'jpmc', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2017, N'CBR7', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (58, N'jpmc', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2016, N'CBR7', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (59, N'jpmc', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2015, N'CBR6', N'tesid', N'internal')
GO
INSERT [dbo].[Rating] ([Id], [Cust_Id], [particular], [dateFrom], [dateTo], [ratingType], [ratingYear], [ratingValue], [byId], [source]) VALUES (60, N'jpmc', N'as per SO', CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A7B300000000 AS DateTime), NULL, 2014, N'CBR7', N'tesid', N'internal')
GO
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[RestucturingDetail] ON 

GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (1, N'maruti', N'42423432', N'cc', CAST(0x0000AA4400000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime), 5000, CAST(0x0000ABB200000000 AS DateTime), N'M')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (2, N'maruti', N'34234324', N'term', CAST(0x0000AA4400000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime), 543434, CAST(0x0000920300000000 AS DateTime), N'Y')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (3, N'HCC', N'42423432', N'cc', CAST(0x0000AA4400000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime), 5000, CAST(0x0000ABB200000000 AS DateTime), N'M')
GO
INSERT [dbo].[RestucturingDetail] ([Id], [Cust_id], [accountNo], [type], [accountDate], [cutofDate], [sacrifice], [repaymentStartDate], [frequency]) VALUES (4, N'HCC', N'34234324', N'term', CAST(0x0000AA4400000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime), 543434, CAST(0x0000920300000000 AS DateTime), N'Y')
GO
SET IDENTITY_INSERT [dbo].[RestucturingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[RestucturingHeader] ON 

GO
INSERT [dbo].[RestucturingHeader] ([Id], [Cust_Id], [accountRestructured], [accountRescheduled], [idNo], [soApplicationDate], [checkedByCRMD], [pfNo], [followupDate], [accountRegularisedDate], [projectType], [dccoDate], [ExtendedDate], [actualDate]) VALUES (1, N'Maruti', N'yes', N'no', N'1', CAST(0x00009C9900000000 AS DateTime), N'yes', N'pfnotest', CAST(0x00009D6D00000000 AS DateTime), CAST(0x0000AAE200000000 AS DateTime), N'projecttype', CAST(0x0000A88300000000 AS DateTime), CAST(0x00009BAD00000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime))
GO
INSERT [dbo].[RestucturingHeader] ([Id], [Cust_Id], [accountRestructured], [accountRescheduled], [idNo], [soApplicationDate], [checkedByCRMD], [pfNo], [followupDate], [accountRegularisedDate], [projectType], [dccoDate], [ExtendedDate], [actualDate]) VALUES (2, N'HCC', N'no', N'yes', N'2', CAST(0x00009C9900000000 AS DateTime), N'yes', N'phnoHCC', CAST(0x00009D6D00000000 AS DateTime), CAST(0x0000AAE200000000 AS DateTime), N'projecttype', CAST(0x0000A88300000000 AS DateTime), CAST(0x00009BAD00000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RestucturingHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[Security] ON 

GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (1, N'tatapower', N'34343432', N'Primary', 540400, N'Receivables and Inventory', 860, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'70%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (2, N'tatapower', N'2456335', N'Primary', 4044, N'Land and Building', 6000, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (3, N'tatapower', N'3455234', N'Primary', 4044, N'CC', 6000, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (4, N'maruti', N'34343432', N'Primary', 540400, N'Receivables and Inventory', 860, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'70%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (5, N'maruti', N'2456335', N'Primary', 4044, N'Land and Building', 6000, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'30%', N'TataSons', 500)
GO
INSERT [dbo].[Security] ([Id], [Cust_Id], [accountNo], [securityType], [balanceAsOn], [securityDetails], [apportionValue], [correctFlag], [followUpDate], [coverage], [guarantorId], [guarantorNetWorth]) VALUES (6, N'maruti', N'3455234', N'Primary', 4044, N'CC', 6000, N'Yes', CAST(0x0000A74700000000 AS DateTime), N'30%', N'TataSons', 500)
GO
SET IDENTITY_INSERT [dbo].[Security] OFF
GO
SET IDENTITY_INSERT [dbo].[SOC124] ON 

GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (1, N'HCC', N'soourcesystem', CAST(0x0000A86400000000 AS DateTime), N'via', N'appprovalfor', N'yes', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (2, N'HCC', N'soourcesystem1', CAST(0x0000A86400000000 AS DateTime), N'via1', N'appprovalfor1', N'no', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (3, N'HCC', N'soourcesystem2', CAST(0x0000A86400000000 AS DateTime), N'via1', N'appprovalfor2', N'yes', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (4, N'maruti', N'soourcesystem', CAST(0x0000A86400000000 AS DateTime), N'via', N'appprovalfor', N'yes', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (5, N'maruti', N'soourcesystem1', CAST(0x0000A86400000000 AS DateTime), N'via1', N'appprovalfor1', N'no', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
INSERT [dbo].[SOC124] ([Id], [Cust_id], [sourceSystemId], [approvalDate], [via], [approvalFor], [isCompiled], [followUpDate], [compiledDate]) VALUES (6, N'maruti', N'soourcesystem2', CAST(0x0000A86400000000 AS DateTime), N'via1', N'appprovalfor2', N'yes', CAST(0x0000A86500000000 AS DateTime), CAST(0x0000A86600000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SOC124] OFF
GO
INSERT [dbo].[Student] ([StudentID], [Name], [Email], [Class], [EnrollYear], [City], [Country]) VALUES (1, N'Praveen', N'praveejadoun@yahoo.com', N'bsc', N'2011', N'hyderabae', N'india')
GO
INSERT [dbo].[Student] ([StudentID], [Name], [Email], [Class], [EnrollYear], [City], [Country]) VALUES (2, N'afA', N'DF', N'F', N'DF', N'DF', N'F')
GO
SET IDENTITY_INSERT [dbo].[WarningIndicator] ON 

GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (1, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Claims not acknowledged as debt high', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (2, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Concealment of certain vital documents like master agreement, insurance coverage', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (3, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Costing of the project which is in wide variance with standard cost of installation of the project', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (4, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Critical issues highlighted in the stock audit report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (5, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Default in payment to the banks/ sundry debtors and other statutory bodies, etc., bouncing of the high value cheques', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (6, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Delay observed in payment of outstanding dues', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (7, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Disproportionate increase in other current assets.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (8, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Dispute on title of the collateral securities', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (9, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Financing the unit far away from the branch', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (10, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Floating front / associate companies by investing borrowed money', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (11, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Foreign bills remaining outstanding for a long time and tendency for bills to remain overdue', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (12, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent ad hoc sanctions.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (13, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent change in accounting period and/or accounting policies.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (14, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent change in the scope of the project to be undertaken by the borrower', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (15, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent invocation of BGs and devolvement of LCs', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (16, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent request for general purpose loans.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (17, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Funding of the interest by sanctioning additional facilities', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (18, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Funds coming from other banks to liquidate the outstanding loan amount', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (19, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Heavy cash withdrawal in loan accounts.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (20, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'High value RTGS payment to unrelated parties.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (21, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'In merchanting trade, import leg not revealed to the bank', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (22, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Increase in borrowings, despite huge cash and cash equivalents in the borrower’s balance sheet.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (23, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Increase in Fixed Assets, without corresponding increase in turnover (when project is implemented).', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (24, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Invoices devoid of TAN and other details', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (25, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Large number of transactions with inter-connected companies and large outstanding from such companies.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (26, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'LCs issued for local trade / related party transactions', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (27, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Liabilities appearing in ROC search report, not reported by the borrower in its annual report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (28, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Material discrepancies in the annual report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (29, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Movement of an account from one bank to another.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (30, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Non submission of original bills.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (31, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Not routing of sales proceeds through bank', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (32, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Onerous clause in issue of BG/LC/standby letters of credit', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (33, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Poor disclosure of materially adverse information and no qualification by the statutory auditors.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (34, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Raid by Income tax /sales tax/ central excise duty officials', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (35, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Reduction in the stake of promoter / director', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (36, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Request received from the borrower to postpone the inspection of the godown for flimsy reasons', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (37, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Resignation of the key personnel and frequent changes in the management', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (38, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Same collateral charged to a number of lenders', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (39, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant inconsistencies within the annual report (between various sections).', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (40, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant increase in working capital borrowing as percentage of turnover.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (41, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant movements in inventory, disproportionately higher than the growth in turnover.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (42, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant movements in receivables, disproportionately higher than the growth in turnover and/or increase in ageing of the receivables.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (43, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Substantial increase in unbilled revenue year after year.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (44, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Substantial related party transactions.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (45, N'maruti', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Under insured or over insured inventory', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (46, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Claims not acknowledged as debt high', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (47, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Concealment of certain vital documents like master agreement, insurance coverage', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (48, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Costing of the project which is in wide variance with standard cost of installation of the project', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (49, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Critical issues highlighted in the stock audit report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (50, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Default in payment to the banks/ sundry debtors and other statutory bodies, etc., bouncing of the high value cheques', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (51, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Delay observed in payment of outstanding dues', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (52, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Disproportionate increase in other current assets.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (53, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Dispute on title of the collateral securities', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (54, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Financing the unit far away from the branch', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (55, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Floating front / associate companies by investing borrowed money', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (56, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Foreign bills remaining outstanding for a long time and tendency for bills to remain overdue', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (57, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent ad hoc sanctions.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (58, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent change in accounting period and/or accounting policies.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (59, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent change in the scope of the project to be undertaken by the borrower', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (60, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent invocation of BGs and devolvement of LCs', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (61, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Frequent request for general purpose loans.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (62, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Funding of the interest by sanctioning additional facilities', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (63, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Funds coming from other banks to liquidate the outstanding loan amount', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (64, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Heavy cash withdrawal in loan accounts.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (65, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'High value RTGS payment to unrelated parties.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (66, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'In merchanting trade, import leg not revealed to the bank', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (67, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Increase in borrowings, despite huge cash and cash equivalents in the borrower’s balance sheet.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (68, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Increase in Fixed Assets, without corresponding increase in turnover (when project is implemented).', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (69, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Invoices devoid of TAN and other details', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (70, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Large number of transactions with inter-connected companies and large outstanding from such companies.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (71, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'LCs issued for local trade / related party transactions', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (72, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Liabilities appearing in ROC search report, not reported by the borrower in its annual report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (73, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Material discrepancies in the annual report.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (74, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Movement of an account from one bank to another.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (75, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Non submission of original bills.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (76, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Not routing of sales proceeds through bank', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (77, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Onerous clause in issue of BG/LC/standby letters of credit', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (78, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Poor disclosure of materially adverse information and no qualification by the statutory auditors.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (79, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Raid by Income tax /sales tax/ central excise duty officials', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (80, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Reduction in the stake of promoter / director', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (81, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Request received from the borrower to postpone the inspection of the godown for flimsy reasons', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (82, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Resignation of the key personnel and frequent changes in the management', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (83, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Same collateral charged to a number of lenders', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (84, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant inconsistencies within the annual report (between various sections).', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (85, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant increase in working capital borrowing as percentage of turnover.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (86, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant movements in inventory, disproportionately higher than the growth in turnover.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (87, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Significant movements in receivables, disproportionately higher than the growth in turnover and/or increase in ageing of the receivables.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (88, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Substantial increase in unbilled revenue year after year.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (89, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Substantial related party transactions.', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
INSERT [dbo].[WarningIndicator] ([Id], [Cust_Id], [fromDate], [toDate], [asOnDate], [WarningSignal], [irregularities], [observedOn], [observationRemarks], [actionFor], [lastUpdatedOn], [lastUpdatedBy]) VALUES (90, N'HCC', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A908005CF1E8 AS DateTime), N'Under insured or over insured inventory', N'Yes', CAST(0x0000A9D100000000 AS DateTime), N'user ramarks', N'Owners with Risk Association', CAST(0x0000A908005CF1E8 AS DateTime), N'praveen')
GO
SET IDENTITY_INSERT [dbo].[WarningIndicator] OFF
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
