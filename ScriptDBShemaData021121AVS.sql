USE [AVS_DB]
GO
/****** Object:  Table [dbo].[Nationalities]    Script Date: 11/2/2021 1:52:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationalities](
	[IdNat] [int] IDENTITY(1,1) NOT NULL,
	[Nationality] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_acompanying_family]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_acompanying_family](
	[IdAcomp] [int] IDENTITY(1,1) NOT NULL,
	[IdFam] [int] NULL,
	[FullName] [varchar](100) NULL,
	[DateOfBirth] [varchar](10) NULL,
	[PassportNumber] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAcomp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_avs_security_options]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_avs_security_options](
	[IdCon] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](max) NULL,
	[KeyAcc] [varchar](200) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_bank_family]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bank_family](
	[IdBank] [int] IDENTITY(1,1) NOT NULL,
	[IdFam] [int] NULL,
	[NameBank] [varchar](50) NULL,
	[Branch] [varchar](10) NULL,
	[ACNumber] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[VerifierDetails] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_countries]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_countries](
	[IdCatCountry] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCatCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_ports_in_out]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_ports_in_out](
	[IdPorts] [int] IDENTITY(1,1) NOT NULL,
	[DescPorts] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPorts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_purpose_visited]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_purpose_visited](
	[IdPurpose] [int] IDENTITY(1,1) NOT NULL,
	[DescPurpose] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPurpose] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_types_visas]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_types_visas](
	[IdTypeVisa] [int] IDENTITY(1,1) NOT NULL,
	[TypeVisa] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTypeVisa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_types_visas_applied]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_types_visas_applied](
	[IdVisaAp] [int] IDENTITY(1,1) NOT NULL,
	[TypeVisa] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVisaAp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cat_visas_times]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cat_visas_times](
	[IdVisasTime] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVisasTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_childrens_familiy]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_childrens_familiy](
	[IdChild] [int] IDENTITY(1,1) NOT NULL,
	[IdFam] [int] NULL,
	[NameChild] [varchar](50) NULL,
	[DateOfBith] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChild] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_conctactDetails]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_conctactDetails](
	[IdConctact] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[IdCatCountry] [int] NULL,
	[TelHome] [varchar](20) NULL,
	[TelWork] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[BitSponsor] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConctact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_convictions_travel]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_convictions_travel](
	[IdConviction] [int] IDENTITY(1,1) NOT NULL,
	[IdTravel] [int] NULL,
	[DateConvict] [varchar](10) NULL,
	[IdCatCountry] [int] NULL,
	[Offence] [varchar](100) NULL,
	[Sentence] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConviction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_countries]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_countries](
	[IdCountry] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DateOfEntry] [datetime] NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_customersAVS]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_customersAVS](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[IdCountry] [int] NULL,
	[RegisteredMail] [varchar](100) NULL,
	[Pass] [varchar](200) NULL,
	[Seed] [varchar](100) NULL,
	[DateOfEntry] [datetime] NULL,
	[DateValidity] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_deported_travel]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_deported_travel](
	[IdDeport] [int] IDENTITY(1,1) NOT NULL,
	[IdTravel] [int] NULL,
	[DateDeport] [varchar](10) NULL,
	[IdCatCountry] [int] NULL,
	[Reason] [varchar](100) NULL,
	[ReferenceNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDeport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_family_details]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_family_details](
	[IdFam] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[NMother] [varchar](50) NULL,
	[NPather] [varchar](50) NULL,
	[IdNatMother] [int] NULL,
	[IdNatFather] [int] NULL,
	[SpouseName] [varchar](100) NULL,
	[IdNatSpouse] [int] NULL,
	[DateBirth] [varchar](10) NULL,
	[PlaceBirth] [varchar](100) NULL,
	[Profesion] [varchar](100) NULL,
	[BitChildrens] [bit] NULL,
	[BitAcompany] [bit] NULL,
	[BitAccountBank] [bit] NULL,
	[NameEmployerSpouse] [varchar](100) NULL,
	[AddressEmployerSpouse] [varchar](100) NULL,
	[TelEmployerSpouse] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_formularies]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_formularies](
	[IdForm] [int] IDENTITY(1,1) NOT NULL,
	[IdCountry] [int] NULL,
	[IdCustomer] [int] NULL,
	[IdStatus] [int] NULL,
	[DateOfEntry] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdForm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_passportDetails]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_passportDetails](
	[IdPassport] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[IdTypePass] [int] NULL,
	[TravelDocs] [bit] NULL,
	[PassportNumber] [varchar](100) NULL,
	[PlaceOfIssue] [varchar](100) NULL,
	[DateOfIssue] [varchar](10) NULL,
	[DateOfExpiry] [varchar](10) NULL,
	[IssuingAuth] [varchar](100) NULL,
	[DateOfChange] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPassport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pastJobs]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pastJobs](
	[IdpJob] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[Designation] [varchar](100) NULL,
	[Depto] [varchar](100) NULL,
	[DateStart] [varchar](10) NULL,
	[DateFinish] [varchar](10) NULL,
	[Duties] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[DescAddContr] [varchar](200) NULL,
	[BitApplyVisaThird] [bit] NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdpJob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_personalData]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_personalData](
	[IdPD] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[Name] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DateBirth] [varchar](10) NULL,
	[CityBirth] [varchar](100) NULL,
	[IdCatCountry] [int] NULL,
	[TypeSex] [bit] NULL,
	[BloodGroup] [varchar](50) NULL,
	[MaritalStatus] [bit] NULL,
	[IdMark] [varchar](50) NULL,
	[TypeNationality] [varchar](50) NULL,
	[DetailOfProfesion] [varchar](200) NULL,
	[Religion] [varchar](50) NULL,
	[DateOfChange] [datetime] NULL,
	[PVPakistan] [varchar](200) NULL,
	[IdPurpose] [int] NULL,
	[IdPortsIn] [int] NULL,
	[IdPortsOut] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_roles]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_roles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[NameRol] [varchar](50) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_sponsors]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_sponsors](
	[IdSponsor] [int] IDENTITY(1,1) NOT NULL,
	[IdConctact] [int] NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[TelPhone] [varchar](20) NULL,
	[TelHome] [varchar](20) NULL,
	[TelWork] [varchar](20) NULL,
	[City] [varchar](100) NULL,
	[ZipCode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSponsor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_status_forms]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_status_forms](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_travel_history]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_travel_history](
	[IdTravel] [int] IDENTITY(1,1) NOT NULL,
	[IdForm] [int] NULL,
	[BitVisPakistan] [bit] NULL,
	[BitVisCountries] [bit] NULL,
	[BitVisRefused] [bit] NULL,
	[BitRefusedPakistan] [bit] NULL,
	[DescRefused] [varchar](200) NULL,
	[DateTravel] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
	[Purpose] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[BitRemoveCountry] [bit] NULL,
	[BitConviction] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTravel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_types_passports]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_types_passports](
	[IdTypePass] [int] IDENTITY(1,1) NOT NULL,
	[TypePass] [varchar](100) NULL,
	[BitActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTypePass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Url_activation]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Url_activation](
	[IdUrl] [int] IDENTITY(1,1) NOT NULL,
	[IdCustomer] [int] NULL,
	[ValueUrl] [varchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_users]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_users](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NULL,
	[Name] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Age] [int] NULL,
	[KeyAccess] [varchar](100) NULL,
	[Seed] [varbinary](max) NULL,
	[Pass] [varbinary](max) NULL,
	[DateOfEntry] [datetime] NULL,
	[DateValidity] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_avs_security_options] ON 

INSERT [dbo].[tb_avs_security_options] ([IdCon], [Value], [KeyAcc], [BitActive]) VALUES (1, N'6ElVk6T2JxO+H42GD2sWrSL/lijEudh7Z1Bihp+OuDwg5yGYbFElwnuBUQrBsENPg552TBHn79aVLDzbNQuBSOquv1lv4Osmug0MpSb4iEY=', N'avsconnect', 1)
SET IDENTITY_INSERT [dbo].[tb_avs_security_options] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_countries] ON 

INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (1, N'Afghanistan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (2, N'Albania', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (3, N'Algeria', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (4, N'Andorra', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (5, N'Angola', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (6, N'Anguilla', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (7, N'Antigua & Barbuda', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (8, N'Argentina', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (9, N'Armenia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (10, N'Australia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (11, N'Austria', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (12, N'Azerbaijan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (13, N'Bahamas', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (14, N'Bahrain', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (15, N'Bangladesh', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (16, N'Barbados', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (17, N'Belarus', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (18, N'Belgium', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (19, N'Belize', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (20, N'Benin', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (21, N'Bermuda', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (22, N'Bhutan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (23, N'Bolivia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (24, N'Bosnia & Herzegovina', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (25, N'Botswana', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (26, N'Brazil', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (27, N'Brunei Darussalam', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (28, N'Bulgaria', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (29, N'Burkina Faso', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (30, N'Burundi', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (31, N'Cambodia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (32, N'Cameroon', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (33, N'Canada', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (34, N'Cape Verde', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (35, N'Cayman Islands', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (36, N'Central African Republic', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (37, N'Chad', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (38, N'Chile', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (39, N'China', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (40, N'China - Hong Kong / Macau', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (41, N'Colombia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (42, N'Comoros', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (43, N'Congo', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (44, N'Congo, Democratic Republic of (DRC)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (45, N'Costa Rica', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (46, N'Croatia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (47, N'Cuba', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (48, N'Cyprus', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (49, N'Czech Republic', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (50, N'Denmark', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (51, N'Djibouti', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (52, N'Dominica', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (53, N'Dominican Republic', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (54, N'Ecuador', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (55, N'Egypt', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (56, N'El Salvador', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (57, N'Equatorial Guinea', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (58, N'Eritrea', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (59, N'Estonia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (60, N'Eswatini', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (61, N'Ethiopia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (62, N'Fiji', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (63, N'Finland', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (64, N'France', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (65, N'French Guiana', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (66, N'Gabon', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (67, N'Gambia, Republic of The', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (68, N'Georgia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (69, N'Germany', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (70, N'Ghana', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (71, N'Great Britain', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (72, N'Greece', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (73, N'Grenada', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (74, N'Guadeloupe', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (75, N'Guatemala', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (76, N'Guinea', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (77, N'Guinea-Bissau', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (78, N'Guyana', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (79, N'Haiti', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (80, N'Honduras', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (81, N'Hungary', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (82, N'Iceland', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (83, N'India', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (84, N'Indonesia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (85, N'Iran', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (86, N'Iraq', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (87, N'Israel and the Occupied Territories', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (88, N'Italy', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (89, N'Ivory Coast (Cote d Ivoire)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (90, N'Jamaica', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (91, N'Japan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (92, N'Jordan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (93, N'Kazakhstan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (94, N'Kenya', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (95, N'Korea, Democratic Republic of (North Korea)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (96, N'Korea, Republic of (South Korea)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (97, N'Kosovo', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (98, N'Kuwait', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (99, N'Kyrgyz Republic (Kyrgyzstan)', 1)
GO
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (100, N'Laos', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (101, N'Latvia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (102, N'Lebanon', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (103, N'Lesotho', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (104, N'Liberia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (105, N'Libya', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (106, N'Liechtenstein', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (107, N'Lithuania', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (108, N'Luxembourg', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (109, N'Madagascar', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (110, N'Malawi', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (111, N'Malaysia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (112, N'Maldives', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (113, N'Mali', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (114, N'Malta', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (115, N'Martinique', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (116, N'Mauritania', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (117, N'Mauritius', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (118, N'Mayotte', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (119, N'Mexico', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (120, N'Moldova, Republic of', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (121, N'Monaco', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (122, N'Mongolia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (123, N'Montenegro', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (124, N'Montserrat', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (125, N'Morocco', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (126, N'Mozambique', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (127, N'Myanmar/Burma', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (128, N'Namibia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (129, N'Nepal', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (130, N'Netherlands', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (131, N'New Zealand', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (132, N'Nicaragua', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (133, N'Niger', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (134, N'Nigeria', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (135, N'North Macedonia, Republic of', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (136, N'Norway', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (137, N'Oman', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (138, N'Pacific Islands', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (139, N'Pakistan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (140, N'Panama', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (141, N'Papua New Guinea', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (142, N'Paraguay', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (143, N'Peru', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (144, N'Philippines', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (145, N'Poland', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (146, N'Portugal', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (147, N'Puerto Rico', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (148, N'Qatar', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (149, N'Reunion', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (150, N'Romania', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (151, N'Russian Federation', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (152, N'Rwanda', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (153, N'Saint Kitts and Nevis', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (154, N'Saint Lucia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (155, N'Saint Vincent and the Grenadines', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (156, N'Samoa', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (157, N'Sao Tome and Principe', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (158, N'Saudi Arabia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (159, N'Senegal', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (160, N'Serbia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (161, N'Seychelles', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (162, N'Sierra Leone', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (163, N'Singapore', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (164, N'Slovak Republic (Slovakia)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (165, N'Slovenia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (166, N'Solomon Islands', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (167, N'Somalia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (168, N'South Africa', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (169, N'South Sudan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (170, N'Spain', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (171, N'Sri Lanka', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (172, N'Sudan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (173, N'Suriname', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (174, N'Sweden', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (175, N'Switzerland', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (176, N'Syria', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (177, N'Tajikistan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (178, N'Tanzania', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (179, N'Thailand', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (180, N'Timor Leste', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (181, N'Togo', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (182, N'Trinidad & Tobago', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (183, N'Tunisia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (184, N'Turkey', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (185, N'Turkmenistan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (186, N'Turks & Caicos Islands', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (187, N'Uganda', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (188, N'Ukraine', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (189, N'United Arab Emirates', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (190, N'United States of America (USA)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (191, N'Uruguay', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (192, N'Uzbekistan', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (193, N'Venezuela', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (194, N'Vietnam', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (195, N'Virgin Islands (UK)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (196, N'Virgin Islands (US)', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (197, N'Yemen', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (198, N'Zambia', 1)
INSERT [dbo].[tb_cat_countries] ([IdCatCountry], [Country], [BitActive]) VALUES (199, N'Zimbabwe', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_cat_countries] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_ports_in_out] ON 

INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (1, N'Islamabad Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (2, N'Lahore Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (3, N'Peshawar Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (4, N'Karachi Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (5, N'Quetta Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (6, N'Multan Airport', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (7, N'Karachi Sea Port', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (8, N'Ghassbandar Sea Port', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (9, N'Port Bin Qasim', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (10, N'Taftan Land Route', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (11, N'Gwadar Sea Port', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (12, N'Sost Land Route', 1)
INSERT [dbo].[tb_cat_ports_in_out] ([IdPorts], [DescPorts], [BitActive]) VALUES (13, N'Siakot Airport', 1)
SET IDENTITY_INSERT [dbo].[tb_cat_ports_in_out] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_purpose_visited] ON 

INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (1, N'Pilgrim Tourist', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (2, N'Deeni Madaris', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (3, N'Tourist/Visit', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (4, N'Visa in your inbox', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (5, N'Study', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (6, N'Business', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (7, N'Tabligh', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (8, N'Diplomat', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (9, N'Domestic Aide', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (10, N'Family Visit', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (11, N'Others', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (12, N'Jounalist', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (13, N'Work', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (14, N'Ngo/Ingo', 1)
INSERT [dbo].[tb_cat_purpose_visited] ([IdPurpose], [DescPurpose], [BitActive]) VALUES (15, N'Mountaineering And Trekking', 1)
SET IDENTITY_INSERT [dbo].[tb_cat_purpose_visited] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_types_visas] ON 

INSERT [dbo].[tb_cat_types_visas] ([IdTypeVisa], [TypeVisa], [BitActive]) VALUES (1, N'Single Entry', 1)
INSERT [dbo].[tb_cat_types_visas] ([IdTypeVisa], [TypeVisa], [BitActive]) VALUES (2, N'Double Entry', 1)
INSERT [dbo].[tb_cat_types_visas] ([IdTypeVisa], [TypeVisa], [BitActive]) VALUES (3, N'Multiple Entry', 1)
SET IDENTITY_INSERT [dbo].[tb_cat_types_visas] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_types_visas_applied] ON 

INSERT [dbo].[tb_cat_types_visas_applied] ([IdVisaAp], [TypeVisa], [BitActive]) VALUES (1, N'Business', 1)
INSERT [dbo].[tb_cat_types_visas_applied] ([IdVisaAp], [TypeVisa], [BitActive]) VALUES (2, N'Tourist', 1)
INSERT [dbo].[tb_cat_types_visas_applied] ([IdVisaAp], [TypeVisa], [BitActive]) VALUES (3, N'Family', 1)
SET IDENTITY_INSERT [dbo].[tb_cat_types_visas_applied] OFF
SET IDENTITY_INSERT [dbo].[tb_cat_visas_times] ON 

INSERT [dbo].[tb_cat_visas_times] ([IdVisasTime], [Description], [BitActive]) VALUES (1, N'Less than 01 Month', 1)
INSERT [dbo].[tb_cat_visas_times] ([IdVisasTime], [Description], [BitActive]) VALUES (2, N'06 Month', 1)
INSERT [dbo].[tb_cat_visas_times] ([IdVisasTime], [Description], [BitActive]) VALUES (3, N'01 Year', 1)
INSERT [dbo].[tb_cat_visas_times] ([IdVisasTime], [Description], [BitActive]) VALUES (4, N'02 Years', 1)
INSERT [dbo].[tb_cat_visas_times] ([IdVisasTime], [Description], [BitActive]) VALUES (5, N'05 Years', 1)
SET IDENTITY_INSERT [dbo].[tb_cat_visas_times] OFF
SET IDENTITY_INSERT [dbo].[tb_countries] ON 

INSERT [dbo].[tb_countries] ([IdCountry], [Name], [DateOfEntry], [BitActive]) VALUES (1, N'PAKISTAN', CAST(N'2021-10-22T23:57:07.840' AS DateTime), 1)
INSERT [dbo].[tb_countries] ([IdCountry], [Name], [DateOfEntry], [BitActive]) VALUES (2, N'CUBA', CAST(N'2021-10-22T23:57:23.390' AS DateTime), 0)
INSERT [dbo].[tb_countries] ([IdCountry], [Name], [DateOfEntry], [BitActive]) VALUES (3, N'RUSIA', CAST(N'2021-10-22T23:57:37.887' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tb_countries] OFF
SET IDENTITY_INSERT [dbo].[tb_customersAVS] ON 

INSERT [dbo].[tb_customersAVS] ([IdCustomer], [IdCountry], [RegisteredMail], [Pass], [Seed], [DateOfEntry], [DateValidity]) VALUES (7, 1, N'emendozag31@gmail.com', N'GYSKKcF4wAwJglb+TuhmIw==', N'customerseed', CAST(N'2021-10-30T01:14:36.720' AS DateTime), CAST(N'2022-10-30T01:14:36.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_customersAVS] OFF
SET IDENTITY_INSERT [dbo].[tb_formularies] ON 

INSERT [dbo].[tb_formularies] ([IdForm], [IdCountry], [IdCustomer], [IdStatus], [DateOfEntry]) VALUES (6, 1, 7, 1, CAST(N'2021-10-30T01:14:36.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_formularies] OFF
SET IDENTITY_INSERT [dbo].[tb_status_forms] ON 

INSERT [dbo].[tb_status_forms] ([IdStatus], [Description], [BitActive]) VALUES (1, N'PRE-CAPTURE', 1)
INSERT [dbo].[tb_status_forms] ([IdStatus], [Description], [BitActive]) VALUES (2, N'CAPTURED', 1)
INSERT [dbo].[tb_status_forms] ([IdStatus], [Description], [BitActive]) VALUES (3, N'CANCELED', 1)
INSERT [dbo].[tb_status_forms] ([IdStatus], [Description], [BitActive]) VALUES (4, N'APPROVED', 1)
SET IDENTITY_INSERT [dbo].[tb_status_forms] OFF
SET IDENTITY_INSERT [dbo].[tb_types_passports] ON 

INSERT [dbo].[tb_types_passports] ([IdTypePass], [TypePass], [BitActive]) VALUES (1, N'Diplomatic', 1)
INSERT [dbo].[tb_types_passports] ([IdTypePass], [TypePass], [BitActive]) VALUES (2, N'Official / Service', 1)
INSERT [dbo].[tb_types_passports] ([IdTypePass], [TypePass], [BitActive]) VALUES (3, N'Ordinary', 1)
SET IDENTITY_INSERT [dbo].[tb_types_passports] OFF
ALTER TABLE [dbo].[tb_acompanying_family]  WITH CHECK ADD FOREIGN KEY([IdFam])
REFERENCES [dbo].[tb_family_details] ([IdFam])
GO
ALTER TABLE [dbo].[tb_bank_family]  WITH CHECK ADD FOREIGN KEY([IdFam])
REFERENCES [dbo].[tb_family_details] ([IdFam])
GO
ALTER TABLE [dbo].[tb_childrens_familiy]  WITH CHECK ADD FOREIGN KEY([IdFam])
REFERENCES [dbo].[tb_family_details] ([IdFam])
GO
ALTER TABLE [dbo].[tb_conctactDetails]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_conctactDetails]  WITH CHECK ADD FOREIGN KEY([IdCatCountry])
REFERENCES [dbo].[tb_cat_countries] ([IdCatCountry])
GO
ALTER TABLE [dbo].[tb_convictions_travel]  WITH CHECK ADD FOREIGN KEY([IdCatCountry])
REFERENCES [dbo].[tb_cat_countries] ([IdCatCountry])
GO
ALTER TABLE [dbo].[tb_customersAVS]  WITH NOCHECK ADD FOREIGN KEY([IdCountry])
REFERENCES [dbo].[tb_countries] ([IdCountry])
GO
ALTER TABLE [dbo].[tb_deported_travel]  WITH CHECK ADD FOREIGN KEY([IdCatCountry])
REFERENCES [dbo].[tb_cat_countries] ([IdCatCountry])
GO
ALTER TABLE [dbo].[tb_family_details]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_formularies]  WITH CHECK ADD FOREIGN KEY([IdCountry])
REFERENCES [dbo].[tb_countries] ([IdCountry])
GO
ALTER TABLE [dbo].[tb_formularies]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[tb_customersAVS] ([IdCustomer])
GO
ALTER TABLE [dbo].[tb_formularies]  WITH CHECK ADD FOREIGN KEY([IdStatus])
REFERENCES [dbo].[tb_status_forms] ([IdStatus])
GO
ALTER TABLE [dbo].[tb_passportDetails]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_pastJobs]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_personalData]  WITH CHECK ADD FOREIGN KEY([IdCatCountry])
REFERENCES [dbo].[tb_cat_countries] ([IdCatCountry])
GO
ALTER TABLE [dbo].[tb_personalData]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_sponsors]  WITH CHECK ADD FOREIGN KEY([IdConctact])
REFERENCES [dbo].[tb_conctactDetails] ([IdConctact])
GO
ALTER TABLE [dbo].[tb_travel_history]  WITH CHECK ADD FOREIGN KEY([IdForm])
REFERENCES [dbo].[tb_formularies] ([IdForm])
GO
ALTER TABLE [dbo].[tb_Url_activation]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[tb_customersAVS] ([IdCustomer])
GO
ALTER TABLE [dbo].[tb_users]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[tb_roles] ([IdRol])
GO
/****** Object:  StoredProcedure [dbo].[sp_insertCustomer]    Script Date: 11/2/2021 1:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertCustomer] 
	@IdCountry	INT,
	@Mail		VARCHAR(100),
	@Pass		VARCHAR(200),
	@Msje		VARCHAR(100) OUT

AS
BEGIN
	
	DECLARE 
		@msjeOut VARCHAR(100)
		,@IdCustomer INT

	SET NOCOUNT ON;

	INSERT INTO tb_customersAVS
	(
		IdCountry
		,RegisteredMail
		,Pass
		,Seed
		,DateOfEntry
		,DateValidity
	)
	VALUES
	(
		@IdCountry
		,@Mail
		,@Pass
		,'customerseed'
		,GETDATE()
		,DATEADD(YEAR,1, GETDATE())
	)

SET @IdCustomer = @@IDENTITY
-- ---------------------------------------
-- Created form
-- ---------------------------------------
	INSERT INTO tb_formularies
	(
		IdCountry
		,IdCustomer
		,IdStatus
		,DateOfEntry
	)
	VALUES
	(
		@IdCountry
		,@IdCustomer
		,1 --PRE-CAPTURE
		,GETDATE()
	)

	IF(@@ROWCOUNT >	1)
		BEGIN
		
			SELECT @msjeOut = 'OK'
			SET @Msje = @msjeOut

		END--END IF


END

GO
