--create table TimeSlot(
--SlotId int primary key,
--SlotDuration Char(1)
--)

--select * from TimeSlot

--CREATE TABLE Time(
--TimeId int primary key,
--[Time] time) 

--select * from Time

EXEC sp_rename Duration, Time

ALTER TABLE Duration
RENAME COLUMN Id to TimeId;

EXEC sp_rename 'Duration.Id', 'TimeId', 'COLUMN';

CREATE PROCEDURE sp_getDuration
AS  
BEGIN

SELECT * FROM [Time];

END



CREATE PROCEDURE sp_getSlot
AS  
BEGIN

SELECT * FROM TimeSlot;

END

CREATE TABLE Appointment(
Appointmentid int primary key IDENTITY,
AppointmentDate DATE,
SlotId int FOREIGN KEY REFERENCES [TimeSlot](SlotId),TimeId int FOREIGN KEY REFERENCES [Time](TimeId))

exec sp_getDuration

DROP TABLE Appointment


--Create a stored procedure and it will work on click of bookSlot button

CREATE TABLE #temp(tempId int primary key identity, AppointmentDate DATE, 
SlotId int FOREIGN KEY REFERENCES [TimeSlot](SlotId),TimeId int FOREIGN KEY REFERENCES [Time](TimeId))

GO

INSERT INTO #temp(SlotId, TimeId) SELECT ts.SlotId FROM [TimeSlot] ts 
UNION ALL
SELECT t.TimeId  FROM [Time] t

go

INSERT INTO Appointment(AppointmentDate,SlotId,TimeId) VALUES(@ad,@sid,@tid) 

--Modify sp of sp_getDuration to show only details of unbooked time
SELECT * FROM [Time] t left  JOIN Appointment a ON t.TimeID <> a.TimeID 
where t.[TimeID] <> a.[TimeID]  

SELECT * FROM Appointment
 

sp_help Appointment


Modify PROCEDURE sp_TwoHour
@ad DATE,
@sid int,
@tid int
AS
BEGIN

INSERT INTO Appointment(AppointmentDate,SlotId,TimeId) VALUES(@ad,@sid,@tid);
INSERT INTO Appointment(AppointmentDate,SlotId,TimeId) VALUES(@ad,@sid,@tid+1)

END

sp_help Appointment
select * from Appointment

INSERT INTO Appointment(AppointmentDate,SlotId,TimeId) VALUES('2024-02-28',2,2);
INSERT INTO Appointment(AppointmentDate,SlotId,TimeId) VALUES('2024-02-28',2,2+1)

DELETE FROM Appointment

CREATE TABLE Appointment1(
Appointmentid int primary key IDENTITY,
AppointmentDate DATE,
SlotId int FOREIGN KEY REFERENCES [TimeSlot](SlotId),TimeId int FOREIGN KEY REFERENCES [Time](TimeId)
)

CREATE TABLE Appointment2(
Appointmentid int primary key IDENTITY,
AppointmentDate DATE,
SlotId int FOREIGN KEY REFERENCES [TimeSlot](SlotId),TimeId int FOREIGN KEY REFERENCES [Time](TimeId)
)