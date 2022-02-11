/*1. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher
salary than the employee whose last_name='Bull' */

USE employee;

SELECT first_name, last_name,salary
FROM employees
WHERE salary > (SELECT Salary FROM employees WHERE last_name='bull');

/*2. Write a query to find the name (first_name, last_name) of all employees who works in the IT department*/

SELECT first_name, last_name
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE department_name='IT');

/*3. Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department */

SELECT first_name, last_name,manager_id
FROM employees
WHERE manager_id IN (SELECT employee_id FROM employees where department_id IN 
(SELECT department_id FROM departments where location_id IN (SELECT location_id FROM locations WHERE country_id='US')));

/*4. Write a query to find the name (first_name, last_name) of the employees who are managers */

SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT manager_id FROM employees Where manager_id IS NOT NULL);


/*5. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.*/

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

/*6. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary 
for their job grade*/

SELECT first_name, last_name, salary 
FROM employees 
WHERE employees.salary = (SELECT min_salary
FROM jobs
WHERE employees.job_id = jobs.job_id);

/*7. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary 
and works in any of the IT departments */
SELECT first_name, last_name, salary
 
FROM employees 
WHERE department_id IN 
(SELECT department_id FROM departments WHERE department_name LIKE 'IT%') 
AND salary > (SELECT avg(salary) FROM employees);

/* */