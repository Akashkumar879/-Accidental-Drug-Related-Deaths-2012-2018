USE [Patient_DW]
GO

/****** Object:  StoredProcedure [dbo].[InsertDrugDetails]    Script Date: 4/6/2020 11:55:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[InsertDrugDetails] 

AS
BEGIN

INSERT INTO [dbo].[DrugDetails_Dim] (
[Heroin]
      ,[Cocaine]
      ,[Fentanyl]
      ,[FentanylAnalogue]
      ,[Oxycodone]
      ,[Oxymorphone]
      ,[Ethanol]
      ,[Hydrocodone]
      ,[Benzodiazepine]
      ,[Methadone]
      ,[Amphet]
      ,[Tramad]
      ,[Morphine_NotHeroin]
      ,[Hydromorphone]
      ,[OpiateNOS]
      ,[AnyOpioid]
      ,[OtherDrugs]
      ,[OtherSignificantDescription]

)
SELECT  DISTINCT 
      ISNULL([Heroin],'NA') AS [Heroin]
      ,ISNULL([Cocaine],'NA') [Cocaine]
      ,ISNULL([Fentanyl],'NA') [Fentanyl]
      ,ISNULL([FentanylAnalogue],'NA') [FentanylAnalogue]
      ,ISNULL([Oxycodone],'NA') [Oxycodone]
      ,ISNULL([Oxymorphone],'NA') [Oxymorphone]
      ,ISNULL([Ethanol],'NA') [Ethanol]
      ,ISNULL([Hydrocodone],'NA') [Hydrocodone]
      ,ISNULL([Benzodiazepine],'NA') [Benzodiazepine]
      ,ISNULL([Methadone],'NA') [Methadone]
      ,ISNULL([Amphet],'NA') [Amphet]
      ,ISNULL([Tramad],'NA') [Tramad]
      ,ISNULL([Morphine_NotHeroin],'NA') [Morphine_NotHeroin]
      ,ISNULL([Hydromorphone],'NA') [Hydromorphone]
      ,ISNULL([OpiateNOS],'NA') [OpiateNOS]
      ,ISNULL([AnyOpioid],'NA') [AnyOpioid]
      ,ISNULL([Other],'NA') [OtherDrugs]
      ,ISNULL([OtherSignifican],'NA') [OtherSignificantDescription]
  FROM [Patient_DW].[dbo].[Accidental_Drug_Related_Deaths]


  END
GO




