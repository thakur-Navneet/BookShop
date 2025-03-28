USE [ShoppingDB2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/19/2025 1:22:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[Discriminator] [nvarchar](max) NOT NULL DEFAULT (N''),
	[Name] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authors]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AuthorImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BlogImage] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.0000000'),
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL DEFAULT (N''),
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[IsAuthorized] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL DEFAULT (N''),
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[ImageFeatured] [nvarchar](max) NULL,
	[ImageFirst] [nvarchar](max) NULL,
	[ImageSecond] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[CoverTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Status] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supports]    Script Date: 3/19/2025 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Supports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250222175438_initLoad', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250222182052_addmodelCategoryandCovertype', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250223170542_addcompanymodel', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250223183146_addmodelAuthor', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250224053411_addmodelProduct', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250225094241_AddApplicationUserModel', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250225160204_addmodelBlog', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250228044922_addmodelShoppingCartOrderHeaderOrderDetailsandCreatedatcolumninBlog', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250301112702_addmodelSupportandCategoryCovertypeUpdate', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250303165056_addmodelContact', N'6.0.36')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250308072721_addstatusinModelShoppingCart', N'6.0.36')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'565dbc7e-802b-4e27-8fb2-366b7bf7498c', N'Employee User', N'EMPLOYEE USER', N'5263cda0-114a-40ff-afb0-ce29cc8d8bd4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'630d8de3-637a-497d-90c2-672387ca92c1', N'Admin', N'ADMIN', N'5fc37a73-7a43-4ca2-b455-02ef18a9caa4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9e2908dc-202d-4104-a208-343c0c5c9894', N'Company User', N'COMPANY USER', N'b5209d39-557d-4355-973f-064e37f0af8d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ec414849-3a29-4b13-a032-d1f2356a7575', N'Individual User', N'INDIVIDUAL USER', N'8c0f4cdf-1c10-46bf-b749-88dfed67b3b5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3419cf6c-6c63-43fa-ae68-f2bcb09f8b66', N'565dbc7e-802b-4e27-8fb2-366b7bf7498c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9d7df86-6496-4851-a4cf-83951281420f', N'565dbc7e-802b-4e27-8fb2-366b7bf7498c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd626c2a5-0fc2-4975-92e1-2dd4475c4125', N'630d8de3-637a-497d-90c2-672387ca92c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f2870f6-c224-4959-8f7e-2af56dddf37d', N'9e2908dc-202d-4104-a208-343c0c5c9894')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be23edeb-c644-479d-a345-8aef9451d736', N'9e2908dc-202d-4104-a208-343c0c5c9894')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'151b4560-8147-4385-a58c-097651e00dca', N'ec414849-3a29-4b13-a032-d1f2356a7575')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b45b914-b277-4cc4-b151-cac2d20c700b', N'ec414849-3a29-4b13-a032-d1f2356a7575')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f7c5ac18-c67e-4fe1-b0f0-b436484017c4', N'ec414849-3a29-4b13-a032-d1f2356a7575')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'151b4560-8147-4385-a58c-097651e00dca', N'Tom@gmail.com', N'TOM@GMAIL.COM', N'Tom@gmail.com', N'TOM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECxtjFohfbxqbjogCXvibUzE+QK89bAKC5OROz+bcexH95ikAELZ3VC3n2ZzrJJwLQ==', N'KBY5J4TE6OIGSUECCF3J4BBVZWL7ECRT', N'74e02692-f190-4192-8566-16739ce5cdd8', N'04567891230', 0, 0, CAST(N'2075-03-01T11:15:35.6490599+05:30' AS DateTimeOffset), 1, 0, N'Noida', NULL, N'ApplicationUser', N'Tom Holland', N'789465', N'UP', N'Sector-22')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'3419cf6c-6c63-43fa-ae68-f2bcb09f8b66', N'pepper@gm.com', N'PEPPER@GM.COM', N'pepper@gm.com', N'PEPPER@GM.COM', 0, N'AQAAAAEAACcQAAAAED7OyCMO4k0L9IpWMZEbFniAG6+skCw3FmfSywPE3JVyLK9EB6/bZ4KCbKfevYv0XQ==', N'SPZWVNHQJZQZ55IJVPG3ZW5DSVFGZXHX', N'f9f3cc4d-14e0-4386-93ef-d25867457a90', N'04567891230', 0, 0, CAST(N'2025-02-26T11:58:14.4835829+05:30' AS DateTimeOffset), 1, 0, N'Chandigarh', NULL, N'ApplicationUser', N'Pepper Pots', N'789465', N'Haryana', N'Sector-43')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'4b45b914-b277-4cc4-b151-cac2d20c700b', N'Bruce@gmail.com', N'BRUCE@GMAIL.COM', N'Bruce@gmail.com', N'BRUCE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOUaFZAZOUVBqwSa4drnOiJ89cBYM1/aPAEdjEWRSBnyBy9dhv2ObnQKuxbyu/e8JQ==', N'JOT4OKYKIW5EFIUI2KI273PQR7REAV56', N'e7a1eebf-0d8d-42d9-b33d-5c61acdbe0f1', N'8945125620', 0, 0, NULL, 1, 0, N'Mumbai', NULL, N'ApplicationUser', N'Bruce Banner', N'456132', N'Maharastra', N'123, CST')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'6f2870f6-c224-4959-8f7e-2af56dddf37d', N'Tony72@gm.com', N'TONY72@GM.COM', N'Tony72@gm.com', N'TONY72@GM.COM', 0, N'AQAAAAEAACcQAAAAEHMQNDnlkW5AENHValCEtCHIDuDsMjqTZA3tSLo9x/Kv3tHBCP9K+lPlG7jmCEXhKg==', N'2WYY72V6OPBMFZCCFIBU7CPDQSQWCNQ3', N'a2de1fa8-e1d9-4cf9-8f66-4eaad899778f', N'04567891230', 0, 0, CAST(N'2025-03-02T21:20:14.0429018+05:30' AS DateTimeOffset), 1, 0, N'Sector-23', 3, N'ApplicationUser', N'Tony Stark', N'789465', N'Haryana', N'Sector-43')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'be23edeb-c644-479d-a345-8aef9451d736', N'Chris32@gmail.com', N'CHRIS32@GMAIL.COM', N'Chris32@gmail.com', N'CHRIS32@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPz7vpus4kJxtBbX5ku99VVctuJR4hQf1jwpMpsK3XafbQmmCN0dViQHf9Swf7DFHA==', N'G2RDGAIO66J3ZEAE7BUIYI6FGOMKQQKY', N'9fce87f3-7168-49bd-a0db-bcb6a5701204', N'04567891230', 0, 0, CAST(N'2075-03-02T21:20:08.0828522+05:30' AS DateTimeOffset), 1, 0, N'Newark', 2, N'ApplicationUser', N'Chris Hemsworth', N'789465', N'Scotland', N'Sector-22')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'd626c2a5-0fc2-4975-92e1-2dd4475c4125', N'Navneet@gmail.com', N'NAVNEET@GMAIL.COM', N'Navneet@gmail.com', N'NAVNEET@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELU8TxIDqFZR6vx7P/2pHaEm81kmKPx8buYWHx6C+5wRKwkv4r0EzsmHdB93QgoV9Q==', N'D4IDQRYC4C7Y6ZVBR5L3LH2YMANZNSAW', N'45402000-1458-4854-aad4-d38686fd5057', N'9478561230', 0, 0, NULL, 1, 0, N'Chandigarh', NULL, N'ApplicationUser', N'Navneet Thakur', N'160022', N'Chandigarh', N'Sector-22')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'e9d7df86-6496-4851-a4cf-83951281420f', N'mark@gmail.com', N'MARK@GMAIL.COM', N'mark@gmail.com', N'MARK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMAPBcO/MwvQ9K7oAtlAdusmRSLKBnRw6etjS/hMF66Uxex76dGpZoYhVkrZB/R5mg==', N'23563VAGWQU726TF5HCYP7D44UDYIB2D', N'0035c799-8bcf-4bc3-9420-fe0713760cdb', N'9654566822', 0, 0, CAST(N'2025-03-08T12:38:56.6357342+05:30' AS DateTimeOffset), 1, 0, N'Chandigarh', NULL, N'ApplicationUser', N'Mark Ruffalo', N'789789', N'Haryana', N'Sector-22')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'f7c5ac18-c67e-4fe1-b0f0-b436484017c4', N'Tony2e@gm.com', N'TONY2E@GM.COM', N'Tony2e@gm.com', N'TONY2E@GM.COM', 0, N'AQAAAAEAACcQAAAAEI1V0m+VPq0YFQ0FNHLHJlBNf6lABS7dMQXA+7Uhvb7BrMHMJtTS6/rjQ8/wpvu1QA==', N'3F6W3VXTOOZSDJTQDEZMPT6BIMYSTGGO', N'c3a13a0d-9afb-45bd-8ca1-a8cf13c9a3ad', N'04567891230', 0, 0, CAST(N'2025-03-01T11:15:43.6412760+05:30' AS DateTimeOffset), 1, 0, N'Sector-23', NULL, N'ApplicationUser', N'Tony Stark', N'789465', N'Haryana', N'Sector-43')
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Title], [Description], [AuthorImage]) VALUES (2, N'Tom Holland', N'Tom Holland is a passionate writer with a love for storytelling. With a knack for crafting compelling narratives, he brings characters and worlds to life through his words. When he''s not writing, John enjoys exploring nature, reading books, and delving into the world of photography. His work reflects a deep curiosity for human emotions and experiences.', N'\Images\Authorss\936069ac-4dea-4a8e-9fdf-da3cdc3de7bf.jpg')
INSERT [dbo].[Authors] ([Id], [Title], [Description], [AuthorImage]) VALUES (3, N'Maria Hill', N'Maria Hill is a creative writer with a passion for exploring complex themes through fiction. Her work often delves into the intricacies of relationships and personal growth. Outside of writing, Jane enjoys traveling, experimenting with new recipes, and practicing yoga. She draws inspiration from her diverse experiences and aims to inspire readers with her thought-provoking stories.', N'\Images\Authorss\9448e9a7-2aba-4875-838e-f006ceed28c6.jpg')
INSERT [dbo].[Authors] ([Id], [Title], [Description], [AuthorImage]) VALUES (4, N'Alex Carter', N'Alex Carter is a sci-fi author known for his innovative storytelling and imaginative world-building. His novels explore futuristic technologies, space exploration, and the complexities of artificial intelligence. With a background in science and a love for speculative fiction, Alex creates thrilling narratives that push the boundaries of possibility. When not writing, he enjoys stargazing and keeping up with the latest tech advancements.', N'\Images\Authorss\6a0b5dd4-c108-41ab-b04f-390df805cc64.jpg')
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (2, N'Unveiling Literary Gems: Exploring the World of Books', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\420e04df-7e55-4194-a1c4-b74ebdb82e40.jpg', CAST(N'2025-03-03 23:44:06.5418532' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (3, N'Behind the Scenes with Author Victoria Aveyard', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\815ee7df-f462-4df1-a717-26d8e5c6491a.jpg', CAST(N'2025-03-06 23:58:35.0000000' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (4, N'Oprah’s Latest Book Club Pick is Being Adapted for TV!', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\a111088c-061d-46ba-abe0-057a81d6dc4f.jpg', CAST(N'2025-03-24 23:58:38.0000000' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (5, N'Top 10 Books to Make It a Great Year', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\7ccad6be-8acb-4cea-bd13-63bd54d220d1.jpg', CAST(N'2025-03-01 23:58:50.0000000' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (6, N'Dive into the Enchanting Universe of Stories', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\280a89a4-8c1f-408d-8f05-9ed31360b3fe.jpg', CAST(N'2025-03-11 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [BlogImage], [CreatedAt]) VALUES (7, N'A Journey through the Land of Imagination', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'\Images\Blogss\c92ab8e0-747e-48a3-ae9f-2657c20eb146.jpg', CAST(N'2025-03-23 23:58:48.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Comedy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Horror')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Novels')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Programming')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Fiction')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorized]) VALUES (2, N'Alpha Books', N'Sector-43', N'Gurugram', N'Haryana', N'789465', N'04567891230', 0)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorized]) VALUES (3, N'Beta Books', N'Sector-8', N'Chandigarh', N'Punjab', N'789465', N'07894561238', 1)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorized]) VALUES (4, N'Tony Stark', N'Sector-4', N'Noida', N'UP', N'789465', N'8974561230', 0)
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (1, N'Shubham Sohal', N'Sohal@gmail.com', N'alpha test', N'this is a test message')
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (2, N'Navneet', N'Navneet@gmail.com', N'alpha test 2', N'this is a test 2 message')
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (3, N'Tony Stark', N'Tony2@gmail.com', N'The alpha test', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Subject], [Message]) VALUES (4, N'alpha test', N'alpha2gmail.com', N'test1 in api', N'this is the first test conducted in api through swagger')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'Hard Cover')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (3, N'Soft Cover')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (4, N'Paper Cover')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (3, 2, 3, 2, 787)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (4, 2, 4, 2, 780)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (5, 2, 2, 1, 980)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (6, 3, 2, 1, 980)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (7, 4, 3, 52, 400)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (8, 5, 4, 1, 780)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (9, 6, 4, 12, 780)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (10, 7, 3, 3, 787)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (11, 7, 5, 1, 960)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (2, N'f7c5ac18-c67e-4fe1-b0f0-b436484017c4', CAST(N'2025-03-01 14:45:15.7052143' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4114, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3Qxm8cGahSrlfipJ146Hhg1Y', N'Tony Stark', N'Sector-43', N'Chandigarh', N'Punjab', N'160043', N'09874561203')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (3, N'f7c5ac18-c67e-4fe1-b0f0-b436484017c4', CAST(N'2025-03-02 21:17:53.8474335' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 980, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3QyEk9GahSrlfipJ0gJdnNNk', N'Pepper Potts', N'Sector-3', N'Noida', N'UP', N'789123', N'09874556322')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (4, N'6f2870f6-c224-4959-8f7e-2af56dddf37d', CAST(N'2025-03-02 21:21:40.0818090' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 20800, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3QyEnnGahSrlfipJ0EKftxXa', N'Bruce Banner', N'Sector-78', N'Gurugram', N'Haryana', N'789465', N'04567891230')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (5, N'6f2870f6-c224-4959-8f7e-2af56dddf37d', CAST(N'2025-03-03 00:09:45.7729724' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 780, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3QyHQSGahSrlfipJ11MYi2Vn', N'Tom Hollaand', N'3456, Himalaya Road', N'Mohali', N'Punjab', N'784966', N'7831060895')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (6, N'e9d7df86-6496-4851-a4cf-83951281420f', CAST(N'2025-03-04 23:04:21.3429505' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9360, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3QyzMGGahSrlfipJ0iXwdZ55', N'Mark Ruffalo', N'Sector-22', N'Chandigarh', N'Haryana', N'789789', N'9654566822')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (7, N'4b45b914-b277-4cc4-b151-cac2d20c700b', CAST(N'2025-03-10 21:17:27.1822120' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3321, NULL, NULL, N'Approved', N'Approved', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_3R18Y8GahSrlfipJ1hDqpCyZ', N'Bruce Banner', N'123, CST', N'Mumbai', N'Maharastra', N'456132', N'8945125620')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [AuthorId], [ISBN], [ListPrice], [Price], [Price50], [Price100], [ImageFeatured], [ImageFirst], [ImageSecond], [CategoryId], [CoverTypeId]) VALUES (2, N'C# Introduction', N'<p class="a-spacing-none a-text-normal"><span id="productTitle" class="a-size-large celwidget" data-csa-c-id="qm3mh5-4949s7-gnud5y-2h85fb" data-cel-widget="productTitle">Head First C#: A Learner''s Guide to Real-World Programming with C# and .NET Core, Fifth Edition</span></p>', 2, N'67ir67', 950, 980, 900, 850, N'\Images\Productss\1c1647bf-298e-47fe-9241-e416f9cc7d77_0.jpg', N'\Images\Productss\1c1647bf-298e-47fe-9241-e416f9cc7d77_1.jpg', N'\Images\Productss\1c1647bf-298e-47fe-9241-e416f9cc7d77_2.jpg', 5, 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [AuthorId], [ISBN], [ListPrice], [Price], [Price50], [Price100], [ImageFeatured], [ImageFirst], [ImageSecond], [CategoryId], [CoverTypeId]) VALUES (3, N'The Theory of Everything', N'<p>Seven lectures by the brilliant theoretical physicist have been compiled into this book to try to explain to the common man, the complex problems of mathematics and the question that has been gripped everyone all for centuries, the theory of existence. Undeniably intelligent, witty and childlike in his explanations, the narrator describes every detail about the beginning of the universe.</p>', 3, N'67ir67', 456, 787, 400, 390, N'\Images\Productss\62cd05d5-eeb5-46d9-90b7-d7c94d818706_0.jpg', N'\Images\Productss\62cd05d5-eeb5-46d9-90b7-d7c94d818706_1.jpg', N'\Images\Productss\62cd05d5-eeb5-46d9-90b7-d7c94d818706_2.jpg', 4, 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [AuthorId], [ISBN], [ListPrice], [Price], [Price50], [Price100], [ImageFeatured], [ImageFirst], [ImageSecond], [CategoryId], [CoverTypeId]) VALUES (4, N'Days at the Morisaki Bookshop', N'<p>Twenty-five-year-old Takako has never liked reading, although the Morisaki bookshop has been in her family for three generations. It is the pride and joy of her uncle Satoru, who has devoted his life to the bookshop since his wife Momoko left him five years earlier.</p>', 4, N'qwe123', 750, 780, 700, 600, N'\Images\Productss\86007538-516e-44cc-8dfb-bcf5d8516106_0.jpg', N'\Images\Productss\86007538-516e-44cc-8dfb-bcf5d8516106_1.jpg', N'\Images\Productss\86007538-516e-44cc-8dfb-bcf5d8516106_2.jpg', 6, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [AuthorId], [ISBN], [ListPrice], [Price], [Price50], [Price100], [ImageFeatured], [ImageFirst], [ImageSecond], [CategoryId], [CoverTypeId]) VALUES (5, N'Ghosts of The Silent Hills', N'<p>The dead do not rest till they get what they want. You have arrived in the hills. In here, you are surrounded by dense, menacing forests, enveloped in a deadly silence... You never know what lurks here in the Cold, dark night. Do not walk alone after sunset in the hills.</p>', 3, N'p0807', 900, 960, 800, 600, N'\Images\Productss\c26cfaed-8b98-4191-bee9-0593da2eccf4_0.jpg', N'\Images\Productss\c26cfaed-8b98-4191-bee9-0593da2eccf4_1.jpg', N'\Images\Productss\c26cfaed-8b98-4191-bee9-0593da2eccf4_2.jpg', 3, 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [AuthorId], [ISBN], [ListPrice], [Price], [Price50], [Price100], [ImageFeatured], [ImageFirst], [ImageSecond], [CategoryId], [CoverTypeId]) VALUES (6, N'Three Men In A Boat', N'<p>Embark on a side-splitting journey along the River Thames with Three Men In A Boat by Jerome K. Jerome. Join three bumbling friends as they navigate mishaps, comedic situations, and eccentric characters in this timeless and uproarious classic.</p>', 4, N'qwe123', 540, 560, 500, 400, N'\Images\Productss\826129f4-7008-4946-8496-969933e2da44_0.jpg', N'\Images\Productss\826129f4-7008-4946-8496-969933e2da44_1.jpg', N'\Images\Productss\826129f4-7008-4946-8496-969933e2da44_2.jpg', 2, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count], [Status]) VALUES (15, N'3419cf6c-6c63-43fa-ae68-f2bcb09f8b66', 6, 4, 2)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count], [Status]) VALUES (16, N'3419cf6c-6c63-43fa-ae68-f2bcb09f8b66', 4, 1, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count], [Status]) VALUES (18, N'd626c2a5-0fc2-4975-92e1-2dd4475c4125', 2, 1, 0)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
SET IDENTITY_INSERT [dbo].[Supports] ON 

INSERT [dbo].[Supports] ([Id], [Question], [Answer]) VALUES (2, N'When do I receive my order?', N'When placing the order, a day of shipment is indicated. After the order has been placed, the same delivery time will also be stated on the order confirmation. It is therefore never possible that during the order, the shipping day on the website, is different than on the order confirmation.')
INSERT [dbo].[Supports] ([Id], [Question], [Answer]) VALUES (3, N'How can I cancel it?', N'If the order has a longer delivery time than you had previously seen, it is of course possible to cancel (a part of) the order. For this you can contact our customer service. They will cancel the order for you. The purchase amount will be back on your bank account within two working days. When an order has already been shipped, it can no longer be cancelled.')
INSERT [dbo].[Supports] ([Id], [Question], [Answer]) VALUES (4, N'When will I receive the invoice for my order?', N'When you have paid for the order, you will not automatically receive an invoice for your order. If you wish to receive an invoice, this can be done in two ways.The first way is through your account at our store. When you log in to your account you can see your orders and download the invoice.')
SET IDENTITY_INSERT [dbo].[Supports] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Authors_AuthorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CoverTypes_CoverTypeId] FOREIGN KEY([CoverTypeId])
REFERENCES [dbo].[CoverTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CoverTypes_CoverTypeId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
