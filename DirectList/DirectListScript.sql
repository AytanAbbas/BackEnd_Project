USE [DirectListDB]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Image], [Name], [Surname], [CreatedDate], [Text], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4a88af36-c692-4965-a02a-fecba453349a', N'CustomUser', N'avataaar.jfif', N'Aytan', N'Abbas', CAST(N'2022-01-02T13:19:47.3143671' AS DateTime2), N'Nullam ultricies, velit ut varius molestie, ante metus condimentum nisi, dignissim facilisis turpis ex in libero. Sed porta ante tortor, a pulvinar mi facilisis nec. Proin finibus dolor ac convallis congue.', N'aytanabbasova@gmail.com', N'AYTANABBASOVA@GMAIL.COM', N'aytanabbasova@gmail.com', N'AYTANABBASOVA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFYy+NrjLcVUxIQ6X1ttZBAUZFyP8PLENHEebr/9IlkDA0YQ+LAuzzpkJWGubPzXxg==', N'VMJ4MBPKIVXGDRGF3FOWP3GW7BRNXABD', N'f0543926-c544-463f-8561-a637b20dfcc1', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Image], [Title], [Content], [CreatedDate], [CustomUserId]) VALUES (1, N'2e813dd1-2792-4195-be6b-b8cf31965113-202201021332SS-post-1.jpg', N'Take a Look at Hotels for All Budgets', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2022-01-02T13:32:21.0148094' AS DateTime2), NULL)
INSERT [dbo].[Blogs] ([Id], [Image], [Title], [Content], [CreatedDate], [CustomUserId]) VALUES (2, N'bdc1bd63-acca-4b73-9550-20ce6ed96d94-202201021332SS-post-2.jpg', N'The 50 Greatest Street Arts In London', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2022-01-02T13:32:55.9346803' AS DateTime2), NULL)
INSERT [dbo].[Blogs] ([Id], [Image], [Title], [Content], [CreatedDate], [CustomUserId]) VALUES (3, N'd9c3cea1-bfb3-4f63-b19c-c8bf29dbcf6f-202201021333SS-post-3.jpg', N'The Best Cofee Shops In Sydney Neighborhoods', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2022-01-02T13:33:22.9119367' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Name]) VALUES (1, N'SWIMMING POOL')
INSERT [dbo].[Features] ([Id], [Name]) VALUES (2, N'FREE WIFI INTERNET ACCESS INCLUDED')
INSERT [dbo].[Features] ([Id], [Name]) VALUES (3, N'FREE PARKING')
INSERT [dbo].[Features] ([Id], [Name]) VALUES (4, N'SWIMMINGPOOL OUTDOOR')
INSERT [dbo].[Features] ([Id], [Name]) VALUES (5, N'FAMILY ROOMS')
INSERT [dbo].[Features] ([Id], [Name]) VALUES (6, N'NON SMOKING ROOMS')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurants] ON 

INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (2, N'Tom House', CAST(N'2022-01-01T11:35:00.0000000' AS DateTime2), CAST(N'2022-01-04T11:35:00.0000000' AS DateTime2), N'4340 Cambridge Court Natural Dam, Arkansas', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus!

Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (9, N' Burger House', CAST(N'2021-12-29T18:08:00.0000000' AS DateTime2), CAST(N'2022-01-06T18:08:00.0000000' AS DateTime2), N'4340 Cambridge Court Natural Dam, Arkansas', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (10, N'Hotel Govendor', CAST(N'2021-12-08T18:13:00.0000000' AS DateTime2), CAST(N'2022-01-11T18:13:00.0000000' AS DateTime2), N'4340 Cambridge Court Natural Dam, Arkansas', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus!

Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (11, N'Hotel Govendor', CAST(N'2021-12-29T18:18:00.0000000' AS DateTime2), CAST(N'2022-01-07T18:18:00.0000000' AS DateTime2), N'4340 Cambridge Court Natural Dam, Arkansas', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (12, N'Burger King', CAST(N'2022-01-10T22:51:00.0000000' AS DateTime2), CAST(N'2022-01-27T22:51:00.0000000' AS DateTime2), N'Flat 20, Reynolds Neck, North Hele naville, FV77 8WS', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae. Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum. In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed ', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (13, N'Kinder Villa', CAST(N'2021-11-28T23:10:00.0000000' AS DateTime2), CAST(N'2022-01-01T23:11:00.0000000' AS DateTime2), N'4340 Cambridge Court Natural Dam, Arkansas', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae. Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum. In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum. Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Restaurants] ([Id], [Name], [StartDate], [EndDate], [Address], [About], [ReceptionPhone], [CompaintPhone], [SupportPhone], [Location], [LocationNote], [CreatedDate]) VALUES (14, N'Cafe City', CAST(N'2022-01-04T23:12:00.0000000' AS DateTime2), CAST(N'2022-01-22T23:12:00.0000000' AS DateTime2), N'1234 Cambridge Court Natural Dam, Arkansas', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae. Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum. In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum. Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', N'+123 123 456 45', N'+123 123 456 45', N'+123 123 456 45', NULL, N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
GO
SET IDENTITY_INSERT [dbo].[FeatureToRestaurants] ON 

INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (1, 1, 9)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (2, 4, 10)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (3, 3, 11)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (5, 5, 2)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (6, 6, 2)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (7, 3, 13)
INSERT [dbo].[FeatureToRestaurants] ([Id], [FeatureId], [RestaurantId]) VALUES (8, 4, 14)
SET IDENTITY_INSERT [dbo].[FeatureToRestaurants] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name]) VALUES (3, N'Classic Burger')
INSERT [dbo].[Menus] ([Id], [Name]) VALUES (4, N'Cheddar Burger')
INSERT [dbo].[Menus] ([Id], [Name]) VALUES (5, N'Veggie Burger')
INSERT [dbo].[Menus] ([Id], [Name]) VALUES (6, N'Chicken Burger')
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuToRestaurants] ON 

INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (1, 5.0000, N'Beef, salad, mayonnaise, spicey relish, cheese', 2, 3)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (2, 6.0000, N'Cheddar cheese, lettuce, tomato, onion, dill pickles', 2, 4)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (3, 7.0000, N'Panko crumbed and fried, grilled peppers and mushroom', 2, 5)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (4, 11.0000, N'Cheese, chicken fillet, avocado, bacon, tomatoes, basil', 2, 6)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (5, 7.0000, N'Beef, salad, mayonnaise, spicey relish, cheese', 9, 3)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (6, 5.0000, N'Cheddar cheese, lettuce, tomato, onion, dill pickles', 9, 4)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (7, 13.0000, N'Panko crumbed and fried, grilled peppers and mushroom', 9, 5)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (8, 55.0000, N'Cheese, chicken fillet, avocado, bacon, tomatoes, basil', 9, 6)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (9, 42.0000, N'Beef, salad, mayonnaise, spicey relish, cheese', 10, 3)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (10, 22.0000, N'Cheddar cheese, lettuce, tomato, onion, dill pickles', 10, 4)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (11, 58.0000, N'Panko crumbed and fried, grilled peppers and mushroom', 10, 5)
INSERT [dbo].[MenuToRestaurants] ([Id], [Price], [Description], [RestaurantId], [MenuId]) VALUES (12, 4.0000, N'Cheese, chicken fillet, avocado, bacon, tomatoes, basil', 10, 6)
SET IDENTITY_INSERT [dbo].[MenuToRestaurants] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantImages] ON 

INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (3, N'1296bebb-f0e3-400f-a760-d1dcad039c0c-202201041752SS-most-img-1.jpg', 2)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (6, N'941a37db-0c06-462f-a100-493516eb06ab-20220104180903-most-img-2.jpg', 9)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (10, N'logo-1.png', 9)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (11, N'logo-2.png', 2)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (12, N'logo-3.png', 10)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (13, N'a1e9a354-dd1b-48ff-9115-fc65efbc3dda-202201062311SS-bw-1.jpg', 13)
INSERT [dbo].[RestaurantImages] ([Id], [Image], [RestaurantId]) VALUES (14, N'4efbee6e-b462-404c-b1b1-3564ee0ab8d2-202201062312SS-most-img-1.jpg', 14)
SET IDENTITY_INSERT [dbo].[RestaurantImages] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantManagers] ON 

INSERT [dbo].[RestaurantManagers] ([Id], [Name], [SurName], [Phone], [Email], [WebSite], [Image], [RestaurantId]) VALUES (2, N'Victoria', N' Benson', N' (123) 123-456', N' http://example.com', N'victoria@victoria.com', N'0381e0d2-b980-4ccc-bf4c-59fe5090985a-202201041841SS-thumb-1.jpg', 2)
INSERT [dbo].[RestaurantManagers] ([Id], [Name], [SurName], [Phone], [Email], [WebSite], [Image], [RestaurantId]) VALUES (3, N'Victoria ', N'Benson', N' (123) 123-456', N' http://example.com', N'victoria@victoria.com', N'079a29a4-4d60-4fa0-b207-095b65f0e573-202201041843SS-thumb-2.jpg', 9)
INSERT [dbo].[RestaurantManagers] ([Id], [Name], [SurName], [Phone], [Email], [WebSite], [Image], [RestaurantId]) VALUES (4, N'Victoria', N' Benson', N'(123) 123-456', N'http://example.com', N'victoria@victoria.com', N'af3deb19-99dc-4144-81ed-79fdda8d99ae-202201041844SS-thumb-3.jpg', 10)
SET IDENTITY_INSERT [dbo].[RestaurantManagers] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'DINNER')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'HOTEL')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'SEA FOOD')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TagToRestaurants] ON 

