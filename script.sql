USE [projectrentalcar]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 12/20/2021 10:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Car_Model] [nvarchar](20) NOT NULL,
	[Car_Type] [nvarchar](20) NOT NULL,
	[Car_Color] [nchar](10) NOT NULL,
	[Car_Price] [float] NOT NULL,
	[Car_Id] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/20/2021 10:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [nvarchar](5) NOT NULL,
	[Customer_Name] [nvarchar](80) NOT NULL,
	[Customer_Address] [nvarchar](50) NOT NULL,
	[Customer_NID] [nvarchar](10) NOT NULL,
	[Customer_License] [nvarchar](50) NOT NULL,
	[Contact_Number] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/20/2021 10:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_Id] [nvarchar](5) NOT NULL,
	[Employee_Name] [nvarchar](80) NOT NULL,
	[Employee_Address] [nvarchar](50) NOT NULL,
	[Employee_NID] [nchar](10) NOT NULL,
	[Employee_Salary] [float] NOT NULL,
	[Joining_Date] [date] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rental]    Script Date: 12/20/2021 10:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[Id] [int] NOT NULL,
	[Car_ID] [nvarchar](10) NOT NULL,
	[Customer_Id] [nvarchar](5) NOT NULL,
	[Customer_Name] [nvarchar](80) NOT NULL,
	[Rental_Fee] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Due_Date] [date] NOT NULL,
	[Total_Fee] [int] NOT NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userInfo]    Script Date: 12/20/2021 10:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userInfo](
	[id] [nvarchar](10) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[role] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_userInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Car] ([Car_Model], [Car_Type], [Car_Color], [Car_Price], [Car_Id]) VALUES (N'HIACE', N'MicroBus', N'Red       ', 12000, N'A0-0231')
INSERT [dbo].[Car] ([Car_Model], [Car_Type], [Car_Color], [Car_Price], [Car_Id]) VALUES (N'STARLIT', N'Private', N'Pearl     ', 5000, N'A0-1233')
INSERT [dbo].[Car] ([Car_Model], [Car_Type], [Car_Color], [Car_Price], [Car_Id]) VALUES (N'PREMIO', N'Private', N'Red       ', 8000, N'A0-2131')
INSERT [dbo].[Car] ([Car_Model], [Car_Type], [Car_Color], [Car_Price], [Car_Id]) VALUES (N'AXIO', N'Private', N'white     ', 7500, N'A0-5645')
INSERT [dbo].[Car] ([Car_Model], [Car_Type], [Car_Color], [Car_Price], [Car_Id]) VALUES (N'NOAH', N'MicroBus', N'Gray      ', 10000, N'A0-9001')
INSERT [dbo].[Customer] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_NID], [Customer_License], [Contact_Number]) VALUES (N'C-001', N'Khalid', N'House-23,Road-2,Block-G,Baridhara,Dhaka1212', N'1231230402', N'A2CJS9212231328', N'01932873272')
INSERT [dbo].[Customer] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_NID], [Customer_License], [Contact_Number]) VALUES (N'C-002', N'Sakib', N'House-12,Road-4,Block-D,Badda Dhaka1212', N'1562329223', N'CBG3921721H9901', N'01672382323')
INSERT [dbo].[Customer] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_NID], [Customer_License], [Contact_Number]) VALUES (N'C-003', N'Nihal', N'House-04,Road-1,Block-A,Badda Dhaka-1212', N'2393924312', N'EHS0124276D1032', N'01712323202')
INSERT [dbo].[Customer] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_NID], [Customer_License], [Contact_Number]) VALUES (N'C-004', N'Alif', N'House-34,Road-3,Block-F, Badda Dhaka -1212', N'3523423412', N'AJSI12312421', N'01988263782')
INSERT [dbo].[Employee] ([Employee_Id], [Employee_Name], [Employee_Address], [Employee_NID], [Employee_Salary], [Joining_Date]) VALUES (N'U-001', N'Sharif', N'House-35,Road-3,Block-C,Badda Dhaka-1212', N'1239419312', 25000, CAST(N'2016-02-01' AS Date))
INSERT [dbo].[Employee] ([Employee_Id], [Employee_Name], [Employee_Address], [Employee_NID], [Employee_Salary], [Joining_Date]) VALUES (N'U-002', N'Hasan', N'House-09,Road-5,Block-D,Badda Dhaka-1212', N'1472942012', 25000, CAST(N'2017-01-10' AS Date))
INSERT [dbo].[Employee] ([Employee_Id], [Employee_Name], [Employee_Address], [Employee_NID], [Employee_Salary], [Joining_Date]) VALUES (N'U-003', N'Asif', N'House-25,Road-8,Block-D,Vatara Dhaka-1213', N'1401830433', 25000, CAST(N'2017-05-14' AS Date))
INSERT [dbo].[Rental] ([Id], [Car_ID], [Customer_Id], [Customer_Name], [Rental_Fee], [Date], [Due_Date], [Total_Fee]) VALUES (1, N'A0-0231', N'C-001', N'Khalid', 123, CAST(N'2021-12-19' AS Date), CAST(N'2021-12-19' AS Date), 1000)
INSERT [dbo].[Rental] ([Id], [Car_ID], [Customer_Id], [Customer_Name], [Rental_Fee], [Date], [Due_Date], [Total_Fee]) VALUES (2, N'A0-1233', N'C-002', N'Sakib', 250, CAST(N'2021-12-20' AS Date), CAST(N'2021-12-22' AS Date), 500)
INSERT [dbo].[userInfo] ([id], [password], [role]) VALUES (N'A-001', N'123', N'admin')
INSERT [dbo].[userInfo] ([id], [password], [role]) VALUES (N'U-001', N'234', N'employee')
INSERT [dbo].[userInfo] ([id], [password], [role]) VALUES (N'U-002', N'245', N'employee')
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD FOREIGN KEY([Car_ID])
REFERENCES [dbo].[Car] ([Car_Id])
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
