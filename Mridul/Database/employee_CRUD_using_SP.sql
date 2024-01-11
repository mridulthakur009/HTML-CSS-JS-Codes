--CREATE TABLE empDetais
--(
--	[empNo] INT NOT NULL PRIMARY KEY, 
--    [Name] NVARCHAR(50) NULL, 
--    [Email] NVARCHAR(50) NULL, 
--    [Address] NVARCHAR(150) NULL
--)

CREATE PROCEDURE saveEmp
	@eNo INT,
	@empName VARCHAR(50),
	@empEmail VARCHAR(50),
	@empAdd VARCHAR(150)
AS
	INSERT INTO empDetails VALUES(@eNo, @empName, @empEmail, @empAdd)


--CREATE PROCEDURE updEmp
--	@empNo INT,
--	@empName VARCHAR(50),
--	@empEmail VARCHAR(50),
--	@empAdd VARCHAR(150)
--AS
--	UPDATE empDetails SET Name=@empName, Email=@empEmail,Address= @empAdd
--	where empNo = @empNo;

--CREATE PROCEDURE delEmp
--	@empNo INT
--AS
--	DELETE FROM empDetails
--	where empNo = @empNo;

--CREATE PROCEDURE dispEmp
--AS
--SELECT * FROM empDetails
