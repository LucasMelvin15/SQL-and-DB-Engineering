-- The result of a logic expression can be true/ false/ null 

/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
SELECT address2 
FROM customers

-- ANS 
SELECT COALESCE(address2, 'No Address') 
FROM public.customers

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/
SELECT *
FROM customers
WHERE COALESCE(address2, null) IS NOT null;

--ANS 
SELECT *
FROM customers
WHERE address2 IS NOT null;


/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT coalesce(lastName, 'Empty'), * from customers
where (age IS NULL);

-- ANS
select COALESCE(lastname, 'Empty')
from public.customers
where (age is null )