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