
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

select c.firstname, c.lastname , c.state , o.orderid
from public.orders as o
inner join public.customers AS c on o.customerid = c.customerid
where c.state in ('NY', 'OH', 'OR')
ORDER by orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select p.prod_id , i.quan_in_stock
from public.products as p 
inner join public.inventory as i on p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select e.first_name, e.last_name, dp.dept_name 
from public.employees as e 
inner join public.dept_emp as de on de.emp_no = e.emp_no
inner join departments as dp on de.dept_no = de.dept_no

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
-- use the USING keyword 


select e.emp_no, e.first_name,e.last_name, d.dept_name 
from public.employees as e
inner join public.dept_emp as de using (emp_no)
inner join public.departments as d using (dept_no);
