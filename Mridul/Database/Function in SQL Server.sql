
--Scalar function without parameter
CREATE FUNCTION showMessage()
returns varchar(100)
as
BEGIN
return 'Welcome to the 1st function'
END

--Execute Scalar function:
select dbo.showMessage();

--Scalar function with single parameter
CREATE FUNCTION squareOfNo(@num1 AS INT)
RETURNS INT
AS
BEGIN
	RETURN (@num1 * @num1)
END

SELECT dbo.squareOfNo(5);

--Scalar function with multiple parameter
CREATE FUNCTION BODMAS(@a AS INT,@b AS INT, @c AS INT, @d AS INT)
RETURNS INT
AS
BEGIN
	RETURN (@a+@b-@c*@d+@c/@a)
END


SELECT DBO.BODMAS(61,10,2,6);


--Alter a function:
ALTER FUNCTION squareOfNo(@num AS INT)
RETURNS INT
AS
BEGIN
	RETURN (@num * @num * @num);
END

SELECT DBO.squareOfNo(4)

--drop a function

DROP FUNCTION DBO.showMessage; --We don't add parentheses when dropping a funcition.


--Checking thhe age of Voter:

ALTER FUNCTION checkVoterAge(@age as int)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @str VARCHAR(100)
	IF @age >=18
	BEGIN
		SET @str = 'Eligible to vote'
	END
	ELSE
	BEGIN
		SET @str = 'Not eligible to vote'
	END
	RETURN @str
END

SELECT DBO.checkVoterAge(25)


--FUNCTIONS inside a FUNCTION
CREATE FUNCTION mySysDate()
RETURNS datetime
AS
BEGIN
	return getdate() --function inside a function
END

SELECT DBO.mySysDate();

--Inline Table Valued Function

--FUNCTION without a parameter
CREATE FUNCTION fn_GetStudents()
RETURNS TABLE
AS
RETURN (SELECT * FROM employees)

SELECT * FROM dbo.fn_GetStudents();

--FUNCTION with a parameter

CREATE FUNCTION fn_GetStudentsWithAge(@birthdate date)
returns TABLE
AS
RETURN (SELECT * FROM employees WHERE birth_date >= @birthdate)

SELECT * FROM DBO.fn_GetStudentsWithAge(30);

--Multi-Statement Table Valued Functions
CREATE FUNCTION fn_GetStudentsByGender(@gender VARCHAR(20))
RETURNS @myTable TABLE (employee_no INT, Name VARCHAR(20), gender CHAR(1))
BEGIN
	INSERT INTO @myTable
	SELECT emp_no,first_name,gender FROM employees WHERE gender = @gender
	return
END

select * from [dbo].[fn_GetStudentsByGender]('M')
select * from [dbo].[fn_GetStudentsByGender]('F')

select * from employees
insert into employees values(2,'1997-9-20','JK','Thakur','M','2023-10-18'),(3,'1999-9-20','JS','Kaur','F','2023-10-18')