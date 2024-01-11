CREATE PROCEDURE createEmployee
@empNo INT, 
@empFName VARCHAR(50), 
@empLName VARCHAR(50), 
@techSkills VARCHAR(150),
@gender VARCHAR(10), 
@dept VARCHAR(20), 
@desg VARCHAR(20), 
@DOB DATE, 
@email VARCHAR(150), 
@mobNo VARCHAR(25)
AS
BEGIN
INSERT INTO Employees
VALUES(@empNo, @empFName, @empLName, @techSkills, @gender, @dept, @desg, @DOB, @email, @mobNo) 
END