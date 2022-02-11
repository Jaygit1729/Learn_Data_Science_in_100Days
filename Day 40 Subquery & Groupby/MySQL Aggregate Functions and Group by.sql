/*1. Write a query to list the number of jobs available in the employees table */

SELECT COUNT(DISTINCT(job_id)) FROM employees;

/*4. Write a query to get the maximum salary of an employee working as a Programmer */

SELECT MAX(SALARY) AS Programmer_salary
FROM employees
WHERE job_id ='IT_PROG'
ORDER BY 1 DESC;

/*5. Write a query to get the average salary and number of employees working the department 90 */

SELECT AVG(SALARY) AS average, count(*) AS number_of_employee
FROM EMPLOYEES
WHERE department_id = 90 ;

/*7. Write a query to get the number of employees with the same job. */

SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

/*9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager */

SELECT manager_id , MIN(SALARY)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY MIN(salary) DESC;

/*10. Write a query to get the department ID and the total salary payable in each department */

SELECT department_id,sum(salary)
FROM employees
GROUP BY department_id
ORDER BY 2 DESC;

/*11. Write a query to get the average salary for each job ID excluding programmer */

SELECT AVG(salary), job_id
FROM employees
GROUP BY job_id
HAVING job_id NOT IN('it_prog')
ORDER BY 1;

/*------------------------------------------------------------------------------------------------------------------------------------*/