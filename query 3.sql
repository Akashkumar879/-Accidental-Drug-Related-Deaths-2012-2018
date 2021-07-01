USE [Patient_DW]
GO

/****** Object:  Table [dbo].[DrugDetails_Dim]    Script Date: 4/6/2020 11:53:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DrugDetails_Dim](
	[Drug_Key] [int] IDENTITY(1,1) NOT NULL,
	[Heroin] [varchar](250) NULL,
	[Cocaine] [varchar](250) NULL,
	[Fentanyl] [varchar](250) NULL,
	[FentanylAnalogue] [varchar](250) NULL,
	[Oxycodone] [varchar](250) NULL,
	[Oxymorphone] [varchar](250) NULL,
	[Ethanol] [varchar](250) NULL,
	[Hydrocodone] [varchar](250) NULL,
	[Benzodiazepine] [varchar](250) NULL,
	[Methadone] [varchar](250) NULL,
	[Amphet] [varchar](250) NULL,
	[Tramad] [varchar](250) NULL,
	[Morphine_NotHeroin] [varchar](250) NULL,
	[Hydromorphone] [varchar](250) NULL,
	[OpiateNOS] [varchar](250) NULL,
	[AnyOpioid] [varchar](250) NULL,
	[OtherDrugs] [varchar](250) NULL,
	[OtherSignificantDescription] [varchar](500) NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_DrugDetails_DrugID] PRIMARY KEY CLUSTERED 
(
	[Drug_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DrugDetails_Dim] ADD  CONSTRAINT [DF_DrugDetails_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO


