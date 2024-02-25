CREATE TABLE students
(
studentName varchar(50), 
registrationNumber int primary key, 
department varchar(50), 
fatherName varchar(50)
);

CREATE TYPE studentValueTyped AS TABLE
(
studentName varchar(50), 
registrationNumber int primary key, 
department varchar(50), 
fatherName varchar(50)
)

CREATE PROCEDURE insertValue
(@TempTable AS studentValueTyped READONLY)
AS
BEGIN
	INSERT 
	INTO 
	students
	(
	studentName, registrationNumber, department, fatherName
	)
	SELECT 
	studentName, registrationNumber, department, fatherName 
	FROM 
	@TempTable
END

select * from students