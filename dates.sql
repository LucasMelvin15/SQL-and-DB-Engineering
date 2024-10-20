/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT AGE(birth_date) AS employee_age, *
FROM public.employees
WHERE AGE(birth_date) > INTERVAL '60 years';



/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

select *
from public.employees
WHERE EXTRACT(MONTH FROM hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/


select count(emp_no)
from public.employees
WHERE EXTRACT(month FROM birth_date) = 11;


/* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

select max(AGE(birth_date)) 
from public.employees


/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT count(orderid) 
FROM public.orders
WHERE date_trunc('month', orderdate) = date '2004-01-01'

