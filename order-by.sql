/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/

SELECT  * 
from public.employees
order by first_name asc , last_name DESC

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

select *
from public.employees
order by birth_date 

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

select * 
from public.employees
where first_name ilike 'K%' 
order by hire_date;