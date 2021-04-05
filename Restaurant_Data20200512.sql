INSERT [dbo].[Restaurants] ( [Name], [Address], [Phone], [Email], [Capacity]) VALUES ( N'Bean Scean', N'27 Crystal St, Petersham NSW 2049', N'02 98765432', N'info@BeanScean.com.au', 114)
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
SET IDENTITY_INSERT [dbo].[Sittings] ON 

INSERT [dbo].[ReservationStatuses] ([Desc]) VALUES ( N'Pending')
INSERT [dbo].[ReservationStatuses] ([Desc]) VALUES ( N'Confirmed')
INSERT [dbo].[ReservationStatuses] ([Desc]) VALUES ( N'Cancelled')
INSERT [dbo].[ReservationStatuses] ([Desc]) VALUES ( N'Seated')
INSERT [dbo].[ReservationStatuses] ([Desc]) VALUES ( N'Completed ')
SET IDENTITY_INSERT [dbo].[ReservationStatuses] OFF
SET IDENTITY_INSERT [dbo].[ReservationTypes] ON 

INSERT [dbo].[ReservationTypes] ( [Description]) VALUES ( N'Online')
INSERT [dbo].[ReservationTypes] ( [Description]) VALUES ( N'In Person')
INSERT [dbo].[ReservationTypes] ( [Description]) VALUES ( N'Phone')
INSERT [dbo].[ReservationTypes] ( [Description]) VALUES ( N'Email')
SET IDENTITY_INSERT [dbo].[ReservationTypes] OFF
SET IDENTITY_INSERT [dbo].[Restaurants] ON 


INSERT [dbo].[Areas] ( [Description], [RestaurantId]) VALUES ( N'Main', 1)
INSERT [dbo].[Areas] ([Description], [RestaurantId]) VALUES ( N'Outside', 1)
INSERT [dbo].[Areas] ([Description], [RestaurantId]) VALUES ( N'Balcony', 1)
SET IDENTITY_INSERT [dbo].[Areas] OFF

INSERT [dbo].[SittingStatuses] ( [Description]) VALUES ( N'Open')
INSERT [dbo].[SittingStatuses] ([Description]) VALUES ( N'Closed')
INSERT [dbo].[SittingStatuses] ([Description]) VALUES ( N'Booked Out')
INSERT [dbo].[SittingStatuses] ([Description]) VALUES ( N'Private Event')
SET IDENTITY_INSERT [dbo].[SittingStatuses] OFF
SET IDENTITY_INSERT [dbo].[SittingTypes] ON 

