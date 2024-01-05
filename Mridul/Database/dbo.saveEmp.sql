CREATE PROCEDURE saveEmp
	@eNo INT,
	@empName VARCHAR(50),
	@empEmail VARCHAR(50),
	@empAdd VARCHAR(150)
AS
	INSERT INTO empDetails VALUES(@eNo, @empName, @empEmail, @empAdd)