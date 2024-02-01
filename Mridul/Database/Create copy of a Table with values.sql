
----------------------------------------------------------------------------------------------------------------------
--How to create a duplicate table and insert all values inside the table
----------------------------------------------------------------------------------------------------------------------
--Step 1: Create a duplicate table
create table empDetails_dup(empNo int
      ,Name nvarchar(50)
      ,Email nvarchar(50)
      ,Address nvarchar(150)
      ,Images nvarchar(100))

--Step 2: Using insert query and also selecting formthe existing table:
	  insert into empDetails_dup([empNo]
      ,[Name]
      ,[Email]
      ,[Address]
      ,[Images])
	  select * from [dbo].[empDetails];

	  select * from [dbo].[empDetails_dup]
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------

select * from [dbo].[fn_GetStudentsByGender]('M')
select * from [dbo].[fn_GetStudentsByGender]('F')

select * from employees
insert into employees values(2,'1997-9-20','JK','Thakur','M','2023-10-18'),(3,'1999-9-20','JS','Kaur','F','2023-10-18')


SELECT city, gender, sum(salary) as TotalSalary 
from employees
group by city, gender;

begin transaction

delete from [dbo].[empDetails_dup];

commit;

begin transaction

rollback;

select max(Name) from empDetails