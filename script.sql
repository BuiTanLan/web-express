USE [master]
GO
/****** Object:  Database [web]    Script Date: 16/11/2021 20:46:51 ******/
CREATE DATABASE [web]
 
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [int] NOT NULL,
	[FullName] [varchar](255) NULL,
	[UserName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[type] [int] NULL,
	[gender] [varchar](255) NULL,
	[dob] [date] NULL,
	[image] [varchar](255) NULL,
	[describe] [varchar](255) NULL,
	[level] [varchar](255) NULL,
	[email] [varchar](255) NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Category_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[described] [varchar](255) NOT NULL,
	[rating] [int] NOT NULL,
	[image] [varchar](255) NOT NULL,
	[idroute] [int] NOT NULL,
	[price] [float] NOT NULL,
	[type] [int] NOT NULL,
	[idTeacher] [int] NOT NULL,
	[idCategory] [int] NOT NULL,
	[dateCourse] [date] NULL,
	[status] [int] NULL,
	[viewCount] [int] NOT NULL,
 CONSTRAINT [PK_Course_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseOrder]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseOrder](
	[Id] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[totalPrice] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[orderDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CourseOrder_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] NOT NULL,
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingCourse]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingCourse](
	[Id] [int] NOT NULL,
	[courseId] [int] NOT NULL,
	[rating] [float] NOT NULL,
	[userId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[route]    Script Date: 16/11/2021 20:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[route](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[image] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (1, N'Phạm Ðình Long', NULL, NULL, NULL, NULL, 2, NULL, NULL, N'long.jpg', N'Lậpp trình viên angular', N'Senior', NULL)
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (2, N'Bùi Tấn Lân', NULL, NULL, NULL, NULL, 2, NULL, NULL, N'lan.jpg', N'Lậpp trình viên dotnet', N'Master', NULL)
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (3, N'Phan Cảnh Lộc', NULL, NULL, NULL, NULL, 2, NULL, NULL, N'loc.jpg', N'Lậpp trình viên React', N'Master google', NULL)
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (4, N'Nguy?n Hoàng Huy', NULL, NULL, NULL, NULL, 2, NULL, NULL, N'huy.jpg', N'Lậpp trình viên nodejs', N'Senior 1', NULL)
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (6, N'pham long', N'long', N'$2a$10$iq4z6J1G318f4inzQuP5YOmh2w9zMBVPyHI/gAIbT2TTEJJBJZVjG', N'12 Hai Ba Trung', N'0123456', 1, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'senior 2', N'pdlong578@gmail.com')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (7, N'long pham123', N'long123', N'$2a$10$LIwNbOH7s8xHOiaDKAV2UeJcEo3RmIUoM/GamhcaiJZhuWsN8r8la', N'2 Hai Ba Trung', N'0258', 1, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'senior 2', N'test@gmail.com')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (8, N'pham long', N'longpham', N'$2a$10$GXNRrkOBHF0CZRIOcL1eSupVN6dggzZw4Bl7UpEh4Zqz5RJKAZ.r2', N'jkdscb', N'0123456', 2, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'senior 2', N'phamdinhlong1611999@gmail.com')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (9, N'pham dinh long', N'longpham123456', N'$2a$10$Pppec.AU0YTGPOQusRoL2OUMy3w0RNItZh6ehkzTaZaHFNB0U3o1C', N'1 Luy ban bich', N'123478', 1, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'sennior3', N'1712578@student.hcmus.edu.vn')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (10, N'Pham khanh', N'khanh', N'$2a$10$6FAhbDRypUc1MZf3Fk8wFuv7TGBzDc144lSbSewrfOqb/Ap2b4mOS', N'1 Luy ban bich', N'5155', 1, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'sennior3', N'khanh123@gmail.com')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (11, N'Phan thi thanh ngan', N'ngan', N'$2a$10$9NT48rHzYtpiglRc5LnJReXYDcv5kSYZxofKgQD9XD/lRfd6GOoWi', N'12 nguyen thai hoc', N'0112233', 2, N'2', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'senior 2', N'grap@gmail.com')
INSERT [dbo].[AppUser] ([Id], [FullName], [UserName], [Password], [address], [phone], [type], [gender], [dob], [image], [describe], [level], [email]) VALUES (12, N'pham thi thao', N'vi', N'$2a$10$fAXXnSBOq93paP23UcIA5eBP3wx5x9tr3ppFvfqmvnGz6HNQi4Fku', N'12 Hai Ba Trung', N'0123456', 1, N'1', NULL, N'hinh.jpg', N'cuu sinh vien khoa hoc tu nhien', N'senior 2', N'grap@gmail.com')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Lậpp trình web')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Lậpp trình mobile')
GO
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (1, N'Angular co bản', N'Khoá học web angular co bản', 3, N'angular.jpg', 1, 1200000, 1, 2, 1, CAST(N'2020-12-12' AS Date), NULL, 22)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (2, N'Angular nâng cao', N'Khoá hoc angular cho web mvc', 0, N'Angular4.jpg', 1, 1000000, 1, 1, 1, CAST(N'2020-12-13' AS Date), NULL, 12)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (3, N'DotNet core', N'Khoá học dotnet core can bản', 4, N'NetEntity.jpg', 2, 2300000, 2, 2, 1, CAST(N'2020-12-14' AS Date), NULL, 17)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (4, N'Dotnet mvc căn bản', N'Khoá học dotnet cho người mới học', 4, N'NetFramework.jpg', 2, 3000000, 1, 2, 1, CAST(N'2020-12-15' AS Date), NULL, 3)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (5, N'Nodejs can ban', N'Khoá hoc node js can ban cho người mới học', 5, N'nodejs.png', 5, 800000, 1, 3, 1, CAST(N'2020-12-08' AS Date), NULL, 21)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (6, N'Lập trình java can ban', N'Khoá java can ban cho người mới học', 4, N'java.png', 6, 5000000, 2, 1, 2, CAST(N'2020-12-05' AS Date), NULL, 51)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (7, N'Lập trình java nâng cao', N'Khoá java nâng cao', 3, N'java1.png', 6, 600000, 1, 1, 2, CAST(N'2020-11-18' AS Date), NULL, 7)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (8, N'Lập trình java cho mobile', N'Khoá hoc co ban', 4, N'java1.png', 6, 1600000, 1, 3, 2, CAST(N'2020-12-19' AS Date), NULL, 11)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (9, N'Lập trình angular mvc', N'Khoá hoc web nâng cao', 3, N'Angular4.jpg', 1, 500000, 1, 1, 1, CAST(N'2020-12-20' AS Date), NULL, 13)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (10, N'Dotnet famework', N'Khoa hoc web cho người mới học', 2, N'NetEntity.jpg', 2, 1900000, 1, 4, 1, CAST(N'2020-09-22' AS Date), NULL, 17)
INSERT [dbo].[Course] ([id], [name], [described], [rating], [image], [idroute], [price], [type], [idTeacher], [idCategory], [dateCourse], [status], [viewCount]) VALUES (11, N'Nodejs nâng cao', N'Khoá hoc nodejs nâng cao', 5, N'nodejs.png', 5, 2400000, 1, 1, 1, CAST(N'2020-12-30' AS Date), NULL, 30)
GO
INSERT [dbo].[CourseOrder] ([Id], [userId], [totalPrice], [amount], [orderDate]) VALUES (1, 6, 12, 1, CAST(N'2020-12-24T07:34:00.000' AS DateTime))
INSERT [dbo].[CourseOrder] ([Id], [userId], [totalPrice], [amount], [orderDate]) VALUES (2, 6, 30, 2, CAST(N'2020-12-24T07:35:14.000' AS DateTime))
INSERT [dbo].[CourseOrder] ([Id], [userId], [totalPrice], [amount], [orderDate]) VALUES (3, 6, 30, 2, CAST(N'2020-12-24T07:52:09.000' AS DateTime))
GO
INSERT [dbo].[OrderDetail] ([id], [orderId], [productId], [price]) VALUES (1, 3, 1, 12)
INSERT [dbo].[OrderDetail] ([id], [orderId], [productId], [price]) VALUES (2, 3, 3, 18)
GO
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (1, 1, 4, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (2, 3, 4, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (3, 3, 2, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (4, 1, 1, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (5, 1, 5, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (6, 3, 2, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (7, 3, 5, 6)
INSERT [dbo].[RatingCourse] ([Id], [courseId], [rating], [userId]) VALUES (8, 3, 5, 6)
GO
INSERT [dbo].[route] ([id], [name], [image]) VALUES (1, N'Lập trình Angular', N'angular.jpg')
INSERT [dbo].[route] ([id], [name], [image]) VALUES (2, N'Lập trình .Net', N'ASPNET.jpg')
INSERT [dbo].[route] ([id], [name], [image]) VALUES (3, N'Lập trình Python', N'python.jpg')
INSERT [dbo].[route] ([id], [name], [image]) VALUES (4, N'Lập trình c/c++', N'c.jpg')
INSERT [dbo].[route] ([id], [name], [image]) VALUES (5, N'Lập trình nodejs', N'nodejs.png')
INSERT [dbo].[route] ([id], [name], [image]) VALUES (6, N'Lập trình java', N'java.png')
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [FullName]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [UserName]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [gender]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [dob]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [describe]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [level]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT (NULL) FOR [dateCourse]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_AppUser2] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_AppUser2]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([idCategory])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
ALTER TABLE [dbo].[CourseOrder]  WITH CHECK ADD  CONSTRAINT [FK_CourseOrder_AppUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[CourseOrder] CHECK CONSTRAINT [FK_CourseOrder_AppUser1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_CourseOrder1] FOREIGN KEY([orderId])
REFERENCES [dbo].[CourseOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_CourseOrder1]
GO
ALTER TABLE [dbo].[RatingCourse]  WITH CHECK ADD  CONSTRAINT [FK_RatingCourse_Course] FOREIGN KEY([courseId])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[RatingCourse] CHECK CONSTRAINT [FK_RatingCourse_Course]
GO
USE [master]
GO
ALTER DATABASE [web] SET  READ_WRITE 
GO
