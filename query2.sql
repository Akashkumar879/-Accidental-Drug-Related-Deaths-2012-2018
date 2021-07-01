

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_CalendarDim_DateKey] FOREIGN KEY([DateKey])
--REFERENCES [dbo].[Calendar_Dim] ([DateKey])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_CalendarDim_DateKey]
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_CauseOfDeathDim_CODKey] FOREIGN KEY([COD_Key])
--REFERENCES [dbo].[CauseOfDeath_Dim] ([COD_Key])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_CauseOfDeathDim_CODKey]
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_DateTypeDetails_Dim_DateTypeKey] FOREIGN KEY([DateTypeKey])
--REFERENCES [dbo].[DateTypeDetails_Dim] ([DateTypeKey])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_DateTypeDetails_Dim_DateTypeKey]
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_DeathDetails_Dim_DeathLocation_Key] FOREIGN KEY([DeathLocationKey])
--REFERENCES [dbo].[DeathDetails_Dim] ([DeathLocation_Key])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_DeathDetails_Dim_DeathLocation_Key]
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_DrugDetails_Dim_DrugKey] FOREIGN KEY([DrugKey])
--REFERENCES [dbo].[DrugDetails_Dim] ([Drug_Key])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_DrugDetails_Dim_DrugKey]
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_InjuryDetails_Dim_InjuryKey] FOREIGN KEY([InjuryKey])
--REFERENCES [dbo].[InjuryDetails_Dim] ([InjuryKey])
--GO

--ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_InjuryDetails_Dim_InjuryKey]
--GO

ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_MannerOfDeath_Dim_MODKey] FOREIGN KEY([MOD_Key])
REFERENCES [dbo].[MannerOfDeath_Dim] ([MOD_Key])
GO

ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_MannerOfDeath_Dim_MODKey]
GO

ALTER TABLE [dbo].[PatientAdmissionDetails_Fact]  WITH CHECK ADD  CONSTRAINT [FK_PatientDetails_Dim_PatientKey] FOREIGN KEY([PatientKey])
REFERENCES [dbo].[PatientDetails_Dim] ([PatientKey])
GO

ALTER TABLE [dbo].[PatientAdmissionDetails_Fact] CHECK CONSTRAINT [FK_PatientDetails_Dim_PatientKey]
GO