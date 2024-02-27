USE [testDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_getDuration]    Script Date: 22-02-2024 18:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_getDuration]
@ad DATE
AS  
BEGIN

SELECT t.* FROM [Time] t left join Appointment a on 
t.TimeID = a.TimeID AND a.AppointmentDate = @ad WHERE a.AppointmentDate IS NULL

END