-- Handling duplicates only returning unique values 
/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT distinct title
FROM public.titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT distinct COUNT(birth_date) 
FROM public.employees;

-- RESULT 300024


/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT DISTINCT lifeexpectancy
FROM public.country
where lifeexpectancy is not NULL
order by lifeexpectancy

