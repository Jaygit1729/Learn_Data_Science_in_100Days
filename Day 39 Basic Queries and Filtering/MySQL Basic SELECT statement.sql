/* 1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"*/

use employee;

SELECT first_name as 'first name',last_name as 'last name'
from employees;

/*2. Write a query to get unique department ID from employee table. */

SELECT DISTINCT  department_id  from employees;

/*3. Write a query to get all employee details from the employee table order by first name, descending. */

SELECT * FROM employees ORDER BY first_name desc;

/*4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary) */

SELECT first_name,last_name,salary,salary * 0.15 as PF
FROM employees;

/* 5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary*/

SELECT employee_id, first_name, last_name ,salary 
FROM employees
ORDER BY salary ASC;

/*6. Write a query to get the total salaries payable to employees */

SELECT first_name, last_name, (Salary + Salary*COMMISSION_PCT) AS total_salary
from employees;

SELECT SUM(SALARY) FROM employees;

/*7. Write a query to get the maximum and minimum salary from employees table.*/

SELECT MIN(SALARY) AS min_salary , MAX(SALARY) AS max_salary
FROM employees;

/* 8. Write a query to get the average salary and number of employees in the employees table*/

SELECT AVG(SALARY) AS average_salary , count(*) as number_of_employee
FROM employees;

/*9. Write a query to get the number of employees working with the company*/

SELECT COUNT(*) as number_of_employee FROM employees;

/*10. Write a query to get the number of jobs available in the employees table. */

SELECT count(JOB_ID) AS jobs FROM employees;

SELECT count(DISTINCT JOB_ID) AS distinct_number_of_jobs FROM employees;

/*11. Write a query get all first name from employees table in upper case.*/

SELECT UPPER(first_name) AS Capital_Name FROM employees;

/*12. Write a query to get the first 3 characters of first name from employees table.*/

SELECT SUBSTRING(first_name,1,3) from employees;

/* 13. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table*/

SELECT concat(first_name,' ',last_name) as full_name from employees; 

/*14. Write a query to get first name from employees table after removing white spaces from both side */

SELECT trim(first_name) from employees;

/*15. Write a query to get the length of the employee names (first_name, last_name) from employees table */

select length(first_name)as first_name, length(last_name) as last_name from employees;

/*16. Write a query to check if the first_name fields of the employees table contains numbers. */

SELECT * FROM employees WHERE first_name REGEXP '[0-9]';

SELECT * FROM employees WHERE first_name REGEXP '[A-Z]';


/*-------------------------------------------------------------------------------------------------------------------------------*/

/*Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". */

SELECT 'This is SQL Exercise, Practice and Solution';

/* Write a query to display the sum of two numbers 10 and 15*/

SELECT 10 + 15;



