-- FILTERING OPERATORS 

-- How many female customers do we have from the state of Oregon (OR) and New York (NY)
-- Database - Store 
SELECT COUNT(customerid) 
FROM public.customers
WHERE state IN  ('OR' ,'NY') and gender= 'F'
-- RESULT : 200

-- Return the number of customers who are not 55
-- Database - Store 
SELECT COUNT(age)
FROM public.customers
WHERE NOT  age = 55
-- NOT operator is an exclusive filter


-- COMPARISON OPERATORS
-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
SELECT count(income) 
FROM public.customers
WHERE   age > 44 and income >= 100000
--RESULT : 2497

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT count(income)
FROM public.customers
WHERE age >= 30 AND age <= 50 and income < 50000
--RESULT: 2362

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
SELECT avg(income)
FROM public.customers
WHERE age > 20 AND age < 50 
--RESULT: 59409.926240780098


--OPERATOR PRECEDENCE
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
SELECT income, firstname, age  FROM public.customers
where income > 50000 and (age< 30 or age <= 50)
AND (country = 'Japan' or country= 'Australia') 

-- RESULT - 558

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/
select SUM(totalamount) FROM public.orders
where (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30') 
AND totalamount > 100

-- RESULT : 205226.06

-- BETWEEN 

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
select * 
from public.customers
where (age) between 30 and 50
and income < 50000;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
select avg(income) 
from public.customers
where (age) between 20 and 50
-- RESULT: 59361.925908612832 

--- IN KEYWORD
/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/
select *
from public.orders
where customerid in(7888, 1082, 12808, 9623)

/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/
SELECT COUNT(id)
from public.city
where district in ('Zuid-Holland','Noord-Brabant', 'Utrecht')

-- LIKE AND ILIKE - Pattern matching 

/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
SELECT emp_no, first_name,
EXTRACT (YEAR FROM AGE(birth_date)) as "age"
FROM employees
where first_name ILIKE 'M%'

/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
select COUNT(emp_no)
from public.employees
where first_name ilike 'A%R'


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/

SELECT COUNT(customerid)
FROM public.customers
WHERE zip::TEXT LIKE '%2%';


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/
SELECT COUNT(customerid)
FROM public.customers
WHERE zip::TEXT LIKE '2_1%';


/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/

SELECT COALESCE(state, 'No State') AS "State"
FROM public.customers
WHERE phone::text like '302%'