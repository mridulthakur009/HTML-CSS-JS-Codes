USE [testDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_getSlot]    Script Date: 20-02-2024 15:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_getSlot]
AS  
BEGIN

SELECT * FROM TimeSlot;

END