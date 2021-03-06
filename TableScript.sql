USE [Tacdev_db_olt]
GO
/****** Object:  Table [dbo].[AdminMst]    Script Date: 2/13/2021 2:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMst](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_AdminMst] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookMst](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[Detail] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Publication] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Quantities] [int] NULL,
	[AvailableQnt] [int] NULL,
	[RentQnt] [int] NULL,
	[Image] [nvarchar](1000) NULL,
	[BookPDF] [nvarchar](1000) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_BookMst] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchMst](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NULL,
 CONSTRAINT [PK_BranchMst] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PenaltyMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PenaltyMst](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[SID] [int] NULL,
	[BookName] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Panalty] [float] NULL,
	[Detail] [nvarchar](500) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_PenaltyMst] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicationMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicationMst](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[Publication] [nvarchar](100) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_PublicationMst] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentMst](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NULL,
	[SID] [int] NULL,
	[Days] [int] NULL,
	[IssueDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_RentMst] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentMst]    Script Date: 2/13/2021 2:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentMst](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[BranchName] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Gender] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Image] [nvarchar](500) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_StudentMst] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminMst] ON 

INSERT [dbo].[AdminMst] ([AID], [Name], [UserName], [Password], [EntryDate]) VALUES (1, N'Shiva', N'siva', N'Msiva792@', CAST(N'2021-02-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AdminMst] OFF
GO
SET IDENTITY_INSERT [dbo].[BookMst] ON 

INSERT [dbo].[BookMst] ([BookID], [BookName], [Author], [Detail], [Price], [Publication], [Branch], [Quantities], [AvailableQnt], [RentQnt], [Image], [BookPDF], [EntryDate]) VALUES (1, N'ASP.Net', N'Abdul', N'oops concdepts,asp.net programming', 2500, N'Abdul Prabhakar', N'IT', 10, 9, 1, N'~/Book/asp.jpg', N'', CAST(N'2021-02-13T07:24:45.407' AS DateTime))
INSERT [dbo].[BookMst] ([BookID], [BookName], [Author], [Detail], [Price], [Publication], [Branch], [Quantities], [AvailableQnt], [RentQnt], [Image], [BookPDF], [EntryDate]) VALUES (2, N'Tamil', N'T.K', N'tamil books', 200, N'Technical', N'Civil', 10, 9, 1, N'~/Book/home1.jpg', N'', CAST(N'2021-02-13T08:34:48.783' AS DateTime))
INSERT [dbo].[BookMst] ([BookID], [BookName], [Author], [Detail], [Price], [Publication], [Branch], [Quantities], [AvailableQnt], [RentQnt], [Image], [BookPDF], [EntryDate]) VALUES (3, N'Science', N'M.K', N'science details', 100, N'Abdul Prabhakar', N'Civil', 5, 5, 0, N'~/Book/aspmvc.jpg', N'', CAST(N'2021-02-13T08:35:56.600' AS DateTime))
SET IDENTITY_INSERT [dbo].[BookMst] OFF
GO
SET IDENTITY_INSERT [dbo].[BranchMst] ON 

INSERT [dbo].[BranchMst] ([BranchID], [BranchName]) VALUES (1, N'IT')
INSERT [dbo].[BranchMst] ([BranchID], [BranchName]) VALUES (2, N'Civil')
SET IDENTITY_INSERT [dbo].[BranchMst] OFF
GO
SET IDENTITY_INSERT [dbo].[PublicationMst] ON 

INSERT [dbo].[PublicationMst] ([PID], [Publication], [EntryDate]) VALUES (1, N'Technical', CAST(N'2021-02-13T07:22:58.090' AS DateTime))
INSERT [dbo].[PublicationMst] ([PID], [Publication], [EntryDate]) VALUES (2, N'Abdul Prabhakar', CAST(N'2021-02-13T07:23:10.140' AS DateTime))
SET IDENTITY_INSERT [dbo].[PublicationMst] OFF
GO
SET IDENTITY_INSERT [dbo].[RentMst] ON 

INSERT [dbo].[RentMst] ([RID], [BookName], [SID], [Days], [IssueDate], [ReturnDate], [Status]) VALUES (1, N'ASP.Net', 1, 10, CAST(N'2021-02-13T07:31:21.773' AS DateTime), NULL, 0)
INSERT [dbo].[RentMst] ([RID], [BookName], [SID], [Days], [IssueDate], [ReturnDate], [Status]) VALUES (2, N'Tamil', 1, 5, CAST(N'2021-02-13T08:54:24.633' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[RentMst] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentMst] ON 

INSERT [dbo].[StudentMst] ([SID], [StudentName], [BranchName], [Mobile], [Address], [City], [Pincode], [DOB], [Gender], [Email], [Password], [Image], [EntryDate]) VALUES (1, N'Kumar', N'IT', N'7708839400', N'Kottaram', N'Kanyakumari', N'629703', CAST(N'1992-07-24T00:00:00.000' AS DateTime), N'Male', N'msiva792@gmail.com', N'Msiva792@', N'~/img/download.jpg', CAST(N'2021-02-13T07:20:40.850' AS DateTime))
INSERT [dbo].[StudentMst] ([SID], [StudentName], [BranchName], [Mobile], [Address], [City], [Pincode], [DOB], [Gender], [Email], [Password], [Image], [EntryDate]) VALUES (2, N'Senthil', N'Civil', N'7708839400', N'Kottaram', N'Kanyakumari', N'629703', CAST(N'1989-02-06T00:00:00.000' AS DateTime), N'Male', N'senthil792@gmail.com', N'student@123', N'~/img/images (2).jpg', CAST(N'2021-02-13T08:48:35.490' AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentMst] OFF
GO
