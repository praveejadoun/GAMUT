USE [gamutdatabase]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 31-05-2018 09:52:53 ******/
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
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[General]    Script Date: 31-05-2018 09:52:56 ******/
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
/****** Object:  Table [dbo].[LookUp]    Script Date: 31-05-2018 09:52:56 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 31-05-2018 09:52:56 ******/
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
