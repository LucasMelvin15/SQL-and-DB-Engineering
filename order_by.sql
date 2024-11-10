/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date,  count(emp_no) as "amount"
FROM public.employees 
group by hire_date
order by "amount" desc; 