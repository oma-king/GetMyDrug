USE [GetMyDrug]
GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 17/05/2023 00:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Dosing] [varchar](50) NULL,
	[Form] [varchar](50) NULL,
	[Presentation] [varchar](50) NULL,
	[GenericName] [varchar](255) NULL,
	[Labo] [varchar](255) NULL,
	[Country] [varchar](50) NULL,
	[AMM] [varchar](50) NULL,
	[GP] [varchar](50) NULL,
 CONSTRAINT [PK_Drugs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacies]    Script Date: 17/05/2023 00:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Address] [nvarchar](499) NULL,
	[Gouvernorat] [varchar](50) NULL,
	[Delegation] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
 CONSTRAINT [PK_Pharmacies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 17/05/2023 00:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDrug] [int] NOT NULL,
	[IdPharmacy] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Drugs] ON 

INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (1, N'ACTICIL ', N'30 mg ', N'Comprimé ', N'B/30 ', N'AMBROXOL ', N'GALPHARMA ', N'Tunisie ', N'9223451', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (2, N'ACTICIL ', N'0.6% ', N'Solution buvable ', N'FL/150 ml ', N'AMBROXOL ', N'GALPHARMA ', N'Tunisie ', N'9223452', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (3, N'ACTISOUFRE ', N' ', N'Solution pour pulvérisation buccale ', N'FL/100 ml ', N'MONOSULFURE DE SODIUM+LEVURES ', N'GRIMBERG ', N'FRANCE ', N'10173041', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (4, N'ACTISOUFRE ', N'4mg/50mg/10 ml ', N'Suspension buvable ou nasale ', N'B/30Ampoules/10 ml ', N'MONOSULFURE DE SODIUM+LEVURES ', N'GRIMBERG ', N'FRANCE ', N'10173042', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (5, N'ACTIVEX ADULTE ', N' ', N'Granulés pour solution buvable ', N'B/8 sachets ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'TERIAK ', N'Tunisie ', N'9253871', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (6, N'AMBROGAM ', N'0.6% ', N'Solution buvable ', N'FL/150ML ', N'AMBROXOL ', N'PHARMAGHREB ', N'Tunisie ', N'9013492', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (7, N'AMBROGAM 0.3% ', N'0.3% ', N'Solution buvable ', N'Fl/150 ml ', N'AMBROXOL ', N'PHARMAGHREB ', N'Tunisie ', N'9013491', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (8, N'BROMHEXINE ', N'4 MG ', N'Comprimé pelliculé ', N'B/500 ', N'BROMHEXINE ', N'SIPHAT ', N'Tunisie ', N'9003141H ', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (9, N'BROMHEXINE ', N'4 mg ', N'Comprimé pelliculé ', N'B/1000 ', N'BROMHEXINE ', N'SIPHAT ', N'Tunisie ', N'9003142H ', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (10, N'BROMHEXINE ', N'4 MG ', N'Comprimé pelliculé ', N'B/40 ', N'BROMHEXINE ', N'SIPHAT ', N'Tunisie ', N'9003141', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (11, N'BROMISOL ', N'0.2% ', N'Solution buvable ', N'FL/60ML ', N'BROMHEXINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023461', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (12, N'BRONCHOKOD ', N'0,05', N'Sirop ', N'FL/300 ML ', N'CARBOCISTEINE ', N'SIMED ', N'Tunisie ', N'9083021', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (13, N'BRONCHOKOD ', N'0,02', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'SIMED ', N'Tunisie ', N'9083022', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (14, N'BRONCHOKOD ', N'0,05', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'SIMED ', N'Tunisie ', N'9083021B ', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (15, N'BRONCHOKOD SANS SUCRE ', N'0,05', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'SIMED ', N'Tunisie ', N'9083023B ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (16, N'BRONCHOKOD SANS SUCRE ', N'0,05', N'Solution buvable ', N'FL/300 ML ', N'CARBOCISTEINE ', N'SIMED ', N'Tunisie ', N'9083023', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (17, N'BRONCHOTHIOL ', N'0,02', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'SIPHAT ', N'Tunisie ', N'9003111', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (18, N'BRONCHOTHIOL ', N'0,05', N'Sirop ', N'FL/200 ML ', N'CARBOCISTEINE ', N'SIPHAT ', N'Tunisie ', N'9003112', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (19, N'BRONCHOTUX ', N'0,05', N'Sirop ', N'FL/180 ml ', N'CARBOCISTEINE ', N'WEST PHARMA ', N'Tunisie ', N'9293231', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (20, N'BRONCHOTUX ', N'0,05', N'Sirop ', N'FL/125 ml ', N'CARBOCISTEINE ', N'WEST PHARMA ', N'Tunisie ', N'9293232', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (21, N'BRUNAC ', N'0,05', N'Collyre ', N'FL/5ML ', N'ACETYLCYSTEINE ', N'BRUSCHETTINI ', N'ITALIE ', N'7583061', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (22, N'CALMATUX ', N' ', N'Comprimé pelliculé ', N'B/20 ', N'CODEINE+CODETHYLINE+ESPECES PECTORALES ', N'SIPHAT ', N'Tunisie ', N'9000054', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (23, N'CALMATUX ADULTE ', N' ', N'Sirop ', N'FL/200 ML ', N'CODEINE+ACIDE ASCORBIQUE+ESPECES PECTORALES ', N'SIPHAT ', N'Tunisie ', N'9000051', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (24, N'CALMATUX ENFANT ', N' ', N'Sirop ', N'FL/125 ML ', N'CODEINE+CODETHYLINE+ESPECES PECTORALES ', N'SIPHAT ', N'Tunisie ', N'9000052', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (25, N'CALMATUX NOURRISSONS ', N' ', N'Sirop ', N'FL/90 ML ', N'VITAMINE C+ESPECES PECTORALES+SODIUM BENZOATE ', N'SIPHAT ', N'Tunisie ', N'9000053', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (26, N'CARBOGAM ADULTES SANS SUCRE ', N'0,05', N'Solution buvable ', N'FL/300 ML ', N'CARBOCISTEINE ', N'PHARMAGHREB ', N'Tunisie ', N'9013471', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (27, N'CARBOSTINE ADULTES ', N'0,05', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'PHARMADERM ', N'Tunisie ', N'9053101', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (28, N'CARBOSTINE ENFANT ', N'0,02', N'Sirop ', N'FL/125 ML ', N'CARBOCISTEINE ', N'PHARMADERM ', N'Tunisie ', N'9053103', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (29, N'CARBOSTINE SANS SUCRE ADULTE ', N'0,05', N'Solution buvable ', N'FL/200 ML ', N'CARBOCISTEINE ', N'PHARMADERM ', N'Tunisie ', N'9053102', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (30, N'CODENFAN ', N'1MG/ML ', N'Sirop ', N'FL/200 ML ', N'CODEINE ', N'BOUCHARA-RECORDATI ', N'FRANCE ', N'5225013', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (31, N'DOLIPREX ', N' ', N'Poudre pour solution orale ', N'B/8 sachets ', N'PARACETAMOL+PSEUDOEPHEDRINE+VITAMINE C ', N'WINTHROP PHARMA TUNISIE ', N'Tunisie ', N'9103971', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (32, N'DRICOD ', N'0.150 % ', N'Sirop ', N'FL/200 ml ', N'BUTAMIRATE ', N'SIMED ', N'Tunisie ', N'9083551', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (33, N'DRICOD ', N'150mg/ml ', N'Sirop ', N'FL/100 ml ', N'BUTAMIRATE ', N'SIMED ', N'Tunisie ', N'9083552', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (34, N'DRILL EXPECTORANT SANS SUCRE ADULTES ', N'0,05', N'Sirop ', N'FL/200 ML ', N'CARBOCISTEINE ', N'PIERRE FABRE MEDICAMENT PRODUCTION TUNISIE ', N'Tunisie ', N'ST9323061 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (35, N'DRILL TOUX SECHE DEXTROMETORPHANE ADULTE 5mg/5ml SANS SUCRE ', N'0.3% ', N'Sirop ', N'FL/150 ML ', N'DEXTROMETHORPHANE ', N'SIMED ', N'Tunisie ', N'9083212', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (36, N'DRILL TOUX SECHE DEXTROMETORPHANE ENFANT 5mg/5ml SANS SUCRE ', N' ', N'Sirop ', N'FL/150 ML ', N'DEXTROMETHORPHANE ', N'SIMED ', N'Tunisie ', N'9083211', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (37, N'EUCAMPHINE ', N' ', N'Sirop ', N'FL/150 ML ', N'CODEINE+EUCALYPTOL+GAIACOL ', N'SIPHAT ', N'Tunisie ', N'9000134', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (38, N'EUPHON ', N' ', N'Sirop ', N'FL/150 ML ', N'CODEINE+ERYSIMUM ', N'MAYOLY SPINDLER ', N'FRANCE ', N'5910022', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (39, N'FERVEX ADULTE ', N' ', N'Poudre pour solution orale ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'IPS (Industrie Pharmaceutique Said) ', N'Tunisie ', N'9133181', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (40, N'FERVEX ADULTE SANS SUCRE ', N' ', N'Poudre pour solution orale ', N'B/8 Sachets/5 gr ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'IPS (Industrie Pharmaceutique Said) ', N'Tunisie ', N'9133182', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (41, N'FERVEX ENFANT ', N' ', N'Poudre pour solution orale ', N'B/8 SACHETS/3 GR ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'IPS (Industrie Pharmaceutique Said) ', N'Tunisie ', N'9133183', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (42, N'FIBREX ADULTE ', N'500 mg/25 mg/200 mg ', N'Poudre pour solution orale ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'PHARMACARE ', N'Tunisie ', N'9343232', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (43, N'FIBREX ADULTE ', N'500 mg/25 mg/200 mg ', N'Poudre pour solution orale ', N'B/12 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'PHARMACARE ', N'Tunisie ', N'9343234', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (44, N'FIBREX ENFANT ', N'280 mg/ 10 mg/100 mg ', N'Granulés pour solution buvable ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'PHARMACARE ', N'Tunisie ', N'9343231', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (45, N'FIBREX SANS SUCRE ADULTE ', N'500 mg/25 mg/200 mg ', N'Granulés pour solution buvable ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'PHARMACARE ', N'Tunisie ', N'9343233', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (46, N'FLUMAX ', N'0.3% (15mg/5ml) ', N'Solution buvable ', N'FL/180ML ', N'AMBROXOL ', N'ADWYA ', N'Tunisie ', N'9044241', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (47, N'FLUMAX ', N'0.6% (30mg/5ml) ', N'Solution buvable ', N'FL/180ML ', N'AMBROXOL ', N'ADWYA ', N'Tunisie ', N'9044242', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (48, N'GOLDIX DUO ', N' ', N'Sirop ', N'B/12 sachets-dose de 15 ml ', N'DEXTROMETHORPHANE+PHENYLEPHRINE+PARACETAMOL+DOXYLAMINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9024015', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (49, N'GOLDIX JOUR ', N' ', N'Sirop ', N'Flacon/150 ml ', N'DEXTROMETHORPHANE+PHENYLEPHRINE+PARACETAMOL ', N'OPALIA PHARMA ', N'Tunisie ', N'9024011', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (50, N'GOLDIX JOUR ', N' ', N'Sirop ', N'B/12 sachets ', N'DEXTROMETHORPHANE+PHENYLEPHRINE+PARACETAMOL ', N'OPALIA PHARMA ', N'Tunisie ', N'9024013', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (51, N'GOLDIX NUIT ', N' ', N'Sirop ', N'FL/90 ml ', N'DEXTROMETHORPHANE+DOXYLAMINE+PARACETAMOL ', N'OPALIA PHARMA ', N'Tunisie ', N'9024012', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (52, N'GOLDIX NUIT ', N' ', N'Sirop ', N'B/12 sachets ', N'DEXTROMETHORPHANE+DOXYLAMINE+PARACETAMOL ', N'OPALIA PHARMA ', N'Tunisie ', N'9024014', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (53, N'GRIPEX ADULTES ', N' ', N'Poudre pour solution orale ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223162', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (54, N'GRIPEX ADULTES ', N' ', N'Poudre pour solution orale ', N'B/12 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223165', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (55, N'GRIPEX ENFANTS ', N' ', N'Poudre pour solution orale ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223161', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (56, N'GRIPEX ENFANTS ', N' ', N'Poudre pour solution orale ', N'B/12 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223164', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (57, N'GRIPEX SANS SUCRE ADULTES ', N' ', N'Poudre pour solution orale ', N'B/8 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223163', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (58, N'GRIPEX SANS SUCRE ADULTES ', N' ', N'Poudre pour solution orale ', N'B/12 SACHETS ', N'PARACETAMOL+PHENIRAMINE+VITAMINE C ', N'GALPHARMA ', N'Tunisie ', N'9223166', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (59, N'LIBLAB ', N'35.7mg ', N'Comprimés à sucer ', N'B/20 ', N'EXTRAIT SEC DE FEUILLE DE LIERRE ', N'Dar Al Dawa Development and Investment Co.Ltd ', N'Jordanie ', N'5403261', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (60, N'MUCARE 200 ', N'200 mg ', N'Granulés pour solution buvable ', N'B/20 sachets ', N'ACETYLCYSTEINE ', N'PHARMACARE ', N'Tunisie ', N'9343391', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (61, N'MUCOLARE ', N'0,05', N'Sirop ', N'Fl/150 ml ', N'CARBOCISTEINE ', N'GALPHARMA ', N'Tunisie ', N'9223062', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (62, N'MUCOLARE ', N'0,02', N'Sirop ', N'Fl/90 ml ', N'CARBOCISTEINE ', N'GALPHARMA ', N'Tunisie ', N'9223061', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (63, N'MUCOLARE ', N'0,05', N'Sirop ', N'Fl/300 ml ', N'CARBOCISTEINE ', N'GALPHARMA ', N'Tunisie ', N'9223063', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (64, N'MUCOLARE ', N'0,02', N'Sirop ', N'Fl/125 ml ', N'CARBOCISTEINE ', N'GALPHARMA ', N'Tunisie ', N'9223064', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (65, N'MUCOLYSE ', N'200 mg ', N'Poudre pour solution orale ', N'B/30 SACHETS ', N'ACETYLCYSTEINE ', N'GALPHARMA ', N'Tunisie ', N'9223101', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (66, N'MUCOLYTE ', N'4 mg/5 ml ', N'Sirop ', N'FL/100 ML ', N'BROMHEXINE ', N'JULPHAR ', N'United Arab Emirates ', N'7473042', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (67, N'MUCOSOL ', N'0,02', N'Sirop ', N'FL/200 GR ', N'CARBOCISTEINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023191', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (68, N'MUCOSOL ADULTE ', N'0,05', N'Sirop ', N'B/12 sachets/15 gr ', N'CARBOCISTEINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023195', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (69, N'MUCOSOL ADULTES ', N'0,05', N'Sirop ', N'FL/200 GR ', N'CARBOCISTEINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023192', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (70, N'MUCULATOR ', N'200 MG ', N'Poudre pour suspension orale ', N'B/30 S/3GR ', N'ACETYLCYSTEINE ', N'ADWYA ', N'Tunisie ', N'9043231', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (71, N'MUXOL ', N'30 MG ', N'Comprimé ', N'B/30 ', N'AMBROXOL ', N'BIOCODEX ', N'FRANCE ', N'5193071', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (72, N'MUXOL ', N'0.3% ', N'Solution buvable ', N'FL/180ML ', N'AMBROXOL ', N'TERIAK ', N'Tunisie ', N'9253321', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (73, N'MUXOL FORT ', N'0.6% ', N'Solution buvable ', N'FL/180 ml ', N'AMBROXOL ', N'TERIAK ', N'Tunisie ', N'9253322', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (74, N'NEO-CODION ADULTES ', N' ', N'Sirop ', N'FL/180 ML ', N'CODEINE CAMPHOSULFONATE ', N'OPALIA PHARMA ', N'Tunisie ', N'9024181', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (75, N'NEO-CODION ADULTES ', N' ', N'Sirop ', N'FL/180 ML ', N'CODEINE CAMPHOSULFONATE ', N'ADWYA ', N'Tunisie ', N'9043452', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (76, N'NEO-CODION ENFANT ', N' ', N'Sirop ', N'FL/125 ML ', N'CODEINE+SODIUM BENZOATE+VITAMINE C ', N'BOUCHARA-RECORDATI ', N'FRANCE ', N'5220082', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (77, N'NEO-CODION ENFANT ', N' ', N'Sirop ', N'FL/125 ML ', N'CODEINE+SODIUM BENZOATE+VITAMINE C ', N'ADWYA ', N'Tunisie ', N'9043451', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (78, N'NOVATOUX ADULTES TOUX SÈCHE 0.3 % ', N'(15 mg/5ml) ', N'Sirop ', N'FL/150 ml ', N'DEXTROMETHORPHANE ', N'ADWYA ', N'Tunisie ', N'9044272', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (79, N'NOVATOUX ENFANTS ', N'0.1% ', N'Sirop ', N'FL/150 ml ', N'DEXTROMETHORPHANE ', N'ADWYA ', N'Tunisie ', N'9044271', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (80, N'PAXELADINE ', N'0.2 % ', N'Sirop ', N'FL/125 ML ', N'OXELADINE ', N'TERIAK ', N'Tunisie ', N'9143031', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (81, N'PECTO 6 ADULTES ', N' ', N'Sirop ', N'FL/180 ML ', N'CODEINE+CODETHYLINE+ESPECES PECTORALES ', N'SIMED ', N'Tunisie ', N'9083081', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (82, N'PECTO 6 ENFANTS ', N' ', N'Sirop ', N'FL/150 ML ', N'CODEINE+ESPECES PECTORALES ', N'SIMED ', N'Tunisie ', N'9083082', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (83, N'PECTO 6 NOURRISSON ', N' ', N'Sirop ', N'FL/125 ML ', N'SODIUM BENZOATE+SODIUM BROMURE+THIOCOLOR ', N'SIMED ', N'Tunisie ', N'9083083', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (84, N'PECTOLYSE ADULTE SANS SUCRE ', N'0.3 % ', N'Sirop ', N'FL/125 ML ', N'DEXTROMETHORPHANE ', N'GALPHARMA ', N'Tunisie ', N'9223303', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (85, N'PECTOLYSE ADULTES ', N'0.3% ', N'Sirop ', N'FL/125 ML ', N'DEXTROMETHORPHANE ', N'GALPHARMA ', N'Tunisie ', N'9223302', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (86, N'PECTOLYSE ENFANT ', N'0.1% ', N'Sirop ', N'FL/125 ML ', N'DEXTROMETHORPHANE ', N'GALPHARMA ', N'Tunisie ', N'9223301', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (87, N'PECTORAL ADULTE ', N' ', N'Sirop ', N'Fl/200 ml ', N'CODEINE ', N'SIPHAT ', N'Tunisie ', N'9003751', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (88, N'PECTORAL ADULTE SANS SUCRE ', N' ', N'Solution buvable ', N'Fl/200 ml ', N'CODEINE ', N'SIPHAT ', N'Tunisie ', N'9003754', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (89, N'PECTORAL ENFANT ', N' ', N'Sirop ', N'FL/200 ML ', N'CODEINE+ESPECES PECTORALES ', N'SIPHAT ', N'Tunisie ', N'9003752', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (90, N'PECTORAL ENFANT ', N' ', N'Sirop ', N'FL/125 ml ', N'CODEINE+ESPECES PECTORALES ', N'SIPHAT ', N'Tunisie ', N'9003753', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (91, N'POLERY ADULTES ', N' ', N'Sirop ', N'FL/ 200 ML ', N'CODEINE+ERYSIMUM ', N'PIERRE FABRE MEDICAMENT PRODUCTION TUNISIE ', N'Tunisie ', N'ST9323071 ', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (92, N'POLERY ENFANT ', N' ', N'Sirop ', N'FL/ 125 ML ', N'PHOLCODINE+ERYSIMUM ', N'PIERRE FABRE MEDICAMENT PRODUCTION TUNISIE ', N'Tunisie ', N'ST9323072 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (93, N'PROSPAN ', N'0.7 gr ', N'Sirop ', N'FL/100ML ', N'EXTRAIT SEC DE FEUILLE DE LIERRE ', N'IBN AL BAYTAR ', N'Tunisie ', N'ST9073711 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (94, N'PULMOSERUM ', N' ', N'Solution buvable ', N'FL/200 ML ', N'CODEINE+GAIACOL ', N'BAILLY-CREAT ', N'FRANCE ', N'5020011', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (95, N'RHINATHIOL ', N'0,05', N'Sirop ', N'FL/300ML ', N'CARBOCISTEINE ', N'WINTHROP PHARMA TUNISIE ', N'Tunisie ', N'ST9103942 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (96, N'RHINATHIOL ', N'0,02', N'Sirop ', N'FL/125ML ', N'CARBOCISTEINE ', N'WINTHROP PHARMA TUNISIE ', N'Tunisie ', N'ST9103941 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (97, N'RHINATHIOL ', N'0,02', N'Sirop ', N'FL/125ML ', N'CARBOCISTEINE ', N'SANOFI AVENTIS PHARMA TUNISIE ', N'Tunisie ', N'ST9263051 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (98, N'RHINATHIOL ', N'0,05', N'Sirop ', N'FL/300ML ', N'CARBOCISTEINE ', N'SANOFI AVENTIS PHARMA TUNISIE ', N'Tunisie ', N'ST9263052 ', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (99, N'RHUVEX ADULTE TOUX SECHE ', N'0.3% ', N'Sirop ', N'B/1FL/150ML ', N'DEXTROMETHORPHANE ', N'TERIAK ', N'Tunisie ', N'9254072', N'Générique ')
GO
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (100, N'RHUVEX ENFANTS TOUX SECHE ', N'0.1% ', N'Sirop ', N'B/1FL/150ML ', N'DEXTROMETHORPHANE ', N'TERIAK ', N'Tunisie ', N'9254071', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (101, N'SIROP DES VOSGES TOUX SECHE SANS SUCRE SOLUTION BUVABLE ', N' ', N'Sirop ', N'FL/200ML ', N'PHOLCODINE ', N'TERIAK ', N'Tunisie ', N'9253371', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (102, N'SOLACY ADULTE ', N' ', N'Gélule ', N'B/45 ', N'L CYSTINE+SOUFRE SUBLIME+VIT A ', N'GRIMBERG ', N'FRANCE ', N'10173031', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (103, N'SOLACY PEDIATRIQUE ', N' ', N'Comprimé soluble ', N'B/60 ', N'L CYSTINE+SOUFRE+VITAMINE A+LEVURES ', N'GRIMBERG ', N'FRANCE ', N'1073032', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (104, N'SURBRONC ', N'30 mg/5ml ', N'Solution buvable ', N'FL/150 ML ', N'AMBROXOL ', N'BOEHRINGER INGELHEIM FRANCE ', N'FRANCE ', N'5213062', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (105, N'TUSSIDANE SANS SUCRE ', N'1.5mg/ml ', N'Solution buvable ', N'FL/125ML ', N'DEXTROMETHORPHANE ', N'ELERTE FRANCE ', N'FRANCE ', N'14803011', N'Princeps ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (106, N'TUSSIPAX ', N' ', N'Sirop ', N'FL/125ML ', N'DEXTROMETHORPHANE+GUAIFENESINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023481', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (107, N'TUSSIPAX ENFANT ', N' ', N'Sirop ', N'FL/125ML ', N'DEXTROMETHORPHANE+GUAIFENESINE ', N'OPALIA PHARMA ', N'Tunisie ', N'9023482', N'Générique ')
INSERT [dbo].[Drugs] ([Id], [Name], [Dosing], [Form], [Presentation], [GenericName], [Labo], [Country], [AMM], [GP]) VALUES (108, N'UROMITEXAN ', N'400 MG ', N'Solution injectable ', N'B/5/4ML ', N'MESNA ', N'BAXTER ONCOLOGY GmbH ', N'Germany ', N'2613021H ', N'Princeps ')
SET IDENTITY_INSERT [dbo].[Drugs] OFF
GO
SET IDENTITY_INSERT [dbo].[Pharmacies] ON 

INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (1, N'PHARMACIE KSOURI', N'1 Rue 4001', N'TUNIS', N'COMMUNE TUNIS', N'36.7946259', N'10.1318199')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (2, N'BOUZOUITA MOUFIDA', N'1 rue du lac léman - imm helal les berges du lac', N'TUNIS', N'COMMUNE TUNIS', N'36.8378293', N'10.2389748')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (3, N'KESSENTINI MOHAMED', N'10 Avenue Khaireddie Pacha', N'TUNIS', N'COMMUNE TUNIS', N'36.819438', N'10.1851722')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (4, N'AMRI NEE ACHOUR SOUAD', N'10 AVENUE TAHAR BEN ACHOUR Cité CNRPS El Manar II', N'TUNIS', N'COMMUNE TUNIS', N'36.836273', N'10.1739317')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (5, N'DRIRA OTHMAN', N'10 Rue d''angleterre', N'TUNIS', N'COMMUNE TUNIS', N'36.7960197', N'10.1778941')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (6, N'KHABTHANI OMAR', N'10 RUE D''ESPAGNE - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7971292', N'10.176793')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (7, N'KHESSAIRI HABIB', N'10 RUE MOHAMED MELKI EL OMRANE', N'TUNIS', N'COMMUNE TUNIS', N'36.8189151', N'10.1703364')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (8, N'BEL HADJ YAHIA MONCEF', N'11 RUE MAHRAJENE - CITE MAHRAJENE - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8295628', N'10.1790036')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (9, N'BEN HAMIDA FATMA', N'11 Rue Nicolas Beranger', N'TUNIS', N'COMMUNE TUNIS', N'36.7723229', N'10.1831389')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (10, N'BEN FREDJ SAMIHA', N'11,RUE 10114 EL OUARDIA IV', N'TUNIS', N'COMMUNE TUNIS', N'36.76579359999999', N'10.189937')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (11, N'BELLIL NOUREDDINE', N'110 Place Bab Souika', N'TUNIS', N'COMMUNE TUNIS', N'36.8053395', N'10.1688376')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (12, N'GRINA HABIBA', N'112 AVENUE LOUIS BRAILLE CITE KHADRA', N'TUNIS', N'COMMUNE TUNIS', N'36.8336031', N'10.1974963')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (13, N'DARGHOUTH GHALIA WASSILA', N'116 RUE 4128 - HRAIRIA 4', N'TUNIS', N'COMMUNE TUNIS', N'36.7842519', N'10.1089963')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (14, N'FENNIRA TAOUFIK', N'117 Avenue de la Liberté', N'TUNIS', N'COMMUNE TUNIS', N'36.8178472', N'10.1787738')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (15, N'CHEMLI FAOUZI', N'12 bis place BAB BNET', N'TUNIS', N'COMMUNE TUNIS', N'36.8038419', N'10.1661298')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (16, N'BEN MANSOUR HICHERI LATIFA', N'12 BOULEVARD DE LA MEDITERRANEE - EL KABARIA - EL MOUROUJ 2 - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.742285', N'10.1997442')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (17, N'KASBI MOHAMED HEDI', N'121 Avenue Jugurta Mutuelle-ville', N'TUNIS', N'COMMUNE TUNIS', N'36.8281143', N'10.1718582')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (18, N'ABDENNADHER MOHAMED RAMI', N'13,RUE ABOU ABDALLAH ESSOUFI CITE ETTAHRIR', N'TUNIS', N'COMMUNE TUNIS', N'36.8251408', N'10.1232066')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (19, N'CHERIF SONIA', N'131 Avenue Mustapha Khaznadar Mellassine', N'TUNIS', N'COMMUNE TUNIS', N'36.80078080000001', N'10.1523268')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (20, N'KARRAY AHMED', N'14 AVENUE EL MENZAH - EL MENZAH 1', N'TUNIS', N'COMMUNE TUNIS', N'36.8396719', N'10.1829325')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (21, N'BEN TKAYAT ABDELKERIM', N'14 Rue El Moez El Menzah', N'TUNIS', N'COMMUNE TUNIS', N'36.8355135', N'10.1794173')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (22, N'ABDELMOUMEN SLAHEDDINE', N'144 Rue 9042', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (23, N'BEN ZINA SLIM', N'147 Avenue de Londres Tunis', N'TUNIS', N'COMMUNE TUNIS', N'36.8056653', N'10.1751402')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (24, N'BAHRI KHALED', N'14bis,AVENUE EL FAOUZ-CITE IBN KHALDOUN', N'TUNIS', N'COMMUNE TUNIS', N'36.8260343', N'10.1388139')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (25, N'KAMMOUN MOHAMED', N'15 Avenue de Madrid 1006 Tunis', N'TUNIS', N'COMMUNE TUNIS', N'36.8074287', N'10.1786644')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (26, N'CHAHED EL ADHARI SAMIRA', N'15 Rue Ibn Nirzar Cité Ettahrir 2042', N'TUNIS', N'COMMUNE TUNIS', N'36.8247899', N'10.1287079')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (27, N'RATEL RIM', N'156 BAB SOUIKA TUNIS 1006', N'TUNIS', N'COMMUNE TUNIS', N'36.8042583', N'10.1672509')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (28, N'TRABELSI ABDELWAHEB', N'16 Rue d''Athène - bab behar', N'TUNIS', N'COMMUNE TUNIS', N'36.802578', N'10.1772654')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (29, N'MOKADDEM MOHAMED LASSAAD', N'16-18  AV. HABIB BOURGUIBA', N'TUNIS', N'COMMUNE TUNIS', N'36.8002528', N'10.185367')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (30, N'BOUASSIDA NOUREDDINE', N'17 Avenue des Etats Unies', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (31, N'FOURATI MEHDI', N'17 Rue Bab Souika', N'TUNIS', N'COMMUNE TUNIS', N'36.803801', N'10.1725761')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (32, N'CHAHED EL MUFTI FERIDA', N'18 Rue Abou El Kassem Chebbi', N'TUNIS', N'COMMUNE TUNIS', N'36.8826014', N'10.3369289')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (33, N'CHAOUCH ABDELKADER', N'18, RUE ABDENNABI - EL MENZAH 1 - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8396719', N'10.1829325')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (34, N'SASSI KHALED', N'187 Bis Rue de la Kasba', N'TUNIS', N'COMMUNE TUNIS', N'36.7984018', N'10.170543')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (35, N'FAKHFAKH LEILA EP KRICHEN', N'19 Avenue Hedi Chaker', N'TUNIS', N'COMMUNE TUNIS', N'36.8111529', N'10.1755939')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (36, N'AMOUS MOHAMED CHEDLY', N'2 AVENUE TAHAR SFAR- EL MANAR II -TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8424752', N'10.1592891')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (37, N'AJOUA AHMED', N'2 résidence esplanade - lotissement el houda 2', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (38, N'JARAYA ADEL', N'2 Rue Mahrajène Belvedère', N'TUNIS', N'COMMUNE TUNIS', N'36.8219921', N'10.1717264')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (39, N'CHOUIKHA MED ABDELWAHEB', N'2 Rue Omar Ibn Cheikh', N'TUNIS', N'COMMUNE TUNIS', N'36.8309629', N'10.195468')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (40, N'ARIANE DORRA', N'2, rue de la jeunesse - cite el khadra', N'TUNIS', N'COMMUNE TUNIS', N'36.8304736', N'10.196942')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (41, N'ZOUARI MALEK', N'20 Avenue Habib Thameur', N'TUNIS', N'COMMUNE TUNIS', N'36.8036584', N'10.1794124')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (42, N'OUAHCHI SAMI LOTFI', N'21 Avenue de Carthage', N'TUNIS', N'COMMUNE TUNIS', N'36.7962318', N'10.1817947')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (43, N'MAALEJ ELLOUMI RIM', N'21 Bis Rue du 13 Août', N'TUNIS', N'COMMUNE TUNIS', N'36.7986161', N'10.158183')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (44, N'LAKHOUA ELYES', N'22 avenue alain savary', N'TUNIS', N'COMMUNE TUNIS', N'36.8264', N'10.1828887')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (45, N'BEN HAMMADOU MOHAMED', N'22 RUE JAAFER BARMAKI MUTUELLE VILLE EL MENZAH TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8324058', N'10.1745278')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (46, N'BEN YAHMED MONCEF', N'22 Rue Nelsen Mandella', N'TUNIS', N'COMMUNE TUNIS', N'36.8095831', N'10.1816848')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (47, N'BEN GHOZZIA NESRINE', N'23 Place de Leader', N'TUNIS', N'COMMUNE TUNIS', N'36.7954264', N'10.1644247')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (48, N'KRIFA ZEINEB EP BAHRI', N'230 Rue Bab Saadoun', N'TUNIS', N'COMMUNE TUNIS', N'36.8074521', N'10.15492')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (49, N'TABKA RACHED', N'24 rue des oliviers', N'TUNIS', N'COMMUNE TUNIS', N'36.8036596', N'10.1269497')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (50, N'LAGHOUENEM BELGACEM', N'24,AVENUE DE FRANCE TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7991695', N'10.1768053')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (51, N'MEJRI M’SAHLI LASSAAD', N'25 RUE MOHAMED KARKOUB (RUE 7112 ANCIEN) - EL MANAR 3 - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8439625', N'10.1627711')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (52, N'BEN AYED SALWA EP KTARI', N'25, RUE AZIZA OTHMANA', N'TUNIS', N'COMMUNE TUNIS', N'36.838659', N'10.169729')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (53, N'FRIKHA CHOKRI', N'26 Avenue Jean Jaurès', N'TUNIS', N'COMMUNE TUNIS', N'36.8025609', N'10.1828558')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (54, N'BEN YAHIA HABIB', N'26 rue 6851 cité Etahrir Supérieur', N'TUNIS', N'COMMUNE TUNIS', N'36.8243877', N'10.1283227')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (55, N'KHABTHANI TAOUFIK', N'27 Avenue Abou Zakaria El Hafsi', N'TUNIS', N'COMMUNE TUNIS', N'36.9034784', N'10.292561')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (56, N'KECHRID MOUNIR', N'27 Boulevard Bab Mnara', N'TUNIS', N'COMMUNE TUNIS', N'36.793328', N'10.170016')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (57, N'BEN SLIMANE DORSAF', N'27 RUE JAZIRA TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7968032', N'10.1753813')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (58, N'ISMAIL GHASSEN', N'27 rue tahar mejri cite ezzouhour V', N'TUNIS', N'COMMUNE TUNIS', N'36.80497', N'10.1286131')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (59, N'BEN MARZOUK BASSEM', N'28 AVENUE KHEIREDDINE PACHA', N'TUNIS', N'COMMUNE TUNIS', N'36.8204637', N'10.1868116')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (60, N'TRITAR AHMED', N'29 AVENUE DE LA LIBERTE', N'TUNIS', N'COMMUNE TUNIS', N'36.8091955', N'10.1800431')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (61, N'MOALLA ISSAM', N'29 Avenue de Paris', N'TUNIS', N'COMMUNE TUNIS', N'36.8024185', N'10.1812471')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (62, N'BEN AYED KHANSA EP BEN HASSINE', N'29, AVENUE TAIEB M''HIRI - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8130644', N'10.1747402')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (63, N'BEL KAALOUL AHMED MOHAMED', N'3 AVENUE DE CARTHAGE TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7909143', N'10.1819955')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (64, N'KHEMIRI LASSAAD', N'3 Place Mongi Bali', N'TUNIS', N'COMMUNE TUNIS', N'36.7957314', N'10.1797221')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (65, N'EL FERKTAJI REMEKI DALANDA', N'3 Rue 10236 Km 5 Route de Zaghouan', N'TUNIS', N'COMMUNE TUNIS', N'36.8128239', N'10.1749892')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (66, N'BEN JEMAA HAJER', N'3 Rue casablanca Ras Tabia Cité Romana', N'TUNIS', N'COMMUNE TUNIS', N'36.8019573', N'10.1441923')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (67, N'SARRAY RADHIA', N'3 Rue de Rome', N'TUNIS', N'COMMUNE TUNIS', N'36.8002942', N'10.1785987')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (68, N'BEN ABDERRHMEN FAIZA', N'30 Avenue Ali Belhouane', N'TUNIS', N'COMMUNE TUNIS', N'36.8056057', N'10.171792')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (69, N'BSILA ALI', N'34 Avenue de Paris', N'TUNIS', N'COMMUNE TUNIS', N'36.8039472', N'10.1804162')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (70, N'DARGHOUTH RADHI', N'35 RUE 6597 - CITE IBN KHALDOUN - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8290847', N'10.1347012')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (71, N'AOUINI BERRICHE AROUA', N'37 Avenue Chedly Kallala', N'TUNIS', N'COMMUNE TUNIS', N'36.8154633', N'10.1339488')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (72, N'BEN LAMINE DALY RADHIA', N'38 RUE 6670 CITE IBN KHALDOUN', N'TUNIS', N'COMMUNE TUNIS', N'36.824144', N'10.1380787')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (73, N'EL MOUDIR MOLKA', N'39 Place Halfaouine', N'TUNIS', N'COMMUNE TUNIS', N'36.8081245', N'10.1674369')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (74, N'BOUZAYEN MILED NEFISSA', N'4 RUE JAMEL ABDENACEUR', N'TUNIS', N'COMMUNE TUNIS', N'36.7991105', N'10.1785845')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (75, N'BESBES KALLEL BEYA', N'40 avenue de Ghana 1002 Tunis', N'TUNIS', N'COMMUNE TUNIS', N'36.8062929', N'10.1823245')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (76, N'PARMACIE REKIK', N'41 Boulevard Bechir Sfar', N'TUNIS', N'COMMUNE TUNIS', N'36.8128075', N'10.1698975')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (77, N'OUAHCHI MEHDI AMINE', N'42 Rue 8600 ZI Charguia', N'TUNIS', N'COMMUNE TUNIS', N'36.8324478', N'10.2106329')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (78, N'OUERGHI ABDELMAJID', N'42 Rue de la Sabkha', N'TUNIS', N'COMMUNE TUNIS', N'36.79863450000001', N'10.1582867')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (79, N'BEL KADHI MONCEF', N'42 Rue Sbikda', N'TUNIS', N'COMMUNE TUNIS', N'36.8291992', N'10.0910586')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (80, N'TAMBOURA SOUHEIL', N'43 AVENUE HABIB BOURGUIBA - COLISEE', N'TUNIS', N'COMMUNE TUNIS', N'36.8001679', N'10.1817787')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (81, N'SAYAH NESRINE', N'44 Avenue Habib Bourguiba', N'TUNIS', N'COMMUNE TUNIS', N'36.7998207', N'10.183564')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (82, N'BEN HTIRA SALWA EP BEN ABDALLA', N'44 Avenue Hédi Chaker', N'TUNIS', N'COMMUNE TUNIS', N'36.8134871', N'10.177024')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (83, N'ALJENE MOHAMED', N'47 RUE EL MORKADH - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7919757', N'10.169118')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (84, N'ABBES EMNA', N'48 Tere Rue de Palèstine', N'TUNIS', N'COMMUNE TUNIS', N'36.8494559', N'10.1179938')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (85, N'HAMDI TAOUFIK', N'49 Avenue 3 Août 1903', N'TUNIS', N'COMMUNE TUNIS', N'36.7715212', N'10.1811585')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (86, N'BEL HADJ AMMAR TAOUFIK', N'50 rue sidi el bechir', N'TUNIS', N'COMMUNE TUNIS', N'36.7905096', N'10.179078')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (87, N'LAHMAR HAMDI', N'51 Avenue de Lyon Place Bab El Khadra', N'TUNIS', N'COMMUNE TUNIS', N'36.8095855', N'10.1744641')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (88, N'AOUIDA RIHAB', N'52 AVENUE DE MEDITERRANE RESIDENCE GHAMOUR - EL KABARIA - EL MOUROUJ 2 TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.742285', N'10.1997442')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (89, N'DARGHOUTH MOHAMED EL MAHDI', N'54 Avenue Farhat Hached', N'TUNIS', N'COMMUNE TUNIS', N'36.7974721', N'10.1833264')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (90, N'CHOUIKHA AROUA BEN MARZOUK', N'54 RUE EL JAZIRA', N'TUNIS', N'COMMUNE TUNIS', N'36.7938981', N'10.1765632')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (91, N'BELLAGHA THAMEUR KAOUTHER', N'55 AVENUE DE LA LIBERTE', N'TUNIS', N'COMMUNE TUNIS', N'36.8117001', N'10.1797164')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (92, N'SELMANE MOHAMED', N'55 Rue du Sahel Montfleury', N'TUNIS', N'COMMUNE TUNIS', N'36.7780253', N'10.1767506')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (93, N'BEL HADJ ALI SAMIR', N'56 Bis Rue Houcine Bouzaienne', N'TUNIS', N'COMMUNE TUNIS', N'36.7944268', N'10.1852467')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (94, N'ABID MOHAMED ALI', N'59 AVENUE TAIEB MHIRI', N'TUNIS', N'COMMUNE TUNIS', N'36.8153946', N'10.1759443')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (95, N'ZAHAR MOHAMED TAHAR', N'6 Avenue de la Liberté', N'TUNIS', N'COMMUNE TUNIS', N'36.8071036', N'10.18014')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (96, N'EL ASMAR ABDESSATER', N'6 Rue Ibn Nasr', N'TUNIS', N'COMMUNE TUNIS', N'36.8056687', N'10.1690105')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (97, N'FAKHFAKH ALI', N'60 Avenue Bab Jedid', N'TUNIS', N'COMMUNE TUNIS', N'36.7920959', N'10.1716477')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (98, N'CHICHTI RACHED', N'61 AVENUE LES Palmiers Zahrouni', N'TUNIS', N'COMMUNE TUNIS', N'36.7922024', N'10.1081994')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (99, N'CHALA MOHAMED', N'61 Rue 4602 Somrane', N'TUNIS', N'COMMUNE TUNIS', N'36.8203371', N'10.1468326')
GO
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (100, N'HICHERI SADRI ET SORAYA', N'70 Rue 10800 Cité Ib Sina', N'TUNIS', N'COMMUNE TUNIS', N'36.7536756', N'10.1913379')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (101, N'TOUMI AIDA', N'73 Avenue de Londres', N'TUNIS', N'COMMUNE TUNIS', N'36.8059263', N'10.177368')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (102, N'HAMADA OUM EL KHIR', N'74 RUE EL FAOUZ - CITE IBN KHALDOUN', N'TUNIS', N'COMMUNE TUNIS', N'36.8260343', N'10.1388139')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (103, N'KHABTHANI FAROUK', N'75 Rue Bab El Khadra', N'TUNIS', N'COMMUNE TUNIS', N'36.8057219', N'10.1750639')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (104, N'ENNEIFER AHMED', N'77,RUE SABRA ET CHATILA CITE EZZOUHOUR II TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7943353', N'10.1309068')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (105, N'BEN YAHMED AIDA EP. B NACEUR', N'79,avenue habib bougatfa - el omrane tunis', N'TUNIS', N'COMMUNE TUNIS', N'36.816536', N'10.1436737')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (106, N'EL MOKHTAR NABILA ENNEIFER', N'8, BIS RUE MONGI SLIM TUNIS MEDINA', N'TUNIS', N'COMMUNE TUNIS', N'36.7997023', N'10.175966')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (107, N'MEMMI EL AIEB AFEF', N'83 Avenue Farhat Hached', N'TUNIS', N'COMMUNE TUNIS', N'36.797316', N'10.1800308')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (108, N'CHAMARI HANEN EP MEKKI', N'84 Rue Bellevue', N'TUNIS', N'COMMUNE TUNIS', N'36.7756124', N'10.1881268')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (109, N'JAMMALI RACHIDA', N'85 Avenue du 15 Octobre Lacania', N'TUNIS', N'COMMUNE TUNIS', N'36.766667', N'10.183333')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (110, N'MAHJOUB SONIA', N'87 RUE 9007 sidi fathallah', N'TUNIS', N'COMMUNE TUNIS', N'36.7656543', N'10.2066101')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (111, N'OUERTANI REGAYA SAMIRA', N'88 Rue de Yougoslavie', N'TUNIS', N'COMMUNE TUNIS', N'36.7993661', N'10.1884047')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (112, N'HACHICHA DORRA EP FOURATI', N'9 Route de l''Armée Natioale', N'TUNIS', N'COMMUNE TUNIS', N'36.8127826', N'10.1610656')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (113, N'BELKHAHIA BOUCHOUCHA LEILA', N'9 Rue Tahar Ben Ammar El Menzah IV', N'TUNIS', N'COMMUNE TUNIS', N'36.845229', N'10.165107')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (114, N'KARRAY HOUSSEM', N'9,RUE D''ALGER TUNIS 1001', N'TUNIS', N'COMMUNE TUNIS', N'36.8007905', N'10.1798463')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (115, N'FENDRI CHEDLY', N'92 Avenue Louis Braille', N'TUNIS', N'COMMUNE TUNIS', N'36.8299663', N'10.1933516')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (116, N'ROUISSI BEN NEJIMA SAIDA', N'93 RUE SABRA ET CHATILA - EZOUHOUR II .', N'TUNIS', N'COMMUNE TUNIS', N'36.7984985', N'10.1310767')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (117, N'BEN CHEIKH BOUBAKER TAREK', N'99 LOTISSEMENT BOUSSELMI RUE HOUCINE DAY - CITE DIAR BEN MAHMOUD - EL AGBA - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.7854684', N'10.0808541')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (118, N'LAOUANI CHERIFA', N'Aeroport Tunis Carthage', N'TUNIS', N'COMMUNE TUNIS', N'36.8475562', N'10.2175601')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (119, N'KARRAY NADA', N'angle rue du lac ladoga et rue lac turkana - les berges du lac', N'TUNIS', N'COMMUNE TUNIS', N'36.8495741', N'10.261694')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (120, N'BEN AYED JARRAYA AMEL', N'ANGLE RUE SALAH JEBLA N°36 ET RUE 6013 - EL OMRANE SUPERIEUR', N'TUNIS', N'COMMUNE TUNIS', N'36.8398877', N'10.1288538')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (121, N'MOUAFFAK AHLEM', N'AVENUE 10 DECEMBRE 1948 N°54 BIS - EL MENZEH 4', N'TUNIS', N'COMMUNE TUNIS', N'36.8489468', N'10.1827584')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (122, N'FAZAA HEDI', N'Avenue 9 Avril Immeuble Snit', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (123, N'BELKAID REJEB', N'AVENUE ABDELAZIZ AL SAOUD IMMEUBLE BANQUE DU SUD EL MANAR II PRES KIOSQUE MOBIL', N'TUNIS', N'COMMUNE TUNIS', N'36.8220485', N'10.1175425')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (124, N'JALEL ABDALLAH', N'avenue abdelaziz el saoud n°36 - EL MANAR 2', N'TUNIS', N'COMMUNE TUNIS', N'36.8390195', N'10.1577567')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (125, N'RIAHI MOHAMED TAOUFIK', N'AVENUE BELLEVUE N°58', N'TUNIS', N'COMMUNE TUNIS', N'36.7777057', N'10.1904186')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (126, N'JAZI KHALED', N'AVENUE CHARLES NICOLLE N_37', N'TUNIS', N'COMMUNE TUNIS', N'36.8272505', N'10.1800214')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (127, N'BEN SALEM ANOUAR LANDA', N'AVENUE DE LA LIBERTE TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8132604', N'10.1793083')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (128, N'BEN MAHMOUD LILIA', N'AVENUE EL HARAIRIA N_39 - EZZOUHOUR 4', N'TUNIS', N'COMMUNE TUNIS', N'36.7782977', N'10.0751331')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (129, N'ALOUINI AKIL', N'Avenue El Hrairia', N'TUNIS', N'COMMUNE TUNIS', N'36.7885046', N'10.11269')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (130, N'TAABOURI MAROUANE', N'AVENUE HEDI NOUIRA N°46 - TUNIS BABA BHAR', N'TUNIS', N'COMMUNE TUNIS', N'36.8558729', N'10.1569061')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (131, N'MESTIRI KHEDIJA EP ZELIZI', N'AVENUE LEAGUE ARABE BLOC E3 NORD HILTON TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8325103', N'10.1570219')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (132, N'KARRAY TAREK', N'Avenue Les Palmiers', N'TUNIS', N'COMMUNE TUNIS', N'36.7904491', N'10.1092814')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (133, N'ZOUARI MOURAD', N'AVENUE MOHAMED ABDELWAHEB N 53 - JARDINS D''EL MENZAH - EL MANAR 1 - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8366233', N'10.1377545')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (134, N'BEN MARZOUK IBTISSEM', N'AVENUE MOHEIDDIENE KLIBI N_53 --EL MANAR 2', N'TUNIS', N'COMMUNE TUNIS', N'36.8391789', N'10.1577208')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (135, N'MAALLOUCH MOHAMED FAOUZI', N'AVENUE TAHAR SFAR N_14 - EL MANAR 2 -TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8372192', N'10.1536551')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (136, N'GUENAIEN LOTFI', N'centre commerciel el hidhab - manar 1', N'TUNIS', N'COMMUNE TUNIS', N'36.8321508', N'10.1465179')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (137, N'MAKNI MALEK', N'CENTRE URBAIN NORD - LOCAL N 1 - AVENUE ZOHRA FAIZA - CITE EL KHADRA -  TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8304736', N'10.196942')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (138, N'MRABET MILEDI NEDRA', N'CITE IBN SINA N°1 ,RUE 10656 N°17', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (139, N'BESBES SAMI', N'Cité Intilaka Km 4 Route de Bizerte', N'TUNIS', N'COMMUNE TUNIS', N'37.2767579', N'9.8641609')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (140, N'BEN CHAABANE MOHAMED SALAH', N'Coliseé Soula El Manar II', N'TUNIS', N'COMMUNE TUNIS', N'36.8380388', N'10.1566945')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (141, N'BEN GHACHEM MOHAMED LOTFI', N'"COMPLEXE COMMERCIAL ""MIRMAR BUSINESS CITY"" B 03 -CENTRE URBAIN NORD"', N'TUNIS', N'COMMUNE TUNIS', N'36.8481555', N'10.1961049')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (142, N'KAMOUN REKAYA EP KALLEL', N'COMPLEXE DELTA MEDICAL-  AVENUE HABIB CHATTI - EL MANAR 1', N'TUNIS', N'COMMUNE TUNIS', N'36.8355369', N'10.1519314')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (143, N'TELMCANI NEJIBA EP DJAIBI', N'espace makni rue tahar ben ammar menzeh 9', N'TUNIS', N'COMMUNE TUNIS', N'36.8316003', N'10.172116')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (144, N'BEN KHEDHER BEN NEJI SOUKEINA', N'IMMEUBLE CARTHAGE N C 02 - CENTRE URBAIN NORD - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8491156', N'10.196942')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (145, N'MASMOUDI MOHAMED WALID', N'immeuble le campus angle rue malga et rue 7151 el manar 1', N'TUNIS', N'COMMUNE TUNIS', N'36.8369943', N'10.149614')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (146, N'MILADI SONIA', N'Immeuble SPRICR de l''Ariana', N'TUNIS', N'COMMUNE TUNIS', N'36.8665367', N'10.1647233')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (147, N'MAHREZ ALIA', N'"L''IIMMEUBLE ""PROMED BUILDING"" CENTRE URBAIN NORD - TUNIS"', N'TUNIS', N'COMMUNE TUNIS', N'36.84735300000001', N'10.198562')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (148, N'BEL KACEM SLAH', N'LOCAL N° 5 ET 9 - MARCHE MUNICIPAL RUE 7301 - EL MENZAH 9 -', N'TUNIS', N'COMMUNE TUNIS', N'36.8510939', N'10.1494154')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (149, N'CHEOUR SOUFIENE', N'Marché Kabaria Rue 10013', N'TUNIS', N'COMMUNE TUNIS', N'36.7473717', N'10.1871351')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (150, N'MAALEJ MOHAMED NAJIB', N'N°1 RUE DE TURKIE', N'TUNIS', N'COMMUNE TUNIS', N'36.7911454', N'10.1878688')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (151, N'CHENCHAH HEDIA EP BEN HAMZA', N'PLACE PASTEUR - BELVEDER TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8219036', N'10.1785549')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (152, N'AZZOUZ MOHAMED', N'RESIDENCE DES DEUX LACS, PASSAGE DU LAC INARI - LES BERGES DU LAC - (RCH) DE L''IMMEUBLE N°10 - MAGASIN N° 7 ET 8', N'TUNIS', N'COMMUNE TUNIS', N'68.9062035', N'27.0277551')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (153, N'LAZRAG MALIKA', N'Residence El Habib Les Berges du Lac', N'TUNIS', N'COMMUNE TUNIS', N'36.8376952', N'10.2371005')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (154, N'FRINI CHAKER', N'RESIDENCE ESSADAKA 1-BLOC A-ANGLE DE LA RUE N°130 ET LA RUE 62140', N'TUNIS', N'COMMUNE TUNIS', N'36.8847831', N'10.1713929')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (155, N'KAMMOUN NARJES', N'RESIDENCE LE JARDIN - RUE DU LAC CONSTANCE - LES BERGES DU LAC - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8320879', N'10.2304788')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (156, N'SAHLI BOUTHEINA EP ACHOUR', N'RESIDENCE NOUR CITY - MAGASIN N°8 - CENTRE URBAIN NORD', N'TUNIS', N'COMMUNE TUNIS', N'36.8468279', N'10.1976959')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (157, N'CHAABOUNI MOHAMED ADEL', N'REZ DE CHASSUEE - IMMEUBLE MALEK CENTRE - CENTRE URBAIN NORD', N'TUNIS', N'COMMUNE TUNIS', N'36.84735300000001', N'10.198562')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (158, N'LABBENE IDIR LEILA', N'ROUTE DE BIZERTE -RESIDENCE ZARROUK', N'TUNIS', N'COMMUNE TUNIS', N'36.8120019', N'10.1723854')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (159, N'LABOUP MARYSE EVELYNE EPNAOUAR', N'Route du Kef Oued Gueriana', N'TUNIS', N'COMMUNE TUNIS', N'36.7990248', N'10.1065318')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (160, N'MELLOULI MAHMOUD', N'RUE 10078 N 177 - EL OUARDIA 4 - EL KABARIA - TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.76579359999999', N'10.189937')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (161, N'LANDOULSI BOUTHAINA', N'Rue 4001 Cité Ezzouhour 3', N'TUNIS', N'COMMUNE TUNIS', N'36.7931131', N'10.1293811')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (162, N'BENNOUR DALENDA', N'Rue 4300 Les Palmiers Zahrouni', N'TUNIS', N'COMMUNE TUNIS', N'36.7922583', N'10.1096988')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (163, N'HMAIDI LATIFA', N'Rue 4667 Maison de la Jeunesse Zahrouni', N'TUNIS', N'COMMUNE TUNIS', N'36.7922583', N'10.1096988')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (164, N'SNOUSSI HOUDA BEN OTHMAN', N'RUE 6320 N 26 - JBEL LAHMAR - CITE EZZAYATINE - EL OMRANE', N'TUNIS', N'COMMUNE TUNIS', N'36.8244864', N'10.154347')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (165, N'CHEHATA M’HAMED', N'Rue 6789', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (166, N'CHABBAH CHOKRI', N'Rue 7175 Centre Phenicia', N'TUNIS', N'COMMUNE TUNIS', N'36.8848072', N'10.3287142')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (167, N'GHORBEL SALIMA', N'RUE 8300 IMMEUBLE LUXOR I MAGASIN N° 1 - MONPLAISIR', N'TUNIS', N'COMMUNE TUNIS', N'36.8493912', N'10.1955703')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (168, N'JERADI SAMIR', N'Rue 8714 N°28 Ccité Olimpique', N'TUNIS', N'COMMUNE TUNIS', N'36.8366475', N'10.1948405')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (169, N'BEJAR MOUNIR', N'RUE ALI AYARI N_20- EL MENZEH 9A- TUNIS', N'TUNIS', N'COMMUNE TUNIS', N'36.8466089', N'10.1581803')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (170, N'LAKHOUA NAJAH SARRA', N'Rue de Cherbourg Mutuelle-ville', N'TUNIS', N'COMMUNE TUNIS', N'36.8316769', N'10.1733075')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (171, N'BEN ISMAIL MALIKA EP CHELBI', N'RUE DE ROME N° 18', N'TUNIS', N'COMMUNE TUNIS', N'36.8007106', N'10.1785987')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (172, N'BOUZOUITA MOHAMED ALI', N'RUE DE SAHEL N_89 - MONFLEURY', N'TUNIS', N'COMMUNE TUNIS', N'36.77593050000001', N'10.1782052')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (173, N'BELKAHIA SIHEM', N'RUE DU JAPAN N°43 - IMMEUBLE DE SAF SAF - MONTPLAISIR', N'TUNIS', N'COMMUNE TUNIS', N'36.8154575', N'10.1857342')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (174, N'EL ABASSI BHOURI KAMILIA', N'RUE DU LAC COME 2 - RESIDENCE SIDI MANSOUR - LED BERGES DU LAC CITE EL KHADRA', N'TUNIS', N'COMMUNE TUNIS', N'36.8353131', N'10.2333773')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (175, N'KHARRAZ MYRIAM EP CHELBI', N'RUE DU LAC MALAREN - RESIDENCE KSAR KHALIJ - LES BERGES DU LAC', N'TUNIS', N'COMMUNE TUNIS', N'36.8360802', N'10.2328671')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (176, N'JAZI SAMIA', N'RUE DU LAC VICTORIA RESIDENCE BOUHAIRA LOCAL F 14 LES BERGES DU LAC', N'TUNIS', N'COMMUNE TUNIS', N'36.8389286', N'10.2426421')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (177, N'TURKI SIHEM', N'RUE HASSINE DAY N_187 BIS - DAY EL AGBA', N'TUNIS', N'COMMUNE TUNIS', N'36.7899727', N'10.1101184')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (178, N'BOUDHRAA NEJIBA EP KHIARI', N'RUE MOHAMED CHENIK N°1 QUINTE - CITE EL KHADRA', N'TUNIS', N'COMMUNE TUNIS', N'36.8295274', N'10.1902948')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (179, N'SANAA AMEL', N'RUE MOHAMED V N°83', N'TUNIS', N'COMMUNE TUNIS', N'36.8064948', N'10.1815316')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (180, N'KAMMOUN MAHMOUD', N'RUE N°8500 - CITE EL KHADRRA', N'TUNIS', N'COMMUNE TUNIS', N'36.8304736', N'10.196942')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (181, N'TRABELSI ADLENE', N'Rue Rue Ben Hassine Jrad', N'TUNIS', N'COMMUNE TUNIS', N'36.7929926', N'10.1815918')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (182, N'DJAAIT MOHAMED', N'RUE SIDI BOUHDID N°32- EL HAFSIA', N'TUNIS', N'COMMUNE TUNIS', N'36.8024384', N'10.167681')
INSERT [dbo].[Pharmacies] ([Id], [Name], [Address], [Gouvernorat], [Delegation], [Latitude], [Longitude]) VALUES (183, N'LAHMADI KHALED', N'Av. Abdessattar Dridi', N'SILIANA', N'COMMUNE SILIANA NORD', N'36.4821476', N'9.0528006')
SET IDENTITY_INSERT [dbo].[Pharmacies] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [IdDrug], [IdPharmacy]) VALUES (1, 53, 1)
INSERT [dbo].[Stock] ([Id], [IdDrug], [IdPharmacy]) VALUES (2, 53, 120)
INSERT [dbo].[Stock] ([Id], [IdDrug], [IdPharmacy]) VALUES (3, 56, 12)
INSERT [dbo].[Stock] ([Id], [IdDrug], [IdPharmacy]) VALUES (4, 57, 22)
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Drugs] FOREIGN KEY([IdDrug])
REFERENCES [dbo].[Drugs] ([Id])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Drugs]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Pharmacies] FOREIGN KEY([IdPharmacy])
REFERENCES [dbo].[Pharmacies] ([Id])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Pharmacies]
GO
/****** Object:  StoredProcedure [dbo].[_Proc_ListMyDrugInPharmacies]    Script Date: 17/05/2023 00:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oussama MAHMOUD
-- Create date: 2023-05-16
-- Description:	List My Drug In Pharmacies
-- =============================================
CREATE PROCEDURE [dbo].[_Proc_ListMyDrugInPharmacies]
	-- Add the parameters for the stored procedure here
	@DrugName NVARCHAR(255), 
	@Region NVARCHAR(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @DrugName = REPLACE(@DrugName,'''','''''')
	--PRINT @DrugName + ' IN ' + @Region
    -- Insert statements for procedure here
	SELECT D.[Name] AS [DrugName]
		,P.[Name] AS [PharmacyName]
      ,[Address] + ' - ' + [Gouvernorat] AS [Address]
      ,[Latitude]
      ,[Longitude]
  FROM [GetMyDrug].[dbo].[Pharmacies] P JOIN 
  [GetMyDrug].[dbo].[Stock] S
  ON P.Id = S.IdPharmacy
   JOIN [GetMyDrug].[dbo].[Drugs] D 
  ON D.Id = S.IdDrug
  WHERE D.[Name] LIKE '%' + REPLACE(@DrugName,'''','''''') + '%' AND P.Gouvernorat = '' + @Region + ''

  -- EXEC [dbo].[_Proc_ListMyDrugInPharmacies] N'GRIP',N'TUNIS'
END
GO
