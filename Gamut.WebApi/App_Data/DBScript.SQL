USE [gamutdatabase]
GO
/****** Object:  Table [dbo].[AccountDetails]    Script Date: 23-06-2018 15:54:32 ******/
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
	[accountType] [varchar](50) NULL,
	[sanctionedLimit] [float] NULL,
	[undisbursed] [float] NULL,
	[balance] [float] NULL,
	[arrears] [float] NULL,
	[roi] [float] NULL,
	[period] [varchar](50) NULL,
	[cashMargin] [float] NULL,
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
/****** Object:  Table [dbo].[Customer]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[FinancialResultDetails]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[FinancialResultHeader]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[FinancialResultType]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[General]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[GeneralExposure]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[GeneralGurantor]    Script Date: 23-06-2018 15:54:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GeneralGurantor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Id] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[Interest]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[LookUp]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[RestucturingDetail]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[RestucturingHeader]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[Security]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[SOC124]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 23-06-2018 15:54:34 ******/
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
/****** Object:  Table [dbo].[WarningIndicator]    Script Date: 23-06-2018 15:54:34 ******/
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
