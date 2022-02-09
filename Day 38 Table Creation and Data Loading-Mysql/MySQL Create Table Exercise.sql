CREATE DATABASE 100DS;
USE 100DS;

/*1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.*/

CREATE TABLE countries(country_id INT,country_name VARCHAR(10),region_id INT);
DESC countries;

/*2. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which 
is already exists.*/

CREATE TABLE IF NOT EXISTS countries(country_id INT, country_name VARCHAR(10), region_id INT);
DESC countries;

/*3. Write a SQL statement to create the structure of a table dup_countries similar to countries.*/

CREATE TABLE IF NOT EXISTS dup_countries
LIKE countries;

/*4. Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.*/

CREATE TABLE IF NOT EXISTS dup_countries
AS SELECT * FROM countries;

/*5. Write a SQL statement to create a table countries set a constraint NULL.*/

CREATE TABLE IF NOT EXISTS countries1 (country_id INT NOT NULL, country_name VARCHAR(10) NOT NULL, region_id INT NOT NULL);
DESC countries1;

/*6. Write a SQL statement to create a table named jobs including 
columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.*/

CREATE TABLE IF NOT EXISTS jobs (job_id INT,job_title VARCHAR(20), min_salary INT, max_salary INT,CHECK (max_salary <= 25000));
DESC jobs;

/*7. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and 
make sure that no countries except Italy, India and China will be entered in the table.*/

CREATE TABLE IF NOT EXISTS countries (country_id INT NOT NULL, 
country_name VARCHAR(40), CHECK (country_name IN('itely','india','china')), region_id INT NOT NULL);

/*8. Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id 
and department_id and make sure that the value against column end_date will be entered at the time of insertion to the
 format like '--/--/----'.*/

CREATE TABLE IF NOT EXISTS job_history (employee_id INT NOT NULL, start_date DATE NOT NULL, end_date DATE, 
CHECK(end_date like '--/--/----' ), job_id INT NOT NULL, department_id INT NOT NULL);
DESC job_history;

/*9. Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and
 make sure that no duplicate data against column country_id will be allowed at the time of insertion.*/

CREATE TABLE IF NOT EXISTS countries2 (country_id INT NOT NULL,country_name VARCHAR(20) NOT NULL,region_id INT UNIQUE NOT NULL );
DESC countries2;
 
/* 10. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, 
and make sure that, the default value for job_title is blank and min_salary is 8000 and 
max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.*/

CREATE TABLE IF NOT EXISTS jobss (job_id INT NOT NULL, job_title VARCHAR(20) DEFAULT " ", 
min_salary INT DEFAULT 8000, max_salary INT DEFAULT  NULL);
DESC jobss;

/*11. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and 
 make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion.*/

CREATE TABLE countries12 (country_id INT PRIMARY KEY , country_name VARCHAR(20), region_id INT NOT NULL);
DESC countries12;

/*12. Write a SQL statement to create a table countries including columns country_id, country_name and region_id and
 make sure that the column country_id will be unique and store an auto incremented value.*/
 
CREATE TABLE countries12 (country_id  INT auto_increment PRIMARY KEY , country_name VARCHAR(20), region_id INT NOT NULL);
DESC countries12;


/*13. Write a SQL statement to create a table countries including columns country_id, country_name and region_id and
 make sure that the combination of columns country_id and region_id will be unique.*/

CREATE TABLE countries12 (country_id  INT auto_increment  , country_name VARCHAR(20), region_id INT NOT NULL,
UNIQUE(country_id,region_id));
DESC countries12;

CREATE TABLE countries12 (country_id  INT auto_increment  , country_name VARCHAR(20), region_id INT NOT NULL,
PRIMARY KEY(country_id,region_id));
DESC countries12;

/*14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id 
and make sure that, the employee_id column does not contain any duplicate value at the time of insertion 
and the foreign key column job_id contain only those values which are exists in the jobs table.*/

CREATE TABLE job_history2 (employee_id INT PRIMARY KEY , start_date DATE NOT NULL, end_date DATE NOT NULL, 
job_id INT, FOREIGN KEY (job_id) REFERENCES jobs (job_id), department_id INT NOT NULL );
DESC job_history2;

/*15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, 
phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, 
the employee_id column does not contain any duplicate value at the time of insertion and 
the foreign key columns combined by department_id and manager_id columns contain only 
those unique combination values, which combinations are exists in the departments table.*/

CREATE TABLE employees (employee_id INT PRIMARY KEY , first_name VARCHAR(20) NOT NULL , last_name VARCHAR(20) NOT NULL, 
email VARCHAR(20) NOT NULL, phone_number VARCHAR(20) , hire_date DATE NOT NULL, job_id INT , salary INT  , commission INT ,
manager_id INT  , department_id INT , FOREIGN KEY(DEPARTMENT_ID,MANAGER_ID) REFERENCES 
departments(DEPARTMENT_ID,MANAGER_ID) ON DELETE CASCADE ON UPDATE CASCADE);
DESC employees;