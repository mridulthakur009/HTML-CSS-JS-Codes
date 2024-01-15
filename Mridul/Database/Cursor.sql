--Life Cycle of a cursor:::::

--Step 1: Declaring A cursor
--DECLARE myCursor CURSOR SCROLL FOR
--SELECT * FROM Employees

----Step 2: Opening A cursor:
--Open myCursor

----Step 3: Fetching A Cursor:
--FETCH FIRST FROM myCursor --fetch 1st record from the database

----Step 4: Closing the Cursor:
--CLOSE myCursor

----Step 5: de-Allocating
--deallocate myCursor


----Withour Cursor Variables:
--DECLARE myCursor CURSOR SCROLL FOR
--SELECT * FROM Employees
--Open myCursor
--FETCH FIRST FROM myCursor	     --1st row from the result
--FETCH NEXT FROM myCursor	     --Next row from Above Operation
--FETCH LAST FROM myCursor	     --Last row
--FETCH PRIOR FROM myCursor	     --Preceding row of the above Operation
--FETCH ABSOLUTE 5 FROM myCursor   --Position of row at 4th position
--FETCH RELATIVE -2 FROM myCursor  --Position of row in resultant of ABSOLUTE + RELATIVE(Can be +ve or -ve)
--CLOSE myCursor
--deallocate myCursor

--With Cursor variables:
DECLARE myCursor CURSOR SCROLL FOR
SELECT EmployeeNo, FirstName FROM Employees
declare @emp_id int, @emp_name varchar(50)
Open myCursor
FETCH FIRST FROM myCursor INTO @emp_id, @emp_name	     --1st row from the result
print 'Employee is: ' + cast(@emp_id as varchar(50)) + '   ' + @emp_name
FETCH NEXT FROM myCursor	     --Next row from Above Operation
print 'Employee is: ' + cast(@emp_id as varchar(50)) + '   ' + @emp_name
--FETCH LAST FROM myCursor	     --Last row
--FETCH PRIOR FROM myCursor	     --Preceding row of the above Operation
--FETCH ABSOLUTE 5 FROM myCursor   --Position of row at 4th position
--FETCH RELATIVE -2 FROM myCursor  --Position of row in resultant of ABSOLUTE + RELATIVE(Can be +ve or -ve)
CLOSE myCursor
deallocate myCursor


DECLARE myCursorsss CURSOR 
FOR 
SELECT * FROM employee
open myCursorsss
FETCH NEXT FROM myCursorsss
close  myCursorsss
deallocate myCursorsss