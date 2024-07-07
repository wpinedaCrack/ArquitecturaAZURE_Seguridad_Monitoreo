USE [booking-database-01]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 7/07/2024 6:38:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[UserId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/07/2024 6:38:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[DocumentNumber] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/07/2024 6:38:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [FullName], [DocumentNumber]) VALUES (1, N'luis antonio pineda', N'4210977')
INSERT [dbo].[Customer] ([CustomerId], [FullName], [DocumentNumber]) VALUES (2, N'sanuel pineda', N'23433434')
INSERT [dbo].[Customer] ([CustomerId], [FullName], [DocumentNumber]) VALUES (3, N'wilbert antonio pineda', N'71854698')
INSERT [dbo].[Customer] ([CustomerId], [FullName], [DocumentNumber]) VALUES (4, N'luis hernan pineda', N'1232434535')
INSERT [dbo].[Customer] ([CustomerId], [FullName], [DocumentNumber]) VALUES (5, N'luis A Camargo', N'56464646')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (1, N'John', N'Doe', N'johndoe', N'password123')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (2, N'paty', N'saenz', N'psaenz', N'password124')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (3, N'samuel', N'pineda', N'spineda', N'password125')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (4, N'carlos', N'camargo', N'ccamargo', N'password125')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (5, N'juan', N'lopez', N'jlopez', N'password126')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [UserName], [Password]) VALUES (6, N'Jorge', N'ochoa', N'Jochoa', N'password127')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
