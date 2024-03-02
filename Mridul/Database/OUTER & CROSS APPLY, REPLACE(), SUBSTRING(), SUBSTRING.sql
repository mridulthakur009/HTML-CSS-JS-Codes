--OUTER APPLY & CROSS APPLY, REPLACE(), SUBSTRING(), SUBSTRING


Create table Department
(
    Id int primary key,
    DepartmentName nvarchar(50)
)
Go

Insert into Department values (1, 'IT')
Insert into Department values (2, 'HR')
Insert into Department values (3, 'Payroll')
Insert into Department values (4, 'Administration')
Insert into Department values (5, 'Sales')
Go

Create table Employee
(
    Id int primary key,
    Name nvarchar(50),
    Gender nvarchar(10),
    Salary int,
    DepartmentId int foreign key references Department(Id)
)
Go

Insert into Employee values (1, 'Mark', 'Male', 50000, 1)
Insert into Employee values (2, 'Mary', 'Female', 60000, 3)
Insert into Employee values (3, 'Steve', 'Male', 45000, 2)
Insert into Employee values (4, 'John', 'Male', 56000, 1)
Insert into Employee values (5, 'Sara', 'Female', 39000, 2)
Go


select * from Employee;
select * from Department

Select e.Name,e.Salary, d.DepartmentName from Department d inner join Employee e on d.Id = e.DepartmentId 

Select e.Name,e.Salary, d.DepartmentName from Department d left join Employee e on d.Id = e.DepartmentId 

CREATE FUNCTION fn_getEmployeesByDepartmentId(@DepartmentId int)
returns table
as
Return 
(
	SELECT * FROM Employee where DepartmentId = @DepartmentId
)

select * from fn_getEmployeesByDepartmentId(2)

--join employee with table valued function
Select e.Name,e.Salary, d.DepartmentName from Department d inner join fn_getEmployeesByDepartmentId(D.Id) on d.Id = e.DepartmentId 

--We cannot do like this ERROR: Msg 4104, Level 16, State 1, Line 51, The multi-part identifier "D.Id" could not be bound.
--For this we apply 'OUTER APPLY' and 'CROSS APPLY'

Select e.Name,e.Salary, d.DepartmentName from Department d CROSS APPLY fn_getEmployeesByDepartmentId(D.Id) e
--CROSS APPLY will behave like INNER JOIN

Select e.Name,e.Salary, d.DepartmentName from Department d OUTER APPLY fn_getEmployeesByDepartmentId(D.Id) e

--OUTER APPLY will behave like LEFT OUTER JOIN

--REPLACE(string, old_string, new_string)
SELECT REPLACE('ABC ABC ABC', 'a', 'c');

--STUFF(string, start, length, new_string)
SELECT STUFF('My name is Mridul Thakur.',12,100,'Jaskaranpreet Singh');
SELECT STUFF('My name is Mridul Thakur.',12,0,'Jaskaranpreet Singh');
SELECT STUFF('My name is Mridul Thakur.',12,10,'Jaskaranpreet Singh');

--SUBSTRING(string, start, length)
SELECT SUBSTRING('My name is Mridul Thakur.',12,18) AS [Name]
SELECT SUBSTRING('My name is Mridul Thakur.',12,10) AS [Name]
SELECT SUBSTRING('My name is Mridul Thakur.',12,1) AS [Name]