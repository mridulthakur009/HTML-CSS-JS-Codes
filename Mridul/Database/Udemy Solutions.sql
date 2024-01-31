SELECT * FROM employees WHERE first_name IN('Denis','Elvis');

SELECT * FROM salaries where salary BETWEEN 66000 AND 70000;

SELECT * FROM employees where emp_no NOT BETWEEN 10004 AND 10012;

SELECT * FROM departments WHERE dept_no IS NOT NULL;

select * from employees where gender = 'F' and hire_date >= '2000-01-01';

select distinct hire_date  from employees;

select count(emp_no) from employees;

select count(distinct salary) from salaries where salary >= 100000;  

SELECT    COUNT(*)
FROM    salaries
WHERE    salary >= 100000;

select * from employees order by hire_date DeSC;

select first_name, count(first_name) from employees group by first_name order by first_name;

SELECT salary, count(emp_no) as emps_with_same_salary from salaries 
where salary > 80000
group by salary
order by salary;
 
 SELECT emp_no,avg(salary)  FROM salaries group by emp_no having avg(salary)>120000;
 
 SELECT first_name, count(first_name) from employees where hire_date > '1999-01-01' 
 group by first_name having count(first_name) < 200;
 
 SELECT first_name, count(first_name),count(last_name) from employees where hire_date > '1999-01-01' 
 group by first_name having (count(first_name) < 200 or count(last_name) >100);
 
 SELECT first_name, count(first_name) from employees 
 group by first_name having (count(first_name) < 200 and hire_date > '1999-01-01'); -- we cannot use aggregate function and non-aggregate function together in same having
 
 select * from dept_emp;
 
 select (emp_no) from dept_emp where from_date > '2000-01-01' group by emp_no having count(from_date)>1 order by emp_no
 
 