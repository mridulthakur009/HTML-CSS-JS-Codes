--WAQ to find the number of employees working in each department in the company.
--WAQ to find the total salary in each department of the organization.
--WAQ to find the highest salary in each department in the organization.
--Write a query to get the number of employees working in each Gender per department.
--Write a query to get the highest salary for the organization.
--Write a Query for retrieving total salaries by the city.
--Write a Query for retrieving total salaries by city and by gender.
--Write a Query for retrieving total salaries and the total number of employees by City, and by gender.

SELECT Department,count(*)  
FROM Employee 
GROUP BY Department

SELECT Gender, Department, count(*) 
FROM Employee 
GROUP BY Gender, Department

select city, sum(salary)
FROM Employee 
GROUP BY city

SELECT CITY, gender, sum(salary) 
FROM Employee
GROUP BY city, gender
order by 1 desc

SELECT CITY, GENDER , SUM(sALARY) as Total_Salary, count(*) As Total_Employees
from Employee
group by city, Gender

SELECT Distinct(Department),  MAX(Salary) as max_Salary,[Name] 
from Employee
group by Department, Name

SELECT City, SUM(Salary) as TotalSalary
FROM Employee
WHERE Gender = 'Male'
GROUP BY City
HAVING City = 'MUMBAI'