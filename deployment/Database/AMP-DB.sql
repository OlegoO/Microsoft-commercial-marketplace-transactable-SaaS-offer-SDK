/****** Object:  Table [dbo].[ApplicationConfiguration]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Value] [nvarchar](max) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_ApplicationConfiguration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationLog]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionTime] [datetime] NULL,
	[LogDetail] [varchar](4000) NULL,
 CONSTRAINT [PK_ApplicationLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](1000) NULL,
	[Description] [varchar](1000) NULL,
	[InsertDate] [datetime] NULL,
	[TemplateBody] [varchar](max) NULL,
	[Subject] [varchar](1000) NULL,
	[ToRecipients] [varchar](1000) NULL,
	[CC] [varchar](1000) NULL,
	[BCC] [varchar](1000) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KnownUsers]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KnownUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [varchar](50) NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeteredAuditLogs]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeteredAuditLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionId] [int] NULL,
	[RequestJson] [varchar](500) NULL,
	[ResponseJson] [varchar](500) NULL,
	[StatusCode] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[SubscriptionUsageDate] [datetime] NULL,
 CONSTRAINT [PK_MeteredAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeteredDimensions]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeteredDimensions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dimension] [varchar](150) NULL,
	[PlanId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_MeteredDimensions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plans]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[DisplayName] [varchar](100) NULL,
	[IsmeteringSupported] [bit] NULL,
 CONSTRAINT [PK_Plans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionAuditLogs]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionAuditLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionID] [int] NULL,
	[Attribute] [varchar](20) NULL,
	[OldValue] [varchar](50) NULL,
	[NewValue] [varchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [int] NULL,
 CONSTRAINT [PK_SubscriptionAuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionLicenses]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionLicenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseKey] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[SubscriptionID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_SubscriptionLicenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AMPSubscriptionId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[SubscriptionStatus] [varchar](50) NULL,
	[AMPPlanId] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[UserId] [int] NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20-03-2020 12.25.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[FullName] [varchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Subscriptions] ADD  CONSTRAINT [DF_Subscriptions_AMPSubscriptionId]  DEFAULT (newid()) FOR [AMPSubscriptionId]
GO
ALTER TABLE [dbo].[KnownUsers]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[MeteredAuditLogs]  WITH CHECK ADD FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscriptions] ([Id])
GO
ALTER TABLE [dbo].[MeteredDimensions]  WITH CHECK ADD FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plans] ([Id])
GO
ALTER TABLE [dbo].[SubscriptionAuditLogs]  WITH CHECK ADD FOREIGN KEY([SubscriptionID])
REFERENCES [dbo].[Subscriptions] ([Id])
GO
ALTER TABLE [dbo].[SubscriptionLicenses]  WITH CHECK ADD FOREIGN KEY([SubscriptionID])
REFERENCES [dbo].[Subscriptions] ([Id])
GO
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
