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
 
 select (emp_no) from dept_emp where from_date > '2000-01-01' group by emp_no having count(from_date)>1 order by emp_no;
 
 select * from dept_emp limit 100;
 
 insert into departments values('d010','Business Analysis');
 
 delete from departments where dept_no = 10;
 
 select sum(salary) from salaries where from_date >= '1997-01-01';
 
 CREATE TABLE departments_dup(dept_no CHAR(4) NULL, dept_name VARCHAR(40) NULL);
 
 INSERT INTO departments_dup VALUES('D111','Public Relations');
 
 DELETE FROM departments_dup WHERE dept_no = 'D101';
 
 INSERT INTO departments_dup SELECT * FROM departments;
 
 /////////////////////////////////////////////////////////////////////////////////////////////////;
 
 ALTER TABLE departments_dup

DROP COLUMN dept_manager;

ALTER TABLE departments_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup(dept_no CHAR(4) NULL, dept_name VARCHAR(40) NULL);

INSERT INTO departments_dup(dept_no,dept_name) SELECT * FROM departments;

INSERT INTO departments_dup (dept_name) VALUES ('Public Relations');

DELETE FROM departments_dup WHERE dept_no = 'd002';    

INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (emp_no int(11) NOT NULL,dept_no char(4) NULL,from_date date NOT NULL,to_date date NULL);

INSERT INTO dept_manager_dup select * from dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date) VALUES (999904, '2017-01-01'), (999905, '2017-01-01'),(999906, '2017-01-01'),(999907, '2017-01-01');

DELETE FROM dept_manager_dup WHERE dept_no = 'd001'; 

SELECT * FROM dept_manager;
SELECT * FROM titles;

SELECT e.first_name,e.last_name,d.dept_no,e.hire_date from employees e join dept_manager d on d.emp_no = e.emp_no;

select e.emp_no,e.first_name,e.last_name,d.dept_no,d.from_date from employees e left join dept_manager d on e.emp_no = d.emp_no
where e.last_name='Markovitch' order by d.dept_no desc;

select e.emp_no, e.first_name, e.last_name, s.salary from employees e join salaries s on e.emp_no = s.emp_no where s.salary > 145000;

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

SELECT e.first_name, e.last_name, e.hire_date, t.title from employees e join titles t on e.emp_no = t.emp_no where first_name = 'Margareta' AND 
last_name = 'Markovitch' order by e.emp_no;

select e.*,d.* from employees e cross join  departments d where e.emp_no <10011 order by e.emp_no, d.dept_no;

#JOIN more than 2 tables

select e.first_name, e.last_name, e.hire_date, dm.from_date, d.dept_name
from employees e 
join dept_manager dm on e.emp_no = dm.emp_no 
join departments d on dm.dept_no = d.dept_no
order by d.dept_no;

SELECT e.first_name, e.last_name, e.hire_date, t.title, t.from_date, d.dept_name
FROM titles t join employees e  on e.emp_no = t.emp_no
join dept_emp ed on ed.emp_no =  e.emp_no
join departments d on d.dept_no=ed.dept_no
where t.title = 'Manager';

SELECT e.first_name, e.last_name, e.hire_date, t.title, m.from_date, d.dept_name FROM employees e JOIN
 dept_manager m ON e.emp_no = m.emp_no JOIN departments d ON m.dept_no = d.dept_no JOIN
 titles t ON e.emp_no = t.emp_no WHERE t.title = 'Manager'
ORDER BY e.emp_no;

select e.gender, count(t.emp_no) from dept_manager t join employees e on e.emp_no = t.emp_no
group by e.gender; 



 