INSERT [dbo].[SittingTypes] ( [Description]) VALUES ( N'Breakfast')
INSERT [dbo].[SittingTypes] ( [Description]) VALUES ( N'Lunch')
INSERT [dbo].[SittingTypes] ( [Description]) VALUES ( N'Dinner')
INSERT [dbo].[SittingTypes] ( [Description]) VALUES ( N'Event')
SET IDENTITY_INSERT [dbo].[SittingTypes] OFF
SET IDENTITY_INSERT [dbo].[TableReserations] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'10009fb1-1c91-402f-a0e1-d40cb6c01786', N'Member', N'MEMBER', N'49798e5c-e1ee-4394-9991-9b0f650745dc')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c44eac2a-7d15-4b17-9e5c-126e788777f9', N'Staff', N'STAFF', N'81d3dba3-2a88-4cb5-adb0-12c600de1dc1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e68f433c-ecd7-4adb-9165-ae11825cb72c', N'Manager', N'MANAGER', N'6d7072c4-c1ef-4f26-a76d-342816447567')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efd76af9-a6ea-4217-ae6a-f6fca8ec1ae7', N'10009fb1-1c91-402f-a0e1-d40cb6c01786')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5fa1e7d-2003-4c34-8d75-58b1d340ba8d', N'c44eac2a-7d15-4b17-9e5c-126e788777f9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d8b05dc-8f8c-4918-977a-b13d1570ea65', N'e68f433c-ecd7-4adb-9165-ae11825cb72c')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d8b05dc-8f8c-4918-977a-b13d1570ea65', N'manager@e.com', N'MANAGER@E.COM', N'manager@e.com', N'MANAGER@E.COM', 1, N'AQAAAAEAACcQAAAAEA1EnofImFXhUa7cbUH+Ei3BIYHsS4/lr+a6ZsGV9dVkHWqi8rtv6SrTBcFyskEzOg==', N'V2JBTNRZRUXANX4JRL6R3SW7RTT64ILP', N'45892531-20e8-40d0-88ef-7c1b96bf339d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6dcbcfcb-e070-4630-aa3e-affc792209d0', N'a@e.com', N'A@E.COM', N'a@e.com', N'A@E.COM', 1, N'AQAAAAEAACcQAAAAEJbGJizz666oOtOQTuP8COkX7ZRMMOjTOhlK10senzs420kuyaqVZW+1caUXgeQJiQ==', N'PKN6HQQIFLTHO546FNLOT7YVJGOMEBDY', N'10d96723-d4df-4f42-a378-1f9be142f978', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e5fa1e7d-2003-4c34-8d75-58b1d340ba8d', N'staff@e.com', N'STAFF@E.COM', N'staff@e.com', N'STAFF@E.COM', 1, N'AQAAAAEAACcQAAAAEL7wbRNjhhDf4x3YOFyRclKqlPn988jFYsFHuejKI6eh5MBQ8blbNntmdczVeRKLfA==', N'A4B4UK6K45OGIIZFZZGO3AUFUEH3CBTA', N'b68523bc-7dfb-4a7d-84ba-71bad39f242a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'efd76af9-a6ea-4217-ae6a-f6fca8ec1ae7', N'member@e.com', N'MEMBER@E.COM', N'member@e.com', N'MEMBER@E.COM', 1, N'AQAAAAEAACcQAAAAEF1wWFFXUyoGUFWt8l1P7Dnz4o9J68N77JxPvALCWVXHEfbxVkflCletGYC/z9XYng==', N'PICTYYVLZACOXY4XG5FIPLYT64ZIJ6BO', N'52b11b97-510a-484f-b2b8-39908e22d2ef', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([StartDateTime], [EndDateTime], [Guests], [Notes_Requirements], [ReservationTypeId], [CustomerId], [ReservationStatusId], [UserId]) VALUES (CAST(N'2020-02-07T12:00:00.0000000' AS DateTime2), CAST(N'2020-02-07T13:00:00.0000000' AS DateTime2), 1, N'sit outside', 1, NULL, 2, NULL)
INSERT [dbo].[Reservations] ([StartDateTime], [EndDateTime], [Guests], [Notes_Requirements], [ReservationTypeId], [CustomerId], [ReservationStatusId], [UserId]) VALUES (CAST(N'2020-02-07T13:00:00.0000000' AS DateTime2), CAST(N'2020-02-07T15:00:00.0000000' AS DateTime2), 4, N'inside', 1, NULL, 2, NULL)
INSERT [dbo].[Reservations] ([StartDateTime], [EndDateTime], [Guests], [Notes_Requirements], [ReservationTypeId], [CustomerId], [ReservationStatusId], [UserId]) VALUES (CAST(N'2020-02-07T07:00:00.0000000' AS DateTime2), CAST(N'2020-02-07T09:00:00.0000000' AS DateTime2), 4, N'sit outside', 1, NULL, 2, NULL)
INSERT [dbo].[Reservations] ([StartDateTime], [EndDateTime], [Guests], [Notes_Requirements], [ReservationTypeId], [CustomerId], [ReservationStatusId], [UserId]) VALUES (CAST(N'2020-02-07T08:00:00.0000000' AS DateTime2), CAST(N'2020-02-07T10:00:00.0000000' AS DateTime2), 4, N'inside', 1, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
SET IDENTITY_INSERT [dbo].[ReservationStatuses] ON 


INSERT [dbo].[Sittings] ([SittingTypeId], [StartDateTime], [EndDateTime], [Capacity], [SittingStatusId]) VALUES ( 1, CAST(N'2020-02-01T07:00:00.0000000' AS DateTime2), CAST(N'2020-05-31T12:00:00.0000000' AS DateTime2), 123, 1)
INSERT [dbo].[Sittings] ([SittingTypeId], [StartDateTime], [EndDateTime], [Capacity], [SittingStatusId]) VALUES ( 2, CAST(N'2020-02-01T12:00:00.0000000' AS DateTime2), CAST(N'2020-05-31T15:00:00.0000000' AS DateTime2), 120, 1)
INSERT [dbo].[Sittings] ([SittingTypeId], [StartDateTime], [EndDateTime], [Capacity], [SittingStatusId]) VALUES ( 3, CAST(N'2020-02-01T13:00:00.0000000' AS DateTime2), CAST(N'2020-05-31T21:00:00.0000000' AS DateTime2), 110, 1)
SET IDENTITY_INSERT [dbo].[Sittings] OFF
SET IDENTITY_INSERT [dbo].[SittingStatuses] ON 




INSERT [dbo].[TableReserations] ( [ReservationId], [TableSittingId]) VALUES ( 3, NULL)
INSERT [dbo].[TableReserations] ( [ReservationId], [TableSittingId]) VALUES ( 1, NULL)
INSERT [dbo].[TableReserations] ( [ReservationId], [TableSittingId]) VALUES ( 2, NULL)
INSERT [dbo].[TableReserations] ( [ReservationId], [TableSittingId]) VALUES ( 4, NULL)
SET IDENTITY_INSERT [dbo].[TableReserations] OFF


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
SET IDENTITY_INSERT [dbo].[TableSittings] ON 

