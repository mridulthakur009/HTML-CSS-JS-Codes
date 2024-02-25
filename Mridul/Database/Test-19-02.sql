--Create tables and insert dummy data as below:

--table: salesman

-- salesman_id |    name    |   city   | commission 
---------------+------------+----------+------------
--        5001 | James Hoog | New York |       0.15
--        5002 | Nail Knite | Paris    |       0.13
--        5005 | Pit Alex   | London   |       0.11
--        5006 | Mc Lyon    | Paris    |       0.14
--        5007 | Paul Adam  | Rome     |       0.13
--        5003 | Lauson Hen | San Jose |       0.12
		
		
		
--table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
---------------+----------------+------------+-------+-------------
--        3002 | Nick Rimando   | New York   |   100 |        5001
--        3007 | Brad Davis     | New York   |   200 |        5001
--        3005 | Graham Zusi    | California |   200 |        5002
--        3008 | Julian Green   | London     |   300 |        5002
--        3004 | Fabian Johnson | Paris      |   300 |        5006
--        3009 | Geoff Cameron  | Berlin     |   100 |        5003
--        3003 | Jozy Altidor   | Moscow     |   200 |        5007
--        3001 | Brad Guzan     | London     |       |        5005
		
--Questions:		

--1. Write a SQL query to find the salesperson and customer who reside in the same city.
-- Return Salesman, cust_name and city.

--2. Write a SQL query to find salespeople who received commissions of more than 12 percent from the company.
--	Return Customer Name, customer city, Salesman, commission.  
	
--3. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 	
		
--4. Write a SQL query to combine each row of the salesman table with each row of the customer table.	

CREATE TABLE salesman(
salesman_id CHAR(4) primary key,
name VARCHAR(20),
city VARCHAR(20),
commission float);

CREATE TABLE customer(
customer_id char(4) primary key,
cust_name varchar(50),
city varchar(50),
grade varchar(50),
salesman_id char(4))

ALTER TABLE customer ADD CONSTRAINT FK_customer_salesman FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id)

--select * from customer;

--select * from salesman;

--Q1
SELECT s.name, c.cust_name, s.city FROM salesman s join customer c ON c.city = s.city

--Q2
SELECT c.cust_name, c.city, s.name, s.commission FROM salesman s 
JOIN customer c ON s.salesman_id = c.salesman_id WHERE commission > 0.12

--Q3
SELECT c.cust_name, c.city, c.grade, s.name, s.city FROM customer c 
JOIN salesman s ON s.salesman_id = c.salesman_id WHERE grade < 300 ORDER BY customer_id ASC

--Q4
SELECT * FROM salesman CROSS JOIN customer
