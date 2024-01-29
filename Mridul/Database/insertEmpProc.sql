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

DROP CONSTRAINT FOREIGNKEY

INSERT INTO department VALUES(1,'.NET')