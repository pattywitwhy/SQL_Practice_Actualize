Exercise:
Use SQL to grab the following data from the employees database:
• Get all info about employees whose last names begin with “Z”.
SELECT *
FROM employees
WHERE last_name LIKE '%Z%';

• Get the first name and last name of employees whose last names begin with “Mi”.
SELECT *
FROM employees
WHERE last_name LIKE '%Mi%';

• Get first name,  last name, and birthday of 5 oldest employees.
SELECT first_name, last_name, birth_date
FROM employees
ORDER BY birth_date
LIMIT 5;

• Get all info about the 5 most recent hires.
SELECT *
FROM employees
ORDER BY hire_date DESC
LIMIT 5;


• Get all info about 5 most recent female hires.
SELECT *
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 5;

Bonus: Get all the info on all employees whose first name is Mario or Luigi.
SELECT *
FROM employees
WHERE first_name = 'Mario'
OR first_name = 'Luigi';

Bonus: Get only the first and last name of employees without the the last name “Aingworth.”
SELECT first_name, last_name
FROM employees
WHERE last_name != 'Aingworth';

Bonus: Get all the info on employees whose first name is Arif, but only those hired between 1988 and 1992.
SELECT *
FROM employees
WHERE first_name = 'Arif'
AND hire_date BETWEEN '1987-12-31' AND '1993-01-01';

SELECT *
FROM employees
WHERE first_name = 'Arif'
AND hire_date > '1987-12-31'
AND hire_date < '1993-01-01';

Bonus: How many employees were making over $100,000 a year on June 24, 1992? Return only a number.
SELECT COUNT(*)
FROM salaries
WHERE salary > '100000'
AND from_date <= '1992-06-24'
AND to_date >= '1992-06-24';

Bonus: Repeat exercise #2 without using the LIKE keyword.
SELECT *
FROM employees
WHERE last_name SIMILAR TO '%Mi%';

SELECT *
FROM employees
WHERE last_name >= 'Mi'
AND last_name < 'Mj'

SELECT *
FROM employees
WHERE last_name ~'Mi';

SELECT *
FROM employees
WHERE substr(last_name, 1, 2) = 'Mi';

Uber bonus: Research how to do a case-insensitive search in postgres and try it out in Postico (edited) 