INSERT [dbo].[TagToRestaurants] ([Id], [TagId], [RestaurantId]) VALUES (2, 2, 9)
INSERT [dbo].[TagToRestaurants] ([Id], [TagId], [RestaurantId]) VALUES (3, 3, 10)
INSERT [dbo].[TagToRestaurants] ([Id], [TagId], [RestaurantId]) VALUES (4, 3, 11)
INSERT [dbo].[TagToRestaurants] ([Id], [TagId], [RestaurantId]) VALUES (5, 2, 13)
INSERT [dbo].[TagToRestaurants] ([Id], [TagId], [RestaurantId]) VALUES (6, 1, 14)
SET IDENTITY_INSERT [dbo].[TagToRestaurants] OFF
GO
SET IDENTITY_INSERT [dbo].[AboutProcesses] ON 

INSERT [dbo].[AboutProcesses] ([Id], [Icon], [Title], [Number], [Content]) VALUES (1, N'fa fa-bookmark', N'Plan', N'01', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod')
INSERT [dbo].[AboutProcesses] ([Id], [Icon], [Title], [Number], [Content]) VALUES (2, N'fa fa-rocket', N'Code', N'02', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod')
INSERT [dbo].[AboutProcesses] ([Id], [Icon], [Title], [Number], [Content]) VALUES (3, N'fa fa-check', N' Deliver', N'03', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod')
SET IDENTITY_INSERT [dbo].[AboutProcesses] OFF
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Icon], [Title], [Image], [ImageText], [Content]) VALUES (1, N'fa fa-info', N'About Us', N'255ede9a-0d52-4808-ac6e-2528b6ecc7be-20220102140254-about-image.jpg', N'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vel consectetur, ipsa autem vitae quos ea laborum expedita', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem sapiente, fugiat commodi reprehenderit expedita nam nemoMolestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!Molestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (1, N'Contact Us', N'Explore your search places', N'contact Us', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (2, N'About Us', N'Explore your search places', N'about Us', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (3, N'Blog Listing', N'Explore your search places', N'blog Listing', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (4, N'Blog Detail', N'Explore your search places', N'blog detail', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (5, N'List Full Width', N'Explore your search places', N'listings', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (6, N'List Full Width', N'Explore your search places', N'listings', NULL)
INSERT [dbo].[Banners] ([Id], [Title], [SubTitle], [Page], [Image]) VALUES (7, N'About Us', N'Explore your search places', N'about Us', N'e77a6995-b486-4147-889f-6e3d04e007d9-20220102175153-bg-cs.jpg')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (1, N'jsjjsjsks', N'mjejfiwgjp8934t', N'aytanab@gmail.com', N'kerndiw4u235', N'q eiurh34875r', CAST(N'2022-01-02T14:43:23.0811045' AS DateTime2))
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (2, N'Aytan', N'Abbas', N'aytanab@gmail.com', N'lorem ipsum', N'lorem ipsum dolor amet', CAST(N'2022-01-02T17:13:40.6876376' AS DateTime2))
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (3, N'kmvld', N'<SDv niwer', N'aytanab@gmail.com', N'sd iufhw8rt', N'S DVkaefjvirfb', CAST(N'2022-01-02T17:40:48.5618727' AS DateTime2))
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (4, N'skfnvire', N'e,wfnviwq', N'aytanab@gmail.com', N'welkfvj', N'adf,kmvowr', CAST(N'2022-01-02T17:41:01.9413948' AS DateTime2))
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (5, N'Inci', N'Seyfullayeva', N'inci@gmail.com', N'lorem ipsum', N'lorem ipsum amet dkkdkdk', CAST(N'2022-01-03T01:37:14.4686876' AS DateTime2))
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Email], [Subject], [Message], [CreatedDate]) VALUES (6, N'murad', N'abbasov', N'murad@gmail.com', N'lorem ipsum', N'sjjsjsjsjjjsjjs', CAST(N'2022-01-06T22:15:56.8264027' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Logo], [Addresss], [Addresss2], [Phone], [Phone2], [Email], [Email2], [About]) VALUES (1, N'aa0d43ec-436d-44aa-b940-847dab62c20f-20220102141818-logo-white.png', N'12345 Little Lonsdale St, Melbourne', N'423B, Road Wordwide Country, USA', N' (123) 123-456', N'+01-1234-567-8900', N'office@example.com', N'htinfotech7@gmail.com', N'Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper.')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacations] ON 

INSERT [dbo].[Vacations] ([Id], [Title], [Text], [Icon], [Number]) VALUES (1, N'Find Interesting Place', N'Proin dapibus nisl ornare diam varius tempus. Aenean a quam luctus, finibus tellus ut, convallis eros sollicitudin turpis.', N'fa fa-search', NULL)
INSERT [dbo].[Vacations] ([Id], [Title], [Text], [Icon], [Number]) VALUES (2, N'Contact a Few Owners', N'Maecenas pulvinar, risus in facilisis dignissim, quam nisi hendrerit nulla, id vestibulum metus nullam viverra porta purus.', N'fa fa-phone-square', NULL)
INSERT [dbo].[Vacations] ([Id], [Title], [Text], [Icon], [Number]) VALUES (3, N'Make a Reservation', N'Faucibus ante, in porttitor tellus blandit et. Phasellus tincidunt metus lectus sollicitudin feugiat pharetra consectetur.', N'fa fa-user-plus', NULL)
SET IDENTITY_INSERT [dbo].[Vacations] OFF
GO
