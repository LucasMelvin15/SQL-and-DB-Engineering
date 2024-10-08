-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT AVG(salary) FROM Salaries;
--ANS: 63810.744836143706


-- Question 2: What year was the youngest person born in the company?
-- Table: employees
SELECT MAX(birth_date) FROM public.employees
--ANS: 1965-02-01


-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT COUNT(id) FROM public.towns
-- RESULT: 36684

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT COUNT(countrycode) FROM public.countrylanguage 
WHERE isofficial = true
-- RESULT:238

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT AVG(lifeexpectancy) FROM public.country
-- RESULT: 66.486036

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(population) from public.city
WHERE countrycode = 'NLD' 
-- RESULT: 185001.75