
USE [T2RMSWS]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200329125338_Initial', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200329130652_Initial', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200329132941_AddRelationshipToArea_Restaurant', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200331070100_updateListstoAccessIDsInActualTables', N'3.0.0')
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([AreaId], [Description], [RestaurantId]) VALUES (1, N'Main', 1)
INSERT [dbo].[Areas] ([AreaId], [Description], [RestaurantId]) VALUES (2, N'Outside', 1)
INSERT [dbo].[Areas] ([AreaId], [Description], [RestaurantId]) VALUES (3, N'Balcony', 1)
SET IDENTITY_INSERT [dbo].[Areas] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'10009fb1-1c91-402f-a0e1-d40cb6c01786', N'Member', N'MEMBER', N'49798e5c-e1ee-4394-9991-9b0f650745dc')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c44eac2a-7d15-4b17-9e5c-126e788777f9', N'Staff', N'STAFF', N'81d3dba3-2a88-4cb5-adb0-12c600de1dc1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e68f433c-ecd7-4adb-9165-ae11825cb72c', N'Manager', N'MANAGER', N'6d7072c4-c1ef-4f26-a76d-342816447567')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efd76af9-a6ea-4217-ae6a-f6fca8ec1ae7', N'10009fb1-1c91-402f-a0e1-d40cb6c01786')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5fa1e7d-2003-4c34-8d75-58b1d340ba8d', N'c44eac2a-7d15-4b17-9e5c-126e788777f9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d8b05dc-8f8c-4918-977a-b13d1570ea65', N'e68f433c-ecd7-4adb-9165-ae11825cb72c')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d8b05dc-8f8c-4918-977a-b13d1570ea65', N'manager@e.com', N'MANAGER@E.COM', N'manager@e.com', N'MANAGER@E.COM', 1, N'AQAAAAEAACcQAAAAEA1EnofImFXhUa7cbUH+Ei3BIYHsS4/lr+a6ZsGV9dVkHWqi8rtv6SrTBcFyskEzOg==', N'V2JBTNRZRUXANX4JRL6R3SW7RTT64ILP', N'06371e67-ab20-4686-8cde-db70cb903ba2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6dcbcfcb-e070-4630-aa3e-affc792209d0', N'a@e.com', N'A@E.COM', N'a@e.com', N'A@E.COM', 1, N'AQAAAAEAACcQAAAAEJbGJizz666oOtOQTuP8COkX7ZRMMOjTOhlK10senzs420kuyaqVZW+1caUXgeQJiQ==', N'PKN6HQQIFLTHO546FNLOT7YVJGOMEBDY', N'10d96723-d4df-4f42-a378-1f9be142f978', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e5fa1e7d-2003-4c34-8d75-58b1d340ba8d', N'staff@e.com', N'STAFF@E.COM', N'staff@e.com', N'STAFF@E.COM', 1, N'AQAAAAEAACcQAAAAEL7wbRNjhhDf4x3YOFyRclKqlPn988jFYsFHuejKI6eh5MBQ8blbNntmdczVeRKLfA==', N'A4B4UK6K45OGIIZFZZGO3AUFUEH3CBTA', N'9260d181-973b-4cfb-b947-49f559b75f5e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'efd76af9-a6ea-4217-ae6a-f6fca8ec1ae7', N'member@e.com', N'MEMBER@E.COM', N'member@e.com', N'MEMBER@E.COM', 1, N'AQAAAAEAACcQAAAAEF1wWFFXUyoGUFWt8l1P7Dnz4o9J68N77JxPvALCWVXHEfbxVkflCletGYC/z9XYng==', N'PICTYYVLZACOXY4XG5FIPLYT64ZIJ6BO', N'52b11b97-510a-484f-b2b8-39908e22d2ef', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ReservationStatuses] ON 

INSERT [dbo].[ReservationStatuses] ([ReservationStatusId], [Desc]) VALUES (1, N'Pending')
INSERT [dbo].[ReservationStatuses] ([ReservationStatusId], [Desc]) VALUES (2, N'Confirmed')
INSERT [dbo].[ReservationStatuses] ([ReservationStatusId], [Desc]) VALUES (3, N'Cancelled')
INSERT [dbo].[ReservationStatuses] ([ReservationStatusId], [Desc]) VALUES (4, N'Seated')
INSERT [dbo].[ReservationStatuses] ([ReservationStatusId], [Desc]) VALUES (5, N'Completed ')
SET IDENTITY_INSERT [dbo].[ReservationStatuses] OFF
SET IDENTITY_INSERT [dbo].[ReservationTypes] ON 

INSERT [dbo].[ReservationTypes] ([ReservationTypeId], [Description]) VALUES (1, N'Online')
INSERT [dbo].[ReservationTypes] ([ReservationTypeId], [Description]) VALUES (2, N'In Person')
INSERT [dbo].[ReservationTypes] ([ReservationTypeId], [Description]) VALUES (3, N'Phone')
INSERT [dbo].[ReservationTypes] ([ReservationTypeId], [Description]) VALUES (4, N'Email')
SET IDENTITY_INSERT [dbo].[ReservationTypes] OFF
SET IDENTITY_INSERT [dbo].[Restaurants] ON 

INSERT [dbo].[Restaurants] ([RestaurantId], [Name], [Address], [Phone], [Email], [Capacity]) VALUES (1, N'Bean Scean', N'27 Crystal St, Petersham NSW 2049', N'02 98765432', N'info@BeanScean.com.au', 114)
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
SET IDENTITY_INSERT [dbo].[SittingStatuses] ON 

INSERT [dbo].[SittingStatuses] ([SittingStatusId], [Description]) VALUES (1, N'Open')
INSERT [dbo].[SittingStatuses] ([SittingStatusId], [Description]) VALUES (2, N'Closed')
INSERT [dbo].[SittingStatuses] ([SittingStatusId], [Description]) VALUES (3, N'Booked Out')
INSERT [dbo].[SittingStatuses] ([SittingStatusId], [Description]) VALUES (4, N'Private Event')
SET IDENTITY_INSERT [dbo].[SittingStatuses] OFF
SET IDENTITY_INSERT [dbo].[SittingTypes] ON 

INSERT [dbo].[SittingTypes] ([SittingTypeId], [Description]) VALUES (1, N'Breakfast')
INSERT [dbo].[SittingTypes] ([SittingTypeId], [Description]) VALUES (2, N'Lunch')
INSERT [dbo].[SittingTypes] ([SittingTypeId], [Description]) VALUES (3, N'Dinner')
INSERT [dbo].[SittingTypes] ([SittingTypeId], [Description]) VALUES (4, N'Event')
SET IDENTITY_INSERT [dbo].[SittingTypes] OFF
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B01', 2, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B02', 2, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B03', 2, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B04', 5, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B05', 4, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B06', 4, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B07', 4, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B08', 4, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B09', 5, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'B10', 5, 3)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M01', 4, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M02', 4, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M03', 4, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M04', 2, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M05', 2, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M06', 6, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M07', 6, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M08', 6, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M09', 2, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'M10', 4, 1)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O01', 2, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O02', 2, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O03', 2, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O04', 4, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O05', 4, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O06', 4, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O07', 4, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O08', 5, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O09', 5, 2)
INSERT [dbo].[Tables] ([TableNo], [TableCapacity], [AreaId]) VALUES (N'O10', 5, 2)