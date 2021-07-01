USE [Patient_DW]
GO

/****** Object:  StoredProcedure [dbo].[usp_CountOfPatientsPerDrug]    Script Date: 4/9/2020 9:18:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CountOfPatientsPerDrug]

AS
BEGIN


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo'   AND TABLE_NAME = '#TEMP1')
BEGIN
DROP TABLE #TEMP1
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo'   AND TABLE_NAME = 'dbo.CountOfPatientkeyandDrugKey')
BEGIN
DROP TABLE dbo.CountOfPatientkeyandDrugKey
END


SELECT DRUG_KEY, DrugNAME ,VALUE
INTO #TEMP1
from (SELECT DRUG_KEY, [Heroin]
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
	  FROM [Patient_DW].[dbo].[DrugDetails_Dim]) p
	  UNPIVOT( VALUE FOR DrugNAME IN ([Heroin]
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
      ,[AnyOpioid])) AS UNPVT;


	  SELECT DISTINCT PatientKey,DrugName 
	  INTO dbo.CountOfPatientkeyandDrugKey
	  FROM #TEMP1 T
	  INNER JOIN [dbo].[PatientAdmissionDetails_Fact] PF
	  ON T.Drug_Key=PF.DrugKey
	  WHERE Value='Y'
	--  GROUP BY DrugNAME

END
GO


