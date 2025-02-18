USE [Graph]
GO
/****** Object:  Table [dbo].[Graphs]    Script Date: 18/01/2022 09:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graphs](
	[graphCode] [bigint] IDENTITY(1,1) NOT NULL,
	[graphString] [varchar](50) NOT NULL,
	[userCode] [bigint] NOT NULL,
	[creationDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[graphCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/01/2022 09:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[userName] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Graphs] ON 

INSERT [dbo].[Graphs] ([graphCode], [graphString], [userCode], [creationDate]) VALUES (1, N'2x^2-4x+2', 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Graphs] ([graphCode], [graphString], [userCode], [creationDate]) VALUES (2, N'x^2-6x-2', 1, CAST(N'2012-08-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Graphs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Code], [firstName], [lastName], [userName], [email], [password]) VALUES (1, N'Rinat', N'Avital', N'RinatAvital', N'avital2127@gmail', N'212735427')
INSERT [dbo].[Users] ([Code], [firstName], [lastName], [userName], [email], [password]) VALUES (2, N'Sara', N'Grama', N'SaraGrama', N'saragshira@gmail.com', N'212758424')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Graphs]  WITH CHECK ADD FOREIGN KEY([userCode])
REFERENCES [dbo].[Users] ([Code])
GO
