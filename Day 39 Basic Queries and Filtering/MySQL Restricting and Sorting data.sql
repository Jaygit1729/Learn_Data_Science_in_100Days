/* 1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range 
$10,000 through $15,000. Go to the editor */

USE employee;

SELECT first_name,last_name,salary
FROM employees
WHERE salary NOT between 10000 and 15000;

/* 2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 
30 or 100 in ascending order*/

SELECT first_name,last_name,department_id 
from employees
where department_id =30 or department_id=100 
order by 3 asc;

/*3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the
 range $10,000 through $15,000 and are in department 30 or 100. */
 
 SELECT first_name , last_name , salary
 FROM employees
 WHERE salary NOT BETWEEN 10000 AND 15000
 AND department_id =30 OR department_id=100;
 
 SELECT first_name , last_name , salary
 FROM employees
 WHERE salary NOT BETWEEN 10000 AND 15000
 AND department_id IN(30,100);
 
 /*4. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987 */
 
 SELECT first_name, last_name,hire_date
 FROM employees
 WHERE hire_date REGEXP '[1987]';
 
 /* 5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name */
 
 SELECT first_name as filtered_name, first_name
 FROM employees
 WHERE first_name LIKE '%b%' AND first_name LIKE'%c%';
 

 SELECT first_name as filtered_name, first_name
 FROM employees
 WHERE first_name regexp '[b]' AND first_name regexp '[c]';
 
 
 
