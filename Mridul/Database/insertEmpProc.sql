--DROP procedure insertEmp

ALTER PROCEDURE insertEmp

@empID tinyInt,
@fName varchar(20),
@lName varchar(20),
@email varchar(50),
@deptNo tinyInt,
@desg tinyInt

AS

BEGIN
	BEGIN TRY
		  BEGIN TRANSACTION;

			 INSERT INTO employee (emp_id, first_name, last_name, email, dept_no, desination_no) 
			  VALUES (@empID, @fName, @lName, @email, @deptNo, @desg)
			  PRINT 'Command Executed Successfully'
			  COMMIT;
			  PRINT 'Command Committed Successfully'

	END TRY
	BEGIN CATCH
		PRINT 'Error';
		ROLLBACK;

	END CATCH;

END;
GO

EXEC insertEmp 124,'Jassi', 'singh' ,'jk@ditstek.com', 1,1

CREATE PROC selectEmp

AS

BEGIN

Select * from employee

END

EXEC selectEmp


INSERT INTO employee (emp_id, first_name, last_name, email, dept_no, desination_no) 
			  VALUES (141,'Jassi', 'singh' ,'jk@ditstek.com', 1,1);


INSERT INTO department VALUES(1,'.NET');


select sysdatetime();
select current_timestamp;
select getutcdate();

select GETDATE();


SELECT CONVERT(TIME, GETDATE()) AS CurrentTime;
SELECT CONVERT (TIME, CURRENT_TIMESTAMP) 
  AS 'Current TIME CURRENT_TIMESTAMP'

SELECT FORMAT(GETDATE(), 'hh:mm'); --03:40
select FORMAT(CAST('2018-01-01 14:00' AS datetime2), N'hh:mm tt') --02:00 PM
SELECT FORMAT(GETDATE(), 'hh:mm tt'); --03:41 PM
SELECT FORMAT(GETDATE(), 'hh:mm:s tt'); --03:41:35 PM


SELECT CAST(SYSDATETIME() AS VARCHAR(205))


SELECT CONVERT(VARCHAR(20),SYSDATETIME(),1) --CONVERT using Style Codes
SELECT CONVERT(VARCHAR(20),SYSDATETIME(),6)
SELECT CONVERT(VARCHAR(20),SYSDATETIME(),107)


DECLARE @d DATE = '11/22/2020';
SELECT FORMAT( @d, 'd', 'en-US' ) 'US English'  --11/22/2020
      ,FORMAT( @d, 'd', 'en-gb' ) 'British English'  --22/11/2020
      ,FORMAT( @d, 'd', 'de-de' ) 'German'  --22.11.2020
      ,FORMAT( @d, 'd', 'zh-cn' ) 'Chinese Simplified (PRC)';  --2020/11/22
  
SELECT FORMAT( @d, 'D', 'en-US' ) 'US English'  --Sunday, November 22, 2020
      ,FORMAT( @d, 'D', 'en-gb' ) 'British English'  --22 November 2020
      ,FORMAT( @d, 'D', 'de-de' ) 'German'  --Sonntag, 22. November 2020
      ,FORMAT( @d, 'D', 'zh-cn' ) 'Chinese Simplified (PRC)';  --Sunday, November 22, 2020


DECLARE @d DATE = GETDATE();  
SELECT FORMAT( @d, 'dd/MM/yyyy', 'en-US' ) AS 'Date' --30/01/2024

SELECT FORMAT(cast('07:35' as time), N'hh.mm');   --> returns NULL  
SELECT FORMAT(cast('07:35' as time), N'hh:mm');   --> returns NULL

SELECT FORMAT(cast('07:35' as time), N'hh\.mm');  --> returns 07.35  
SELECT FORMAT(cast('07:35' as time), N'hh\:mm');  --> returns 07:35




